unit OrcamentoFornecedores.Model.Interf;

interface

uses ormbr.container.objectset.interfaces,
  TESTORCAMENTOFORNECEDORES.Entidade.Model;

type
  IOrcamentoFornecedoresModel = interface
    ['{7A41E40E-E3EE-4097-9DF9-F82F7BC7470A}']
    function Entidade(AValue: TTESTORCAMENTOFORNECEDORES)
      : IOrcamentoFornecedoresModel; overload;
    function Entidade: TTESTORCAMENTOFORNECEDORES; overload;

    function DAO: IContainerObjectSet<TTESTORCAMENTOFORNECEDORES>;
  end;

implementation

end.
