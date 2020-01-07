unit EstoqueFactory.Model.Interf;

interface

uses Produto.Model.Interf;

type
  IEstoqueFactoryModel = interface
    ['{F4CF2812-5430-4922-AB34-FBEDD6F8135D}']
    function Produto: IProdutoModel;
  end;

implementation

end.
