unit PagarFactory.Controller;

interface

uses PagarFactory.Controller.interf, Fornecedor.Controller.interf;

type
  TPagarFaactoryController = class(TInterfacedObject, IPagarFaactoryController)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IPagarFaactoryController;

    function fornecedor: IFornecedorController;

  end;

implementation

{ TPagarFaactoryController }

uses Fornecedor.Controller;

constructor TPagarFaactoryController.Create;
begin

end;

destructor TPagarFaactoryController.Destroy;
begin

  inherited;
end;

function TPagarFaactoryController.fornecedor: IFornecedorController;
begin
  Result := TFornecedorController.New;
end;

class function TPagarFaactoryController.New: IPagarFaactoryController;
begin
  Result := Self.Create;
end;

end.
