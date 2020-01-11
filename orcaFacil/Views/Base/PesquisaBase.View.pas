unit PesquisaBase.View;

// Herança
// Todos os formulários de pesquisa descendem deste formulário.

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base.View, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, dxBevel, cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Base.View.Interf, Tipos.Controller.Interf;

type
  TFPesquisaView = class(TFBaseView, IBasePesquisaView)
    PnPesquisa: TPanel;
    PnDivisorPesquisa: TPanel;
    VwDados: TcxGridDBTableView;
    LvDados: TcxGridLevel;
    GdDados: TcxGrid;
    StGrid: TcxStyleRepository;
    StHeader: TcxStyle;
    LbPesquisa: TLabel;
    TxPesquisa: TcxTextEdit;
    FdDados: TFDMemTable;
    BtDuplicar: TcxButton;
    BtConsultar: TcxButton;
    BtAlterar: TcxButton;
    BtNovo: TcxButton;
    BtExcluir: TcxButton;
    PnGrid: TPanel;
    DsDados: TDataSource;
    procedure FdDadosAfterRefresh(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure VwDadosColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure BtNovoClick(Sender: TObject);
    procedure BtAlterarClick(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtDuplicarClick(Sender: TObject);
    procedure TxPesquisaPropertiesChange(Sender: TObject);
  private
    procedure listarRegistros;

  protected
    FCampoOrdem: string;
    FOperacao: TTipoOperacao;

    procedure filtrarRegistros;
    procedure controlaBotoesAtivos;
    function removerCaracteresEspeciais(AValue: string): string;

  public

    class function New: IBasePesquisaView;

    function incluirRegistro: IBasePesquisaView;
    function alterarRegistro: IBasePesquisaView;
    function consultarRegistro: IBasePesquisaView;
    function excluirRegistro: IBasePesquisaView;
    function duplicarRegistro: IBasePesquisaView;
    procedure &executar;

  end;

var
  FPesquisaView: TFPesquisaView;

implementation

{$R *.dfm}
{ TFPesquisaView }

function TFPesquisaView.alterarRegistro: IBasePesquisaView;
begin
  Result := Self;
  FOperacao := toAlterar;
end;

procedure TFPesquisaView.BtAlterarClick(Sender: TObject);
begin
  inherited;
  alterarRegistro;
end;

procedure TFPesquisaView.BtConsultarClick(Sender: TObject);
begin
  inherited;
  consultarRegistro;
end;

procedure TFPesquisaView.BtDuplicarClick(Sender: TObject);
begin
  inherited;
  duplicarRegistro;
end;

procedure TFPesquisaView.BtExcluirClick(Sender: TObject);
begin
  inherited;
  excluirRegistro;
end;

procedure TFPesquisaView.BtNovoClick(Sender: TObject);
begin
  inherited;
  incluirRegistro;
end;

function TFPesquisaView.consultarRegistro: IBasePesquisaView;
begin
  Result := Self;
  FOperacao := toConsultar;
end;

procedure TFPesquisaView.controlaBotoesAtivos;
begin
  BtAlterar.Enabled := not(FDDados.IsEmpty);
  BtConsultar.Enabled := not(FDDados.IsEmpty);
  BtExcluir.Enabled := not(FDDados.IsEmpty);
  BtDuplicar.Enabled := not(FDDados.IsEmpty);
end;

function TFPesquisaView.duplicarRegistro: IBasePesquisaView;
begin
  Result := Self;
  FOperacao := toDuplicar;
end;

function TFPesquisaView.excluirRegistro: IBasePesquisaView;
begin
  Result := Self;
  FOperacao := toExcluir;
end;

procedure TFPesquisaView.executar;
begin
  Show;
end;

procedure TFPesquisaView.FdDadosAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  controlaBotoesAtivos;
end;

procedure TFPesquisaView.filtrarRegistros;
begin
  FDDados.Filtered := false;

  if not(TxPesquisa.Text = EmptyStr) then
    FDDados.Filter := UpperCase(FCampoOrdem) + 'like ''%' +
      AnsiUpperCase(TxPesquisa.Text) + '%''';
  FDDados.Filtered := True;
end;

procedure TFPesquisaView.FormShow(Sender: TObject);
begin
  inherited;
  FCampoOrdem := '';
end;

function TFPesquisaView.incluirRegistro: IBasePesquisaView;
begin
  Result := Self;
  FOperacao := toIncluir;
end;

procedure TFPesquisaView.listarRegistros;
begin

end;

class function TFPesquisaView.New: IBasePesquisaView;
begin
  Result := Self.Create(nil);
end;

function TFPesquisaView.removerCaracteresEspeciais(AValue: string): string;
begin
  AValue := StringReplace(AValue, ' ', '', [rfReplaceAll, rfIgnoreCase]);
  AValue := StringReplace(AValue, 'â', 'a', [rfReplaceAll, rfIgnoreCase]);
  AValue := StringReplace(AValue, 'ã', 'a', [rfReplaceAll, rfIgnoreCase]);
  AValue := StringReplace(AValue, '/', '', [rfReplaceAll, rfIgnoreCase]);
  AValue := StringReplace(AValue, 'ç', 'c', [rfReplaceAll, rfIgnoreCase]);
  AValue := StringReplace(AValue, 'õ', 'o', [rfReplaceAll, rfIgnoreCase]);
  AValue := StringReplace(AValue, 'í', 'i', [rfReplaceAll, rfIgnoreCase]);

  Result := AValue;
end;

procedure TFPesquisaView.TxPesquisaPropertiesChange(Sender: TObject);
begin
  inherited;
  filtrarRegistros;
end;

procedure TFPesquisaView.VwDadosColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  inherited;
  FCampoOrdem := removerCaracteresEspeciais(AColumn.Caption);
end;

end.
