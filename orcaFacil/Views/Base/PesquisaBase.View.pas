unit PesquisaBase.View;

//Todos os formulários de pesquisa descendem deste formulário.

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base.View, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, dxBevel, cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit;

type
  TFPesquisaView = class(TFBaseView)
    PnPesquisa: TPanel;
    PnDivisorPesquisa: TPanel;
    VwDados: TcxGridDBTableView;
    LvDados: TcxGridLevel;
    GdDados: TcxGrid;
    StGrid: TcxStyleRepository;
    StHeader: TcxStyle;
    LbPesquisa: TLabel;
    TxPesquisa: TcxTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaView: TFPesquisaView;

implementation

{$R *.dfm}

end.
