unit EstoqueFactory.Controller.interf;

interface

uses Produto.Controller.interf, ImportarProduto.Controller.interf;

type
  IEstoqueFactoryController = interface
    ['{AE45AEAB-9998-4AC7-BA48-BCBB727F0903}']
    function Produto: IProdutoController;
    function importarProduto: IImportarProdutoController;
  end;

implementation

end.
