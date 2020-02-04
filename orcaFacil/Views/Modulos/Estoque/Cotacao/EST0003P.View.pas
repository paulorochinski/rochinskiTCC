unit EST0003P.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PesquisaBase.View, cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom,
  dxSkinDevExpressDarkStyle, dxSkinSilver, cxControls, cxContainer, cxEdit,
  cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxClasses,
  cxTextEdit, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLabel,
  dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.StdCtrls, cxButtons,
  dxSkinDevExpressStyle, Base.View.Interf;

type
  TFEST0003PView = class(TFPesquisaView, IBasePesquisaView)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure importarCotacao;
  public
    { Public declarations }
    class function New: IBasePesquisaView;

    procedure listarRegistros;

    function incluirRegistro: IBasePesquisaView;
    function alterarRegistro: IBasePesquisaView;
    function consultarRegistro: IBasePesquisaView;
    function excluirRegistro: IBasePesquisaView;
    function duplicarRegistro: IBasePesquisaView;

    procedure &executar;
  end;

var
  FEST0003PView: TFEST0003PView;

implementation

{$R *.dfm}

uses FacadeView, Tipos.Controller.Interf;
{ TFEST0003PView }

function TFEST0003PView.alterarRegistro: IBasePesquisaView;
begin

end;

function TFEST0003PView.consultarRegistro: IBasePesquisaView;
begin

end;

procedure TFEST0003PView.cxButton1Click(Sender: TObject);
begin
  inherited;
  importarCotacao;
end;

function TFEST0003PView.duplicarRegistro: IBasePesquisaView;
begin

end;

function TFEST0003PView.excluirRegistro: IBasePesquisaView;
begin

end;

procedure TFEST0003PView.executar;
begin
   Show;
end;

procedure TFEST0003PView.importarCotacao;
begin
  TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaImportacao(tiCotacao)
       .executar;
end;

function TFEST0003PView.incluirRegistro: IBasePesquisaView;
begin

end;

procedure TFEST0003PView.listarRegistros;
begin

end;

class function TFEST0003PView.New: IBasePesquisaView;
begin
  Result := Self.Create(nil);
end;

end.
