unit PagarFactory.Model.Interf;

interface

uses Fornecedor.Model.Interf;

type
  IPagarFactoryModel = interface
    ['{05490B4B-3BA9-472A-B22C-BD24B49D9065}']
    function fornecedor: IFornecedorModel;
  end;

implementation

end.
