unit EST0001L.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, LocalizarBase.View, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Silver, cxControls, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxLabel, Vcl.StdCtrls, cxButtons,  ormbr.container.DataSet.interfaces,
  TESTPRODUTO.Entidade.Model, ormbr.container.fdmemtable, Base.View.Interf,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinBlack, dxSkinDarkRoom, dxSkinSilver;

type
  TFEST0001LView = class(TFLocalizarView, IBaseLocalizarView)
    BtSalvar: TcxButton;
    FdDadosCODIGO: TStringField;
    FdDadosIDPRODUTO: TIntegerField;
    FdDadosCODIGO_SINAPI: TStringField;
    FdDadosDESCRICAO: TStringField;
    FdDadosUNIDMEDIDA: TStringField;
    FdDadosPRMEDIO: TCurrencyField;
    FdDadosPRMEDIO_SINAPI: TCurrencyField;
    FdDadosORIGEM_PRECO: TStringField;
    VwDadosIDPRODUTO: TcxGridDBColumn;
    VwDadosDESCRICAO: TcxGridDBColumn;
    VwDadosCODIGO_SINAPI: TcxGridDBColumn;
    VwDadosUNIDMEDIDA: TcxGridDBColumn;
    StGrid: TcxStyleRepository;
    StHeader: TcxStyle;
    StBackground: TcxStyle;
    StContentOdd: TcxStyle;
    StContentEven: TcxStyle;
    StSelection: TcxStyle;
    StInactive: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure TePesquisaPropertiesChange(Sender: TObject);
  private
    FCampoOrdem: string;
    FContainer: IContainerDataSet<TTESTPRODUTO>;
    FCodigoSelecionado: string;

    procedure filtrarRegistros;
  public
    { Public declarations }

    class function New: IBaseLocalizarView;

    procedure listarRegistros;

    function exibir: string;
  end;

var
  FEST0001LView: TFEST0001LView;

implementation

{$R *.dfm}

procedure TFEST0001LView.BtSalvarClick(Sender: TObject);
begin
  inherited;

  FCodigoSelecionado := FdDadosCODIGO.AsString;

  Close;
end;

function TFEST0001LView.exibir: string;
begin
  listarRegistros;

  ShowModal;

  Result := FCodigoSelecionado;
end;

procedure TFEST0001LView.filtrarRegistros;
begin
  FdDados.Filtered := false;

  if not(TePesquisa.Text = EmptyStr) then
  begin
    FdDados.Filter := UpperCase(FCampoOrdem) + ' Like ''%' +
      AnsiUpperCase(TePesquisa.Text) + '%''';
    FdDados.Filtered := True;
  end;
end;

procedure TFEST0001LView.FormCreate(Sender: TObject);
begin
  inherited;
  FContainer := TContainerFDMemTable<TTESTPRODUTO>.Create(FConexao, FdDados);
  FCampoOrdem := 'DESCRICAO';

  Self.Width := Screen.Width - 300;
  Self.Height := Screen.Height - 300;
end;

procedure TFEST0001LView.listarRegistros;
begin
  FContainer.OpenWhere('', FCampoOrdem);
end;

class function TFEST0001LView.New: IBaseLocalizarView;
begin
  Result := Self.Create(nil);
end;

procedure TFEST0001LView.TePesquisaPropertiesChange(Sender: TObject);
begin
  inherited;
  filtrarRegistros;
end;

end.
