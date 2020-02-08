unit EST0001P.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PesquisaBase.View, cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxClasses,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid,
  cxTextEdit, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Base.View.Interf,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, ormbr.container.DataSet.interfaces,
  ormbr.container.fdmemtable,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  TESTPRODUTO.Entidade.Model, Vcl.Grids, Vcl.DBGrids, dxBevel, cxLabel,
  dxGDIPlusClasses, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Silver, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinBlack, dxSkinDarkRoom, dxSkinSilver, dxSkinVS2010;

type
  TFEST0001PView = class(TFPesquisaView, IBasePesquisaView)
    FdDadosCODIGO: TStringField;
    FdDadosIDPRODUTO: TIntegerField;
    FdDadosDESCRICAO: TStringField;
    FdDadosUNIDMEDIDA: TStringField;
    FdDadosPRMEDIO_SINAPI: TCurrencyField;
    VwDadosIDPRODUTO: TcxGridDBColumn;
    VwDadosCODIGO_SINAPI: TcxGridDBColumn;
    VwDadosDESCRICAO: TcxGridDBColumn;
    VwDadosUNIDMEDIDA: TcxGridDBColumn;
    VwDadosPRMEDIO_SINAPI: TcxGridDBColumn;
    BtImportar: TcxButton;
    FdDadosORIGEM_PRECO: TStringField;
    VwDadosORIGEM_PRECO: TcxGridDBColumn;
    FdDadosPRMEDIO: TCurrencyField;
    VwDadosPRMEDIO: TcxGridDBColumn;
    FdDadosCODIGO_SINAPI: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BtAlterarClick(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtDuplicarClick(Sender: TObject);
    procedure BtImportarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FContainer: IContainerDataSet<TTESTPRODUTO>;

    procedure listarRegistros;
    procedure importarProdutos;
  public
    { Public declarations }

    class function New: IBasePesquisaView;

    function incluirRegistro: IBasePesquisaView;
    function alterarRegistro: IBasePesquisaView;
    function consultarRegistro: IBasePesquisaView;
    function excluirRegistro: IBasePesquisaView;
    function duplicarRegistro: IBasePesquisaView;
    procedure &executar;
  end;

var
  FEST0001PView: TFEST0001PView;

implementation

{$R *.dfm}

uses FacadeView, Tipos.Controller.Interf;
{ TFEST0001PView }

function TFEST0001PView.alterarRegistro: IBasePesquisaView;
begin
  inherited;
  Result := Self;

  TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaCadastro(tcProduto)
       .operacao(FOperacao)
        .registroSelecionado(FdDadosCODIGO.AsString)
         .executar;
end;

procedure TFEST0001PView.BtAlterarClick(Sender: TObject);
begin
  inherited;
  alterarRegistro;
  listarRegistros;
end;

procedure TFEST0001PView.BtConsultarClick(Sender: TObject);
begin
  inherited;
  consultarRegistro;
  listarRegistros;
end;

procedure TFEST0001PView.BtDuplicarClick(Sender: TObject);
begin
  inherited;
  duplicarRegistro;
  listarRegistros;
end;

procedure TFEST0001PView.BtExcluirClick(Sender: TObject);
begin
  inherited;
  excluirRegistro;
  listarRegistros;
end;

procedure TFEST0001PView.BtImportarClick(Sender: TObject);
begin
  inherited;

  importarProdutos;
  listarRegistros;
end;

procedure TFEST0001PView.BtNovoClick(Sender: TObject);
begin
  inherited;
  incluirRegistro;
  listarRegistros;
end;

function TFEST0001PView.consultarRegistro: IBasePesquisaView;
begin
  inherited;
  Result := Self;

  TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaCadastro(tcProduto)
       .operacao(FOperacao)
        .registroSelecionado(FdDadosCODIGO.AsString)
         .executar;
end;

function TFEST0001PView.duplicarRegistro: IBasePesquisaView;
begin
  inherited;
  Result := Self;

  TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaCadastro(tcProduto)
       .operacao(FOperacao)
        .registroSelecionado(FdDadosCODIGO.AsString)
         .executar;
end;

function TFEST0001PView.excluirRegistro: IBasePesquisaView;
begin
  inherited;
  Result := Self;

  TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaCadastro(tcProduto)
       .operacao(FOperacao)
        .registroSelecionado(FdDadosCODIGO.AsString)
         .executar;
end;

procedure TFEST0001PView.executar;
begin
  Show;
end;

procedure TFEST0001PView.FormCreate(Sender: TObject);
begin
  inherited;
  FContainer := TContainerFDMemTable<TTESTPRODUTO>.Create(FConexao, FdDados);
end;

procedure TFEST0001PView.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  case Key of
    VK_F5:
      begin
        incluirRegistro;
        listarRegistros;
      end;

    VK_F6:
      begin
        alterarRegistro;
        listarRegistros;
      end;

    VK_F7:
      begin
        consultarRegistro;
        listarRegistros;
      end;

    VK_F8:
      begin
        excluirRegistro;
        listarRegistros;
      end;

    VK_F9:
      begin
        duplicarRegistro;
        listarRegistros;
      end;

    VK_F10:
      begin
        importarProdutos;
        listarRegistros;
      end;
  end;
end;

procedure TFEST0001PView.FormShow(Sender: TObject);
begin
  inherited;
  FCampoOrdem := 'DESCRICAO';
  listarRegistros;
end;

procedure TFEST0001PView.importarProdutos;
begin
  TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaImportacao(tiProduto)
       .executar;
end;

function TFEST0001PView.incluirRegistro: IBasePesquisaView;
begin
  inherited;
  Result := Self;

  TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaCadastro(tcProduto)
       .operacao(FOperacao)
         .executar;
end;

procedure TFEST0001PView.listarRegistros;
begin
  FContainer.OpenWhere('', FCampoOrdem);
  controlaBotoesAtivos;
end;

class function TFEST0001PView.New: IBasePesquisaView;
begin
  Result := Self.Create(nil);
end;

end.
