unit EstoqueFactory.View;

interface

uses EstoqueFactory.View.interf, Base.View.interf, Tipos.Controller.interf;

type
  TEstoqueFactoryView = class(TInterfacedObject, IEstoqueFactoryView)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IEstoqueFactoryView;

    function exibirTelaBusca(AValue: TTelaBusca): IBaseLocalizarView;
    function exibirTelaListagem(AValue: TTelaListagem): IBasePesquisaView;
    function exibirTelaCadastro(AValue: TTelaCadastro): IBaseCadastroView;
    function exibirTelaImportacao(AValue: TTelaImportacao): IBaseImportarView;

  end;

implementation

{ TEstoqueFactoryView }

uses EST0001P.View, EST0001C.View, EST0001I.View, EST0002P.View, EST0002C.View,
  EST0001L.View,
  EST0003P.View;

constructor TEstoqueFactoryView.Create;
begin

end;

destructor TEstoqueFactoryView.Destroy;
begin

  inherited;
end;

function TEstoqueFactoryView.exibirTelaBusca(AValue: TTelaBusca)
  : IBaseLocalizarView;
begin
  case AValue of
    tbProduto:
      Result := TFEST0001LView.New;
  end;

end;

function TEstoqueFactoryView.exibirTelaCadastro(AValue: TTelaCadastro)
  : IBaseCadastroView;
begin
  case AValue of
    tcProduto:
      Result := TFEST0001CView.New;

    tcOrcamento:
      Result := TFEST0002CView.New;
  end;
end;

function TEstoqueFactoryView.exibirTelaImportacao(AValue: TTelaImportacao)
  : IBaseImportarView;
begin
  case AValue of
    tiProduto:
      Result := TFEST0001IView.New;
  end;
end;

function TEstoqueFactoryView.exibirTelaListagem(AValue: TTelaListagem)
  : IBasePesquisaView;
begin
  case AValue of
    tlProduto:
      Result := TFEST0001PView.New;

    tlOrcamento:
      Result := TFEST0002PView.New;

    tlCotacao:
      Result := TFEST0003PView.New;
  end;
end;

class function TEstoqueFactoryView.New: IEstoqueFactoryView;
begin
  Result := Self.Create;
end;

end.
