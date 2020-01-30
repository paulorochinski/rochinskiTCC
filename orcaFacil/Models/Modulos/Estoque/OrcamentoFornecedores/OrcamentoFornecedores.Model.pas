unit OrcamentoFornecedores.Model;

interface

uses OrcamentoFornecedores.Model.Interf,
  ormbr.container.objectset.interfaces, ormbr.Factory.interfaces,
  TESTORCAMENTOFORNECEDORES.Entidade.Model;

type
  TOrcamentoFornecedoresModel = class(TInterfacedObject, IOrcamentoFornecedoresModel)
  private
    FConexao: IDBConnection;
    FEntidade: TTESTORCAMENTOFORNECEDORES;
    FDao: IContainerObjectSet<TTESTORCAMENTOFORNECEDORES>;

  public
    constructor Create;
    destructor Destroy; override;

    class function New: IOrcamentoFornecedoresModel;

    function Entidade(AValue: TTESTORCAMENTOFORNECEDORES)
      : IOrcamentoFornecedoresModel; overload;
    function Entidade: TTESTORCAMENTOFORNECEDORES; overload;

    function DAO: IContainerObjectSet<TTESTORCAMENTOFORNECEDORES>;

  end;

implementation

{ TOrcamentoFornecedoresModel }

uses FacadeController, ormbr.container.objectset;

constructor TOrcamentoFornecedoresModel.Create;
begin
  FConexao := TFacadeController.New.ConexaoController.conexaoAtual;
  FDao := TContainerObjectSet<TTESTORCAMENTOFORNECEDORES>.Create(FConexao, 1);
end;

function TOrcamentoFornecedoresModel.DAO: IContainerObjectSet<TTESTORCAMENTOFORNECEDORES>;
begin
  Result := FDao;
end;

destructor TOrcamentoFornecedoresModel.Destroy;
begin

  inherited;
end;

function TOrcamentoFornecedoresModel.Entidade(AValue: TTESTORCAMENTOFORNECEDORES)
  : IOrcamentoFornecedoresModel;
begin
  Result := Self;
  FEntidade := AValue;
end;

function TOrcamentoFornecedoresModel.Entidade: TTESTORCAMENTOFORNECEDORES;
begin
  Result := FEntidade;
end;

class function TOrcamentoFornecedoresModel.New: IOrcamentoFornecedoresModel;
begin
  Result := Self.Create;
end;

end.
