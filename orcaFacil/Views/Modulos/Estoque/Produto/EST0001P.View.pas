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
  TESTPRODUTO.Entidade.Model;

type
  TFEST0001PView = class(TFPesquisaView, IBasePesquisaView)
    FdDadosIDPRODUTO: TIntegerField;
    VwDadosIDPRODUTO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FContainer: IContainerDataSet<TTESTPRODUTO>;

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
  FEST0001PView: TFEST0001PView;

implementation

{$R *.dfm}
{ TFEST0001PView }

function TFEST0001PView.alterarRegistro: IBasePesquisaView;
begin
  inherited;
  Result := Self;
end;

function TFEST0001PView.consultarRegistro: IBasePesquisaView;
begin
  inherited;
  Result := Self;
end;

function TFEST0001PView.duplicarRegistro: IBasePesquisaView;
begin
  inherited;
  Result := Self;
end;

function TFEST0001PView.excluirRegistro: IBasePesquisaView;
begin
  inherited;
  Result := Self;
end;

procedure TFEST0001PView.executar;
begin
  Show;
end;

procedure TFEST0001PView.FormCreate(Sender: TObject);
begin
  inherited;
  FContainer := TContainerFDMemTable<TTESTPRODUTO>.Create(FConexao, FDDados);
  FCampoOrdem := 'DESCRICAO';
end;

procedure TFEST0001PView.FormShow(Sender: TObject);
begin
  inherited;
  listarRegistros;
end;

function TFEST0001PView.incluirRegistro: IBasePesquisaView;
begin
  inherited;
  Result := Self;
end;

procedure TFEST0001PView.listarRegistros;
begin
  FContainer.FindWhere('', FCampoOrdem);
  controlaBotoesAtivos;
end;

class function TFEST0001PView.New: IBasePesquisaView;
begin
  Result := Self.Create(nil);
end;

end.
