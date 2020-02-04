unit EST0001I.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ImportarBase.View, cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  Datasnap.DBClient,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ComCtrls, cxLabel, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls,
  Base.View.Interf, ImportarProduto.Controller.Interf, dxGDIPlusClasses,
  dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Silver,
  dxSkinBlack, dxSkinDarkRoom, dxSkinSilver;

type
  TFEST0001IView = class(TFImportarView, IBaseImportarView)
    CdDadosCODIGO: TIntegerField;
    CdDadosDESCRICAO: TStringField;
    CdDadosUNIDMEDIDA: TStringField;
    CdDadosPRORIGEM: TStringField;
    CdDadosPRMEDIOSINAPI: TCurrencyField;
    VwDadosCODIGO: TcxGridDBColumn;
    VwDadosDESCRICAO: TcxGridDBColumn;
    VwDadosUNIDMEDIDA: TcxGridDBColumn;
    VwDadosPRORIGEM: TcxGridDBColumn;
    VwDadosPRMEDIOSINAPI: TcxGridDBColumn;
    procedure CdDadosBeforeRefresh(DataSet: TDataSet);
    procedure BtBuscarClick(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FImportarProduto: IImportarProdutoController;
    procedure habilitaControles;
    procedure importarArquivoCSV(AArquivo: string);
    { Private declarations }
  public
    { Public declarations }

    class function New: IBaseImportarView;

    procedure salvarDados;
    procedure importarArquivo;

    procedure &executar;
  end;

var
  FEST0001IView: TFEST0001IView;

implementation

{$R *.dfm}

uses FacadeController;
{ TFEST0001IView }

procedure TFEST0001IView.BtBuscarClick(Sender: TObject);
begin
  inherited;
  importarArquivo;
end;

procedure TFEST0001IView.BtSalvarClick(Sender: TObject);
begin
  salvarDados;
  inherited;
end;

procedure TFEST0001IView.CdDadosBeforeRefresh(DataSet: TDataSet);
begin
  inherited;
  habilitaControles;
end;

procedure TFEST0001IView.executar;
begin
  habilitaControles;

  ShowModal;
end;

procedure TFEST0001IView.FormCreate(Sender: TObject);
begin
  inherited;

  Self.Width := Screen.Width - 300;
  Self.Height := Screen.Height - 300;
end;

procedure TFEST0001IView.habilitaControles;
begin
  BtSalvar.Enabled := not(CdDados.IsEmpty);
end;

procedure TFEST0001IView.importarArquivo;
begin
  if OpPlanilha.Execute then
  begin
    importarArquivoCSV(OpPlanilha.FileName);
  end;
end;

procedure TFEST0001IView.importarArquivoCSV(AArquivo: string);
var
  ArquivoCSV: TextFile;
  I: Integer;
  Linha: String;
  linhasArquivo: TStringList;

  function MontaValor: String;
  var
    ValorMontado: String;
  begin
    ValorMontado := '';

    inc(I);

    While Linha[I] >= ' ' do
    begin
      If Linha[I] = '|' then
        break;

      ValorMontado := ValorMontado + Linha[I];
      inc(I);
    end;

    result := Trim(ValorMontado);
  end;

begin
  PbProgresso.Visible := True;
  AssignFile(ArquivoCSV, AArquivo);
  linhasArquivo := TStringList.Create;

  try
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, Linha);
    linhasArquivo.LoadFromFile(AArquivo);

    PbProgresso.Min := 1;
    PbProgresso.Max := linhasArquivo.Count;

    CdDados.DisableControls;

    while not Eoln(ArquivoCSV) do
    begin
      I := 0;

      CdDados.Append;
      CdDadosCODIGO.AsString := MontaValor;
      CdDadosDESCRICAO.AsString := removerEspacoesExtrasDeUmTexto
        (AnsiUpperCase(MontaValor));
      CdDadosUNIDMEDIDA.AsString := AnsiUpperCase(MontaValor);
      CdDadosPRORIGEM.AsString := AnsiUpperCase(MontaValor);
      CdDadosPRMEDIOSINAPI.AsCurrency :=
        StrToFloat(formatarTextoEmValor(MontaValor));
      CdDados.Post;

      Application.ProcessMessages;

      Readln(ArquivoCSV, Linha);
      PbProgresso.Position := PbProgresso.Position + 1;
    end;

  finally
    CloseFile(ArquivoCSV);
    linhasArquivo.Free;

    CdDados.EnableControls;
    CdDados.First;
    habilitaControles;
  end;

  PbProgresso.Visible := False;
end;

class function TFEST0001IView.New: IBaseImportarView;
begin
  result := Self.Create(nil);
end;

procedure TFEST0001IView.salvarDados;
begin
  CdDados.First;

  while not(CdDados.Eof) do
  begin
    try
      FImportarProduto := TFacadeController.New.modulosFacadeController.
        estoqueFactoryController.ImportarProduto;

      FImportarProduto.localizar(CdDadosCODIGO.AsInteger)
        .Importar.produtoSelecionado(FImportarProduto.produtoSelecionado)
        .codigoSinapi(CdDadosCODIGO.AsString)
        .descricao(CdDadosDESCRICAO.AsString)
        .unidMedida(CdDadosUNIDMEDIDA.AsString)
        .origemPreco(CdDadosPRORIGEM.AsString)
        .prMedioSinapi(CdDadosPRMEDIOSINAPI.AsCurrency).executar;

    finally

    end;

    CdDados.Next;
    Application.ProcessMessages;
  end;
end;

end.
