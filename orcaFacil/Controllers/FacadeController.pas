unit FacadeController;

interface

uses FacadeController.interf, Conexao.Controller.interf;

type
  TFacadeController = class(TInterfacedObject, IFacadeController)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IFacadeController;

    function Conexao: IConexaoController;

  end;

implementation

{ TFacadeController }

uses Conexao.Controller;

function TFacadeController.Conexao: IConexaoController;
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

class function TFacadeController.New: IFacadeController;
begin
  Result := Self.Create;
end;

end.
