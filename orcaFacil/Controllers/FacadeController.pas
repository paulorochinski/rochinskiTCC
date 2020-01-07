unit FacadeController;

interface

uses FacadeController.interf, Conexao.Controller.interf,
  ModulosFacade.Controller.interf;

type
  TFacadeController = class(TInterfacedObject, IFacadeController)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IFacadeController;

    function ConexaoController: IConexaoController;

    function ModulosFacadeController: IModulosFacadeController;

  end;

implementation

{ TFacadeController }

uses Conexao.Controller, ModulosFacade.Controller;

function TFacadeController.ConexaoController: IConexaoController;
begin
  Result := TConexaoController.New;
end;

constructor TFacadeController.Create;
begin

end;

destructor TFacadeController.Destroy;
begin

  inherited;
end;

function TFacadeController.ModulosFacadeController: IModulosFacadeController;
begin
  Result := TModulosFacadeController.New;
end;

class function TFacadeController.New: IFacadeController;
begin
  Result := Self.Create;
end;

end.
