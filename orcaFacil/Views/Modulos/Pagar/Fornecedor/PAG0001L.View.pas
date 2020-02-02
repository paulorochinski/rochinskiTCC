unit PAG0001L.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, LocalizarBase.View, cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Silver,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, cxControls, cxContainer, cxEdit, cxStyles, cxCustomData,
  cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxLabel, dxGDIPlusClasses,
  Vcl.ExtCtrls, Vcl.StdCtrls,
  cxButtons, TPAGFORNECEDOR.Entidade.Model, ormbr.container.DataSet.interfaces,
  ormbr.container.fdmemtable, Base.View.Interf, dxSkinBlack, dxSkinDarkRoom, dxSkinSilver;

type
  TFPAG0001LView = class(TFLocalizarView, IBaseLocalizarView)
    BtSalvar: TcxButton;
    FdDadosCODIGO: TStringField;
    FdDadosNOMEFANTASIA: TStringField;
    VwDadosNOMEFANTASIA: TcxGridDBColumn;
    FdDadosIDFORNECEDOR: TIntegerField;
    VwDadosIDFORNECEDOR: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure TePesquisaPropertiesChange(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
  private
    FCampoOrdem: string;
    FContainer: IContainerDataSet<TTPAGFORNECEDOR>;
    FCodigoSelecionado: string;

    procedure filtrarRegistros;
  public
    class function New: IBaseLocalizarView;

    procedure listarRegistros;

    function exibir: string;
  end;

var
  FPAG0001LView: TFPAG0001LView;

implementation

{$R *.dfm}

{ TFPAG0001LView }

procedure TFPAG0001LView.BtSalvarClick(Sender: TObject);
begin
  inherited;

  FCodigoSelecionado := FdDadosCODIGO.AsString;

  Close;
end;

function TFPAG0001LView.exibir: string;
begin
  listarRegistros;

  ShowModal;

  Result := FCodigoSelecionado;
end;

procedure TFPAG0001LView.filtrarRegistros;
begin
  FdDados.Filtered := false;

  if not(TePesquisa.Text = EmptyStr) then
  begin
    FdDados.Filter := UpperCase(FCampoOrdem) + ' Like ''%' +
      AnsiUpperCase(TePesquisa.Text) + '%''';
    FdDados.Filtered := True;
  end;
end;

procedure TFPAG0001LView.FormCreate(Sender: TObject);
begin
  inherited;
  FContainer := TContainerFDMemTable<TTPAGFORNECEDOR>.Create(FConexao, FdDados);
  FCampoOrdem := 'NOMEFANTASIA';

  Self.Width := Screen.Width - 450;
  Self.Height := Screen.Height - 450;
end;

procedure TFPAG0001LView.listarRegistros;
begin
  FContainer.OpenWhere('', FCampoOrdem);
end;

class function TFPAG0001LView.New: IBaseLocalizarView;
begin
  Result := Self.Create(nil);
end;

procedure TFPAG0001LView.TePesquisaPropertiesChange(Sender: TObject);
begin
  inherited;
  filtrarRegistros;
end;

end.
