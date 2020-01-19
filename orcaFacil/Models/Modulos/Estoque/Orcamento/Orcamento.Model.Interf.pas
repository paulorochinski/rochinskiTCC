unit Orcamento.Model.Interf;

interface

uses TESTORCAMENTO.Entidade.Model, ormbr.container.objectset.interfaces;

type
  IOrcamentoModel = interface
    ['{2363B7B6-5799-453F-82BD-73A93BA096C3}']
    function Entidade(AValue: TTESTORCAMENTO): IOrcamentoModel; overload;
    function Entidade: TTESTORCAMENTO; overload;

    function DAO: IContainerObjectSet<TTESTORCAMENTO>;
  end;

implementation

end.
