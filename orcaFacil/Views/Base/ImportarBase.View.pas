unit ImportarBase.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base.View, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, cxLabel,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Vcl.Grids, Vcl.ComCtrls, cxStyles,
  cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Datasnap.DBClient;

type
  TFImportarView = class(TFBaseView)
    BtSalvar: TcxButton;
    BtBuscar: TcxButton;
    OpPlanilha: TOpenDialog;
    PbProgresso: TProgressBar;
    DbDados: TcxGrid;
    VwDados: TcxGridDBTableView;
    LvDados: TcxGridLevel;
    DsDados: TDataSource;
    StGrid: TcxStyleRepository;
    StHeader: TcxStyle;
    StBackground: TcxStyle;
    StContentOdd: TcxStyle;
    StContentEven: TcxStyle;
    StSelection: TcxStyle;
    StInactive: TcxStyle;
    CdDados: TClientDataSet;
  private
    { Private declarations }

  protected
    function formatarTextoEmValor(AValue: string): string;
    function removerEspacoesExtrasDeUmTexto(AValue: string): string;
  public
    { Public declarations }
  end;

var
  FImportarView: TFImportarView;

implementation

{$R *.dfm}
{ TFImportarView }

function TFImportarView.formatarTextoEmValor(AValue: string): string;
begin
  AValue := StringReplace(AValue, '.', '', [rfReplaceAll, rfIgnoreCase]);
  AValue := StringReplace(AValue, '', '0,00', [rfReplaceAll, rfIgnoreCase]);

  Result := AValue;
end;

function TFImportarView.removerEspacoesExtrasDeUmTexto(AValue: string): string;
var
  I, tamanhoTexto: Integer;
begin
  tamanhoTexto := Length(AValue);

  for I := 0 to Pred(tamanhoTexto) do
  begin
    AValue := StringReplace(AValue, '  ', '', [rfReplaceAll, rfIgnoreCase]);
  end;

  Result := AValue;
end;

end.