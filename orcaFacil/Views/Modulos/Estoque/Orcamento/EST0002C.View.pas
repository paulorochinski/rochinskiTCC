unit EST0002C.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroBase.View, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Silver, cxControls, cxContainer,
  cxEdit, dxGDIPlusClasses, Vcl.ExtCtrls, cxLabel, Vcl.StdCtrls, cxButtons, cxMemo, cxTextEdit,
  dxBarBuiltInMenu, cxPC, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TFEST0002CView = class(TFCadastroView)
    TeIdProduto: TcxTextEdit;
    cxLabel6: TcxLabel;
    TeDescricao: TcxMemo;
    cxLabel3: TcxLabel;
    cxPageControl1: TcxPageControl;
    TbItens: TcxTabSheet;
    PnCrud: TPanel;
    BtAlterar: TcxButton;
    BtExcluir: TcxButton;
    BtNovo: TcxButton;
    DbDados: TcxGrid;
    VwDados: TcxGridDBTableView;
    LvDados: TcxGridLevel;
    TbFornecedor: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel6: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEST0002CView: TFEST0002CView;

implementation

{$R *.dfm}

end.
