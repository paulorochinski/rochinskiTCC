unit Orcamento.Model;

interface

uses Orcamento.Model.Interf, TESTORCAMENTO.Entidade.Model,
  ormbr.container.objectset.interfaces, ormbr.Factory.interfaces;

type
  TOrcamentoModel = class(TInterfacedObject, IOrcamentoModel)
  private
    FConexao: IDBConnection;
    FEntidade: TTESTORCAMENTO;
    FDao: IContainerObjectSet<TTESTORCAMENTO>;

  public
    constructor Create;
    destructor Destroy; override;

    class function New: IOrcamentoModel;

    function Entidade(AValue: TTESTORCAMENTO): IOrcamentoModel; overload;
    function Entidade: TTESTORCAMENTO; overload;

    function DAO: IContainerObjectSet<TTESTORCAMENTO>;

  end;

implementation

{ TOrcamentoModel }

uses FacadeController, ormbr.container.objectset;

constructor TOrcamentoModel.Create;
begin
  FConexao := TFacadeController.New.ConexaoController.conexaoAtual;
  FDao := TContainerObjectSet<TTESTORCAMENTO>.Create(FConexao, 1);
end;

function TOrcamentoModel.DAO: IContainerObjectSet<TTESTORCAMENTO>;
begin
  Result := FDao;
end;

destructor TOrcamentoModel.Destroy;
begin

  inherited;
end;

function TOrcamentoModel.Entidade(AValue: TTESTORCAMENTO): IOrcamentoModel;
begin
  Result := Self;
  FEntidade := AValue;
end;

function TOrcamentoModel.Entidade: TTESTORCAMENTO;
begin
  Result := FEntidade;
end;

class function TOrcamentoModel.New: IOrcamentoModel;
begin
  Result := Self.Create;
end;

end.
