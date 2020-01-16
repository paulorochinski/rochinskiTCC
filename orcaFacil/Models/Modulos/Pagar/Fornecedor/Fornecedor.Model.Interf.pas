unit Fornecedor.Model.Interf;

interface

uses TPAGFORNECEDOR.Entidade.Model, ormbr.container.objectset.interfaces;

Type
  IFornecedorModel = interface
    ['{A8B22478-BCAF-433B-8B8F-4BE229C5DD66}']
    function Entidade(AValue: TTPAGFORNECEDOR): IFornecedorModel; overload;
    function Entidade: TTPAGFORNECEDOR; overload;

    function DAO: IContainerObjectSet<TTPAGFORNECEDOR>;
  end;

implementation

end.
