unit PagarFactory.Model;

interface

uses PagarFactory.Model.Interf, Fornecedor.Model.Interf;

type
  TPagarFactoryModel = class(TInterfacedObject, IPagarFactoryModel)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IPagarFactoryModel;

    function Fornecedor: IFornecedorModel;
  end;

implementation

{ TPagarFactoryModel }

uses Fornecedor.Model;

constructor TPagarFactoryModel.Create;
begin

end;

destructor TPagarFactoryModel.Destroy;
begin

  inherited;
end;

function TPagarFactoryModel.Fornecedor: IFornecedorModel;
begin
  Result := TFornecedorModel.New;
end;

class function TPagarFactoryModel.New: IPagarFactoryModel;
begin
  Result := Self.Create;
end;

end.
