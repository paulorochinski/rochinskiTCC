unit PAG0001P.View;

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
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxClasses,
  cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTextEdit,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxLabel, Vcl.StdCtrls, cxButtons,
  Base.View.Interf, ormbr.container.DataSet.interfaces,
  TPAGFORNECEDOR.Entidade.Model, ormbr.container.fdmemtable, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Silver,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark;

type
  TFPAG0001PView = class(TFPesquisaView, IBasePesquisaView)
    FdDadosCODIGO: TStringField;
    FdDadosIDFORNECEDOR: TIntegerField;
    FdDadosNOMEFANTASIA: TStringField;
    FdDadosCNPJ: TStringField;
    FdDadosIE: TStringField;
    FdDadosTELEFONE: TStringField;
    FdDadosEMAIL: TStringField;
    VwDadosIDFORNECEDOR: TcxGridDBColumn;
    VwDadosNOMEFANTASIA: TcxGridDBColumn;
    VwDadosCNPJ: TcxGridDBColumn;
    VwDadosIE: TcxGridDBColumn;
    VwDadosTELEFONE: TcxGridDBColumn;
    VwDadosEMAIL: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BtAlterarClick(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtDuplicarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FContainer: IContainerDataSet<TTPAGFORNECEDOR>;

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
  FPAG0001PView: TFPAG0001PView;

implementation

{$R *.dfm}

uses FacadeView, Tipos.Controller.Interf;
{ TFPAG0001PView }

function TFPAG0001PView.alterarRegistro: IBasePesquisaView;
begin
  Result := Self;

  TFacadeView.New
    .ModulosFacadeView
     .PagarFactoryView
      .exibirTelaCadastro(tcFornecedor)
       .operacao(FOperacao)
        .registroSelecionado(FdDadosCODIGO.AsString)
         .executar;
end;

procedure TFPAG0001PView.BtAlterarClick(Sender: TObject);
begin
  inherited;
  alterarRegistro;
  listarRegistros;
end;

procedure TFPAG0001PView.BtConsultarClick(Sender: TObject);
begin
  inherited;
  consultarRegistro;
  listarRegistros;
end;

procedure TFPAG0001PView.BtDuplicarClick(Sender: TObject);
begin
  inherited;
  duplicarRegistro;
  listarRegistros;
end;

procedure TFPAG0001PView.BtExcluirClick(Sender: TObject);
begin
  inherited;
  excluirRegistro;
  listarRegistros;
end;

procedure TFPAG0001PView.BtNovoClick(Sender: TObject);
begin
  inherited;
  incluirRegistro;
  listarRegistros;
end;

function TFPAG0001PView.consultarRegistro: IBasePesquisaView;
begin
  Result := Self;

  TFacadeView.New
    .ModulosFacadeView
     .PagarFactoryView
      .exibirTelaCadastro(tcFornecedor)
       .operacao(FOperacao)
        .registroSelecionado(FdDadosCODIGO.AsString)
         .executar;
end;

function TFPAG0001PView.duplicarRegistro: IBasePesquisaView;
begin
  Result := Self;

  TFacadeView.New
    .ModulosFacadeView
     .PagarFactoryView
      .exibirTelaCadastro(tcFornecedor)
       .operacao(FOperacao)
        .registroSelecionado(FdDadosCODIGO.AsString)
         .executar;
end;

function TFPAG0001PView.excluirRegistro: IBasePesquisaView;
begin
  Result := Self;

  TFacadeView.New
    .ModulosFacadeView
     .PagarFactoryView
      .exibirTelaCadastro(tcFornecedor)
       .operacao(FOperacao)
        .registroSelecionado(FdDadosCODIGO.AsString)
         .executar;
end;

procedure TFPAG0001PView.executar;
begin
  Show;
end;

procedure TFPAG0001PView.FormCreate(Sender: TObject);
begin
  inherited;
  FContainer := TContainerFDMemTable<TTPAGFORNECEDOR>.Create(FConexao, FdDados);
end;

procedure TFPAG0001PView.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
  end;end;

procedure TFPAG0001PView.FormShow(Sender: TObject);
begin
  inherited;
  FCampoOrdem := 'NOMEFANTASIA';
  listarRegistros;
end;

function TFPAG0001PView.incluirRegistro: IBasePesquisaView;
begin
  Result := Self;

  TFacadeView.New
    .ModulosFacadeView
     .PagarFactoryView
      .exibirTelaCadastro(tcFornecedor)
       .operacao(FOperacao)
        .executar
end;

procedure TFPAG0001PView.listarRegistros;
begin
  FContainer.OpenWhere('', FCampoOrdem);
  controlaBotoesAtivos;
end;

class function TFPAG0001PView.New: IBasePesquisaView;
begin
  Result := Self.Create(nil);
end;

end.
