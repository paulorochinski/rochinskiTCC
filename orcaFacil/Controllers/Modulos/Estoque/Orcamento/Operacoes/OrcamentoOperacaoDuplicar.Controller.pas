unit OrcamentoOperacaoDuplicar.Controller;

interface

uses Orcamento.Controller.interf, Orcamento.Model.interf,
  OrcamentoItens.Model.interf, TESTORCAMENTOITENS.Entidade.Model,
  Generics.Collections, TESTORCAMENTO.Entidade.Model,
  OrcamentoFornecedores.Model.interf, TESTORCAMENTOFORNECEDORES.Entidade.Model;

type
  TOrcamentoOperacaoDuplicarController = class(TInterfacedObject,
    IOrcamentoOperacaoDuplicarController)
  private
    FOrcamentoModel: IOrcamentoModel;
    FOrcamentoItensModel: IOrcamentoItensModel;
    FOrcamentoFornecedoresModel: IOrcamentoFornecedoresModel;

    FDescricao: string;
    FListaItens: TList<TOrcamentoItens>;
    FListaFornecedores: TList<TOrcamentoFornecedores>;

    procedure gravaCapaOrcamento;
    procedure gravaItensOrcamento;
    procedure gravaFornecedoresOrcamento;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IOrcamentoOperacaoDuplicarController;

    function orcamentoModel(AValue: IOrcamentoModel)
      : IOrcamentoOperacaoDuplicarController;
    function orcamentoItensModel(AValue: IOrcamentoItensModel)
      : IOrcamentoOperacaoDuplicarController;
    function orcamentoFornecedoresModel(AValue: IOrcamentoFornecedoresModel)
      : IOrcamentoOperacaoDuplicarController;

    function descricao(AValue: string): IOrcamentoOperacaoDuplicarController;

    function itens(AValue: TList<TOrcamentoItens>)
      : IOrcamentoOperacaoDuplicarController;
    function fornecedores(AValue: TList<TOrcamentoFornecedores>)
      : IOrcamentoOperacaoDuplicarController;


    procedure finalizar;
  end;

implementation

{ TOrcamentoOperacaoDuplicarController }

constructor TOrcamentoOperacaoDuplicarController.Create;
begin

end;

function TOrcamentoOperacaoDuplicarController.descricao(AValue: string)
  : IOrcamentoOperacaoDuplicarController;
begin
  Result := Self;
  FDescricao := AValue;
end;

destructor TOrcamentoOperacaoDuplicarController.Destroy;
begin

  inherited;
end;

procedure TOrcamentoOperacaoDuplicarController.finalizar;
begin
   {1} gravaCapaOrcamento;
   {2} gravaItensOrcamento;
   {3} gravaFornecedoresOrcamento;
end;

function TOrcamentoOperacaoDuplicarController.fornecedores(
  AValue: TList<TOrcamentoFornecedores>): IOrcamentoOperacaoDuplicarController;
begin
  Result := Self;
  FListaFornecedores := AValue;
end;

procedure TOrcamentoOperacaoDuplicarController.gravaCapaOrcamento;
begin
  FOrcamentoModel.Entidade(TTESTORCAMENTO.Create);
  FOrcamentoModel.Entidade.descricao := FDescricao;
  FOrcamentoModel.DAO.Insert(FOrcamentoModel.Entidade);
end;

procedure TOrcamentoOperacaoDuplicarController.gravaFornecedoresOrcamento;
var I: Integer;
begin
  for I := 0 to pred(FListaFornecedores.Count) do
  begin
    FOrcamentoFornecedoresModel.Entidade(TTESTORCAMENTOFORNECEDORES.Create);

    FOrcamentoFornecedoresModel.Entidade.IDORCAMENTO := FOrcamentoModel.Entidade.CODIGO;
    FOrcamentoFornecedoresModel.Entidade.IDFORNECEDOR := FListaFornecedores.Items[I].CODIGO;

    FOrcamentoFornecedoresModel.DAO.Insert(FOrcamentoFornecedoresModel.Entidade);
  end;
end;

procedure TOrcamentoOperacaoDuplicarController.gravaItensOrcamento;
var I: Integer;
begin
  for I := 0 to pred(FListaItens.Count) do
  begin
    FOrcamentoItensModel.Entidade(TTESTORCAMENTOITENS.Create);

    FOrcamentoItensModel.Entidade.IDORCAMENTO := FOrcamentoModel.Entidade.CODIGO;
    FOrcamentoItensModel.Entidade.IDPRODUTO := FListaItens.Items[I].CODIGO;
    FOrcamentoItensModel.Entidade.QTDE := FListaItens.Items[I].QTDE;

    FOrcamentoItensModel.DAO.Insert(FOrcamentoItensModel.Entidade);
  end;
end;

function TOrcamentoOperacaoDuplicarController.itens
  (AValue: TList<TOrcamentoItens>): IOrcamentoOperacaoDuplicarController;
begin
  Result := Self;
  FListaItens := AValue;
end;

class function TOrcamentoOperacaoDuplicarController.New
  : IOrcamentoOperacaoDuplicarController;
begin
  Result := Self.Create;
end;

function TOrcamentoOperacaoDuplicarController.orcamentoFornecedoresModel
  (AValue: IOrcamentoFornecedoresModel): IOrcamentoOperacaoDuplicarController;
begin
  Result := self;
  FOrcamentoFornecedoresModel := AValue;
end;

function TOrcamentoOperacaoDuplicarController.orcamentoItensModel
  (AValue: IOrcamentoItensModel): IOrcamentoOperacaoDuplicarController;
begin
  Result := Self;
  FOrcamentoItensModel := AValue;
end;

function TOrcamentoOperacaoDuplicarController.orcamentoModel
  (AValue: IOrcamentoModel): IOrcamentoOperacaoDuplicarController;
begin
  Result := Self;
  FOrcamentoModel := AValue;
end;

end.
