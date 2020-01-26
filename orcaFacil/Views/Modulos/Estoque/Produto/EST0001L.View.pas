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
  TESTPRODUTO.Entidade.Model, ormbr.container.fdmemtable, Base.View.Interf;

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
    VwDadosCODIGO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
  private
    FContainer: IContainerDataSet<TTESTPRODUTO>;
    FCodigoSelecionado: string;
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

procedure TFEST0001LView.FormCreate(Sender: TObject);
begin
  inherited;
  FContainer := TContainerFDMemTable<TTESTPRODUTO>.Create(FConexao, FdDados);
end;

procedure TFEST0001LView.listarRegistros;
begin
  FContainer.OpenWhere('', 'DESCRICAO');
end;

class function TFEST0001LView.New: IBaseLocalizarView;
begin
  Result := Self.Create(nil);
end;

end.
