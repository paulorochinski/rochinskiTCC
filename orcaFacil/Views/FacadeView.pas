unit FacadeView;

interface

uses FacadeView.Interf, ModulosFacade.View.Interf;

type
  TFacadeView = class(TInterfacedObject, IFacadeView)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IFacadeView;

    function ModulosFacadeView: IModulosFacadeView;

  end;

implementation

{ TFacadeView }

uses ModulosFacade.View;

constructor TFacadeView.Create;
begin

end;

destructor TFacadeView.Destroy;
begin

  inherited;
end;

function TFacadeView.ModulosFacadeView: IModulosFacadeView;
begin
  Result := TModulosFacadeView.New;
end;

class function TFacadeView.New: IFacadeView;
begin
  Result := Self.Create;
end;

end.
