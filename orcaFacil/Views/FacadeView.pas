unit FacadeView;

interface

uses FacadeView.Interf, ModulosFacade.View.Interf, MensagensFactory.View.Interf;

type
  TFacadeView = class(TInterfacedObject, IFacadeView)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IFacadeView;

    function ModulosFacadeView: IModulosFacadeView;
    function MensagensFactory: IMensagemFactoryView;

  end;

implementation

{ TFacadeView }

uses ModulosFacade.View, MensagensFactory.View;

constructor TFacadeView.Create;
begin

end;

destructor TFacadeView.Destroy;
begin

  inherited;
end;

function TFacadeView.MensagensFactory: IMensagemFactoryView;
begin
  Result := TMensagemFactoryView.New;
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
