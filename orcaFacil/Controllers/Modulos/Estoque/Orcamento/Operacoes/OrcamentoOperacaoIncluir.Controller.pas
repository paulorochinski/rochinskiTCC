unit OrcamentoOperacaoIncluir.Controller;

interface

uses Orcamento.Controller.interf, Orcamento.Model.interf,
  OrcamentoItens.Model.interf, TESTORCAMENTOITENS.Entidade.Model,
  Generics.Collections, TESTORCAMENTO.Entidade.Model,
  OrcamentoFornecedores.Model.interf, TESTORCAMENTOFORNECEDORES.Entidade.Model;

type
  TOrcamentoOperacaoIncluirController = class(TInterfacedObject,
    IOrcamentoOperacaoIncluirController)
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

    class function New: IOrcamentoOperacaoIncluirController;

    function orcamentoModel(AValue: IOrcamentoModel)
      : IOrcamentoOperacaoIncluirController;
    function orcamentoItensModel(AValue: IOrcamentoItensModel)
      : IOrcamentoOperacaoIncluirController;
    function orcamentoFornecedoresModel(AValue: IOrcamentoFornecedoresModel)
      : IOrcamentoOperacaoIncluirController;

    function descricao(AValue: string): IOrcamentoOperacaoIncluirController;

    function itens(AValue: TList<TOrcamentoItens>)
      : IOrcamentoOperacaoIncluirController;
    function fornecedores(AValue: TList<TOrcamentoFornecedores>)
      : IOrcamentoOperacaoIncluirController;


    procedure finalizar;
  end;

implementation

{ TOrcamentoOperacaoIncluirController }

constructor TOrcamentoOperacaoIncluirController.Create;
begin

end;

function TOrcamentoOperacaoIncluirController.descricao(AValue: string)
  : IOrcamentoOperacaoIncluirController;
begin
  Result := Self;
  FDescricao := AValue;
end;

destructor TOrcamentoOperacaoIncluirController.Destroy;
begin

  inherited;
end;

procedure TOrcamentoOperacaoIncluirController.finalizar;
begin
   {1} gravaCapaOrcamento;
   {2} gravaItensOrcamento;
   {3} gravaFornecedoresOrcamento;
end;

function TOrcamentoOperacaoIncluirController.fornecedores(
  AValue: TList<TOrcamentoFornecedores>): IOrcamentoOperacaoIncluirController;
begin
  Result := Self;
  FListaFornecedores := AValue;
end;

procedure TOrcamentoOperacaoIncluirController.gravaCapaOrcamento;
begin
  FOrcamentoModel.Entidade(TTESTORCAMENTO.Create);
  FOrcamentoModel.Entidade.descricao := FDescricao;
  FOrcamentoModel.DAO.Insert(FOrcamentoModel.Entidade);
end;

procedure TOrcamentoOperacaoIncluirController.gravaFornecedoresOrcamento;
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

procedure TOrcamentoOperacaoIncluirController.gravaItensOrcamento;
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

function TOrcamentoOperacaoIncluirController.itens
  (AValue: TList<TOrcamentoItens>): IOrcamentoOperacaoIncluirController;
begin
  Result := Self;
  FListaItens := AValue;
end;

class function TOrcamentoOperacaoIncluirController.New
  : IOrcamentoOperacaoIncluirController;
begin
  Result := Self.Create;
end;

function TOrcamentoOperacaoIncluirController.orcamentoFornecedoresModel
  (AValue: IOrcamentoFornecedoresModel): IOrcamentoOperacaoIncluirController;
begin
  Result := self;
  FOrcamentoFornecedoresModel := AValue;
end;

function TOrcamentoOperacaoIncluirController.orcamentoItensModel
  (AValue: IOrcamentoItensModel): IOrcamentoOperacaoIncluirController;
begin
  Result := Self;
  FOrcamentoItensModel := AValue;
end;

function TOrcamentoOperacaoIncluirController.orcamentoModel
  (AValue: IOrcamentoModel): IOrcamentoOperacaoIncluirController;
begin
  Result := Self;
  FOrcamentoModel := AValue;
end;

end.
