unit Orcamento.Model.Interf;

interface

uses TESTORCAMENTO.Entidade.Model, ormbr.container.objectset.interfaces,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client;

type
  IOrcamentoModel = interface
    ['{2363B7B6-5799-453F-82BD-73A93BA096C3}']
    function Entidade(AValue: TTESTORCAMENTO): IOrcamentoModel; overload;
    function Entidade: TTESTORCAMENTO; overload;

    function DAO: IContainerObjectSet<TTESTORCAMENTO>;
    function query: TFDQuery;

    function queryItensOrcamento(ACodOrcamento: string): TFDQuery;
  end;

implementation

end.
