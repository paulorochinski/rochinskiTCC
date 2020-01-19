unit OrcamentoItens.Model.Interf;

interface

uses TESTORCAMENTOITENS.Entidade.Model, ormbr.container.objectset.interfaces;

type
  IOrcamentoItensModel = interface
    ['{03181149-B5E8-4325-A1D4-550E60ADCD2E}']
    function Entidade(AValue: TTESTORCAMENTOITENS): IOrcamentoItensModel; overload;
    function Entidade: TTESTORCAMENTOITENS; overload;

    function DAO: IContainerObjectSet<TTESTORCAMENTOITENS>;
  end;

implementation

end.
