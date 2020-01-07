unit Produto.Model.Interf;

interface

uses TESTPRODUTO.Entidade.Model, ormbr.container.objectset.interfaces;

type
  IProdutoModel = interface
    ['{AD2AFF88-38A4-49F5-806D-4CA63940C381}']
    function Entidade: TTESTPRODUTO; overload;
    function Entidade(AValue: TTESTPRODUTO): IProdutoModel; overload;
    function DAO: IContainerObjectSet<TTESTPRODUTO>;
  end;

implementation

end.
