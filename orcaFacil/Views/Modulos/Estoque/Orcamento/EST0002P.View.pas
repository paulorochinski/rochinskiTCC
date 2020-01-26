unit EST0002P.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PesquisaBase.View, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Silver, cxControls, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxClasses, cxTextEdit, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxLabel, Vcl.StdCtrls, cxButtons, Base.View.Interf,
  TESTORCAMENTO.Entidade.Model, ormbr.container.DataSet.interfaces,
  ormbr.container.fdmemtable;

type
  TFEST0002PView = class(TFPesquisaView, IBasePesquisaView)
    FdDadosCODIGO: TStringField;
    FdDadosIDORCAMENTO: TIntegerField;
    FdDadosDESCRICAO: TStringField;
    FdDadosDATA_CADASTRO: TDateTimeField;
    VwDadosIDORCAMENTO: TcxGridDBColumn;
    VwDadosDESCRICAO: TcxGridDBColumn;
    VwDadosDATA_CADASTRO: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BtAlterarClick(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtDuplicarClick(Sender: TObject);
  private
    FContainer: IContainerDataSet<TTESTORCAMENTO>;
    procedure listarRegistros;

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
  FEST0002PView: TFEST0002PView;

implementation

{$R *.dfm}

uses FacadeView, Tipos.Controller.Interf;

{ TFEST0002PView }

function TFEST0002PView.alterarRegistro: IBasePesquisaView;
begin
 inherited;
 Result := Self;

   TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaCadastro(tcOrcamento)
       .operacao(FOperacao)
        .registroSelecionado(FdDadosCODIGO.AsString)
         .executar;
end;

procedure TFEST0002PView.BtAlterarClick(Sender: TObject);
begin
  inherited;
  alterarRegistro;
  listarRegistros;
end;

procedure TFEST0002PView.BtConsultarClick(Sender: TObject);
begin
  inherited;
  consultarRegistro;
  listarRegistros;
end;

procedure TFEST0002PView.BtDuplicarClick(Sender: TObject);
begin
  inherited;
  duplicarRegistro;
  listarRegistros;
end;

procedure TFEST0002PView.BtExcluirClick(Sender: TObject);
begin
  inherited;
  excluirRegistro;
  listarRegistros;
end;

procedure TFEST0002PView.BtNovoClick(Sender: TObject);
begin
  inherited;
  incluirRegistro;
  listarRegistros;
end;

function TFEST0002PView.consultarRegistro: IBasePesquisaView;
begin
 inherited;
 Result := Self;

   TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaCadastro(tcOrcamento)
       .operacao(FOperacao)
        .registroSelecionado(FdDadosCODIGO.AsString)
         .executar;
end;

function TFEST0002PView.duplicarRegistro: IBasePesquisaView;
begin
 inherited;
 Result := Self;

   TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaCadastro(tcOrcamento)
       .operacao(FOperacao)
        .registroSelecionado(FdDadosCODIGO.AsString)
         .executar;
end;

function TFEST0002PView.excluirRegistro: IBasePesquisaView;
begin
 inherited;
 Result := Self;

   TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaCadastro(tcOrcamento)
       .operacao(FOperacao)
        .registroSelecionado(FdDadosCODIGO.AsString)
         .executar;
end;

procedure TFEST0002PView.executar;
begin
  Show;
end;

procedure TFEST0002PView.FormCreate(Sender: TObject);
begin
  inherited;
  FContainer := TContainerFDMemTable<TTESTORCAMENTO>.Create(FConexao, FdDados);
end;

procedure TFEST0002PView.FormShow(Sender: TObject);
begin
  inherited;
   FCampoOrdem := 'DESCRICAO';
   listarRegistros;
end;

function TFEST0002PView.incluirRegistro: IBasePesquisaView;
begin
  inherited;
  Result := Self;

    TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaCadastro(tcOrcamento)
       .operacao(FOperacao)
         .executar;
end;

procedure TFEST0002PView.listarRegistros;
begin
  FContainer.OpenWhere('', FCampoOrdem);
  controlaBotoesAtivos;
end;

class function TFEST0002PView.New: IBasePesquisaView;
begin
  Result := Self.Create(nil);
end;

end.
