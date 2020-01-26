unit Orcamento.Controller;

interface

uses Orcamento.Controller.interf, Orcamento.Model.interf,
  OrcamentoItens.Model.interf, TESTORCAMENTOITENS.Entidade.Model,
  Generics.Collections, TESTORCAMENTO.Entidade.Model, FireDAC.Stan.Param, 
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client, System.SysUtils;

type
  TOrcamentoController = class(TInterfacedObject, IOrcamentoController)
  private
    FOrcamentoModel: IOrcamentoModel;
    FOrcamentoItensModel: IOrcamentoItensModel;

    FRegistro: TTESTORCAMENTO;
    FItens: TList<TOrcamentoItens>;
    FQueryItens: TFDQuery;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IOrcamentoController;

    function Incluir: IOrcamentoOperacaoIncluirController;
    function Alterar: IOrcamentoOperacaoAlterarController;
    function Excluir: IOrcamentoOperacaoExcluirController;
    function Duplicar: IOrcamentoOperacaoDuplicarController;

    function localizar(AValue: string): IOrcamentoController;

    function idOrcamento: string;
    function descricao: string;

    function itens: TList<TOrcamentoItens>;
    procedure AddItem(AValue: TOrcamentoItens);
    procedure removeAllItens;
  end;

implementation

{ TOrcamentoController }

uses FacadeController, FacadeModel, OrcamentoOperacaoIncluir.Controller;

procedure TOrcamentoController.AddItem(AValue: TOrcamentoItens);
begin
  FItens.Add(AValue);
end;

function TOrcamentoController.Alterar: IOrcamentoOperacaoAlterarController;
begin

end;

constructor TOrcamentoController.Create;
begin
  FOrcamentoModel := TFacadeModel.New.ModulosFacadeModel.
    estoqueFactoryModel.Orcamento;

  FOrcamentoItensModel := TFacadeModel.New.ModulosFacadeModel.
    estoqueFactoryModel.OrcamentoItens;

  FItens := TList<TOrcamentoItens>.Create;
end;

function TOrcamentoController.descricao: string;
begin
  Result := FRegistro.descricao;
end;

destructor TOrcamentoController.Destroy;
begin
  FItens.Free;
  inherited;
end;

function TOrcamentoController.Duplicar: IOrcamentoOperacaoDuplicarController;
begin

end;

function TOrcamentoController.Excluir: IOrcamentoOperacaoExcluirController;
begin

end;

function TOrcamentoController.idOrcamento: string;
begin
  Result := IntToStr(FRegistro.idOrcamento);
end;

function TOrcamentoController.Incluir: IOrcamentoOperacaoIncluirController;
begin
  Result := TOrcamentoOperacaoIncluirController.New.orcamentoModel
    (FOrcamentoModel).orcamentoItensModel(FOrcamentoItensModel).itens(FItens)
end;

function TOrcamentoController.itens: TList<TOrcamentoItens>;
var VItem: TOrcamentoItens;
begin
  FItens.Clear;

  FQueryItens.First;
  while not(FQueryItens.Eof) do
  begin
    VItem.codigo        := FQueryItens.FieldByName('CODIGO').AsString;
    VItem.qtde          := FQueryItens.FieldByName('QTDE').AsFloat;

    FItens.Add(VItem);

    FQueryItens.Next;
  end;

  Result := FItens;
end;

function TOrcamentoController.localizar(AValue: string): IOrcamentoController;
begin
  Result := Self;

  FRegistro := FOrcamentoModel.DAO.FindWhere('CODIGO=' + QuotedStr(AValue),
    'DATA_CADASTRO').Items[0];

  FQueryItens := FOrcamentoModel.queryItensOrcamento(FRegistro.CODIGO);  
end;

class function TOrcamentoController.New: IOrcamentoController;
begin
  Result := Self.Create;
end;

procedure TOrcamentoController.removeAllItens;
begin
  FItens.Clear;
end;

end.
