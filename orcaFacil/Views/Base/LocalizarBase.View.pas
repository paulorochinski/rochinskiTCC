unit LocalizarBase.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base.View, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Silver, cxControls, cxContainer,
  cxEdit, dxGDIPlusClasses, Vcl.ExtCtrls, cxLabel, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinBlack, dxSkinDarkRoom,
  dxSkinSilver;

type
  TFLocalizarView = class(TFBaseView)
    Panel6: TPanel;
    Panel7: TPanel;
    DbDados: TcxGrid;
    VwDados: TcxGridDBTableView;
    LvDados: TcxGridLevel;
    PnPesquisa: TPanel;
    ImPesquisa: TImage;
    TePesquisa: TcxTextEdit;
    cxLabel2: TcxLabel;
    FdDados: TFDMemTable;
    DsDados: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLocalizarView: TFLocalizarView;

implementation

{$R *.dfm}

end.
