unit MensagensFactory.View;

interface

uses MensagensFactory.View.Interf, Base.View.Interf, Tipos.Controller.Interf;

type
  TMensagemFactoryView = class(TInterfacedObject, IMensagemFactoryView)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IMensagemFactoryView;

    function exibirMensagem(AValue: TTIpoMensagem): IBaseMensagemView;

  end;

implementation

{ TMensagemFactoryView }

uses M0001ALE.View, M0001CON.View, M0001ERR.View, M0001INF.View;

constructor TMensagemFactoryView.Create;
begin

end;

destructor TMensagemFactoryView.Destroy;
begin

  inherited;
end;

function TMensagemFactoryView.exibirMensagem(AValue: TTIpoMensagem)
  : IBaseMensagemView;
begin
  case AValue of
    tmInformacao:
      Result := TFM0001INFView.New;

    tmAlerta:
      Result := TFM0001ALEView.New;

    tmErro:
      Result := TFM0001ERRView.New;

    tmConfirmacao:
      TFM0001CONView.New;
  end;
end;

class function TMensagemFactoryView.New: IMensagemFactoryView;
begin
  Result := Self.Create;
end;

end.
