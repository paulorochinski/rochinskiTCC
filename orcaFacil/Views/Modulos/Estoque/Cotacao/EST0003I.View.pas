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
  cxButtons, Base.View.Interf, cxTextEdit, cxMemo, dxSkinVS2010;

type
  TFEST0003IView = class(TFImportarView, IBaseImportarView)
    CdDadosCODIGO: TStringField;
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
    TeIdProduto: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxLabel2: TcxLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    procedure habilitaControles;
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

procedure TFEST0003IView.executar;
begin
  habilitaControles;

  ShowModal;
end;

procedure TFEST0003IView.FormCreate(Sender: TObject);
begin
  inherited;

  Self.Width := Screen.Width - 200;
  Self.Height := Screen.Height - 200;
end;

procedure TFEST0003IView.habilitaControles;
begin
  BtSalvar.Enabled := not(CdDados.IsEmpty);
end;

procedure TFEST0003IView.importarArquivo;
begin

end;

class function TFEST0003IView.new: IBaseImportarView;
begin
  Result := Self.Create(nil);
end;

procedure TFEST0003IView.salvarDados;
begin

end;

end.
