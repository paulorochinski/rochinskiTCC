unit EST0003I.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ImportarBase.View, cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinSilver, cxControls,
  cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  Datasnap.DBClient,
  cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ComCtrls, cxLabel, dxGDIPlusClasses,
  Vcl.ExtCtrls, Vcl.StdCtrls,
  cxButtons, Base.View.Interf, cxTextEdit, cxMemo, dxSkinVS2010, Fornecedor.Controller.Interf;

type
  TFEST0003IView = class(TFImportarView, IBaseImportarView)
    CdDadosCODIGOSINAPI: TIntegerField;
    CdDadosDESCRICAO: TStringField;
    CdDadosUNIDMEDIDA: TStringField;
    CdDadosQTDE: TFloatField;
    CdDadosVALORUNITARIO: TCurrencyField;
    CdDadosVALORTOTAL: TCurrencyField;
    VwDadosCODIGOSINAPI: TcxGridDBColumn;
    VwDadosDESCRICAO: TcxGridDBColumn;
    VwDadosUNIDMEDIDA: TcxGridDBColumn;
    VwDadosQTDE: TcxGridDBColumn;
    VwDadosVALORUNITARIO: TcxGridDBColumn;
    VwDadosVALORTOTAL: TcxGridDBColumn;
    PnCampos: TPanel;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    TeCNPJ: TcxTextEdit;
    TxNomeFantasia: TcxTextEdit;
    TxOrcamentoId: TcxTextEdit;
    cxLabel2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtBuscarClick(Sender: TObject);
    procedure CdDadosBeforePost(DataSet: TDataSet);
  private
    FFornecedor: IFornecedorController;
    procedure habilitaControles;

    procedure importarArquivoCSV(AArquivo: string);
  public
    { Public declarations }

    class function new: IBaseImportarView;

    procedure salvarDados;
    procedure importarArquivo;
    procedure &executar;
  end;

var
  FEST0003IView: TFEST0003IView;

implementation

{$R *.dfm}

uses FacadeController;

procedure TFEST0003IView.BtBuscarClick(Sender: TObject);
begin
  inherited;
  importarArquivo;
end;

procedure TFEST0003IView.CdDadosBeforePost(DataSet: TDataSet);
begin
  inherited;
  CdDadosVALORTOTAL.AsCurrency := (CdDadosQTDE.AsFloat * CdDadosVALORUNITARIO.AsCurrency);
end;

procedure TFEST0003IView.executar;
begin
  habilitaControles;

  ShowModal;
end;

procedure TFEST0003IView.FormCreate(Sender: TObject);
begin
  inherited;
  FFornecedor := TFacadeController.new.modulosFacadeController.
    pagarFactoryController.Fornecedor;

  Self.Width := Screen.Width - 200;
  Self.Height := Screen.Height - 200;
end;

procedure TFEST0003IView.habilitaControles;
begin
  BtSalvar.Enabled := not(CdDados.IsEmpty);
end;

procedure TFEST0003IView.importarArquivo;
begin
  if OpPlanilha.Execute then
   begin
     importarArquivoCSV(OpPlanilha.FileName);
   end;
end;

procedure TFEST0003IView.importarArquivoCSV(AArquivo: string);
var
  ArquivoCSV: TextFile;
  vContador, I: Integer;
  Linha, vValorNaoUtilizado: String;
  linhasArquivo: TStringList;

  function MontaValor: String;
  var
    ValorMontado: String;
  begin
    ValorMontado := '';

    inc(I);

    While Linha[I] >= ' ' do
    begin
      If Linha[I] = ';' then
        break;

      ValorMontado := ValorMontado + Linha[I];
      inc(I);
    end;

    result := Trim(ValorMontado);
  end;

begin
  PbProgresso.Visible := True;
  AssignFile(ArquivoCSV, AArquivo);
  linhasArquivo       := TStringList.Create;

  try
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, Linha);
    linhasArquivo.LoadFromFile(AArquivo);

    PbProgresso.Min := 1;
    PbProgresso.Max := linhasArquivo.Count;

    CdDados.DisableControls;

    vContador := 1;

    while not Eoln(ArquivoCSV) do
    begin
      I := 0;

    if vContador = 1 then begin
        vValorNaoUtilizado := MontaValor;
        TxOrcamentoId.Text := MontaValor;
      end

      else
      
      if vContador = 4 then begin
        vValorNaoUtilizado := MontaValor;
        FFornecedor.localizarPeloCNPJ(removerCaracteresEspeciais(MontaValor));

        TeCNPJ.Text         := FFornecedor.cnpj;
        TxNomeFantasia.Text := FFornecedor.nomeFantasia;
      end

      else

      if vContador >=8 then begin
        CdDados.Append;
        CdDadosCODIGOSINAPI.AsString := MontaValor;
        CdDadosDESCRICAO.AsString := removerEspacoesExtrasDeUmTexto(AnsiUpperCase(MontaValor));
        CdDadosUNIDMEDIDA.AsString := AnsiUpperCase(MontaValor);

        CdDadosQTDE.AsFloat := StrToFloat(formatarTextoEmValor(MontaValor));

        CdDadosVALORUNITARIO.AsCurrency :=
         StrToFloat(formatarTextoEmValor(MontaValor));

        CdDados.Post;      
      end;

      Application.ProcessMessages;

      Readln(ArquivoCSV, Linha);

      PbProgresso.Position := PbProgresso.Position + 1;
      vContador            := vContador + 1;
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

class function TFEST0003IView.new: IBaseImportarView;
begin
  Result := Self.Create(nil);
end;

procedure TFEST0003IView.salvarDados;
begin

end;

end.
