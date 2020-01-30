unit EstoqueFactory.Model.Interf;

interface

uses Produto.Model.Interf, Orcamento.Model.Interf, OrcamentoItens.Model.Interf,
  OrcamentoFornecedores.Model.Interf;

type
  IEstoqueFactoryModel = interface
    ['{F4CF2812-5430-4922-AB34-FBEDD6F8135D}']
    function Produto: IProdutoModel;

    function orcamento: IOrcamentoModel;
    function orcamentoItens: IOrcamentoItensModel;
    function orcamentoFornecedores: IOrcamentoFornecedoresModel;
  end;

implementation

end.
