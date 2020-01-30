unit EstoqueFactory.Model;

interface

uses EstoqueFactory.Model.Interf, Produto.Model.Interf, Orcamento.Model.Interf,
  OrcamentoItens.Model.Interf, OrcamentoFornecedores.Model.Interf;

type
  TEstoqueFactoryModel = class(TInterfacedObject, IEstoqueFactoryModel)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IEstoqueFactoryModel;

    function Produto: IProdutoModel;

    function Orcamento: IOrcamentoModel;
    function OrcamentoItens: IOrcamentoItensModel;
    function OrcamentoFornecedores: IOrcamentoFornecedoresModel;

  end;

implementation

{ TEstoqueFactoryModel }

uses Produto.Model, Orcamento.Model, OrcamentoItens.Model,
  OrcamentoFornecedores.Model;

constructor TEstoqueFactoryModel.Create;
begin

end;

destructor TEstoqueFactoryModel.Destroy;
begin

  inherited;
end;

class function TEstoqueFactoryModel.New: IEstoqueFactoryModel;
begin
  Result := Self.Create;
end;

function TEstoqueFactoryModel.Orcamento: IOrcamentoModel;
begin
  Result := TOrcamentoModel.New;
end;

function TEstoqueFactoryModel.OrcamentoFornecedores
  : IOrcamentoFornecedoresModel;
begin
  Result := TOrcamentoFornecedoresModel.New;
end;

function TEstoqueFactoryModel.OrcamentoItens: IOrcamentoItensModel;
begin
  Result := TOrcamentoItensModel.New;
end;

function TEstoqueFactoryModel.Produto: IProdutoModel;
begin
  Result := TProdutoModel.New;
end;

end.
