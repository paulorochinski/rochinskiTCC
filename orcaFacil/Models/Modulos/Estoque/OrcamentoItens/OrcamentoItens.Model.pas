unit OrcamentoItens.Model;

interface

uses OrcamentoItens.Model.Interf, TESTORCAMENTOITENS.Entidade.Model,
  ormbr.container.objectset.interfaces, ormbr.Factory.interfaces;

type
  TOrcamentoItensModel = class(TInterfacedObject, IOrcamentoItensModel)
  private
    FConexao: IDBConnection;
    FEntidade: TTESTORCAMENTOITENS;
    FDao: IContainerObjectSet<TTESTORCAMENTOITENS>;

  public
    constructor Create;
    destructor Destroy; override;

    class function New: IOrcamentoItensModel;

    function Entidade(AValue: TTESTORCAMENTOITENS): IOrcamentoItensModel; overload;
    function Entidade: TTESTORCAMENTOITENS; overload;

    function DAO: IContainerObjectSet<TTESTORCAMENTOITENS>;

  end;

implementation

{ TOrcamentoItensModel }

uses FacadeController, ormbr.container.objectset;

constructor TOrcamentoItensModel.Create;
begin
  FConexao := TFacadeController.New.ConexaoController.conexaoAtual;
  FDao := TContainerObjectSet<TTESTORCAMENTOITENS>.Create(FConexao, 1);
end;

function TOrcamentoItensModel.DAO: IContainerObjectSet<TTESTORCAMENTOITENS>;
begin
  Result := FDao;
end;

destructor TOrcamentoItensModel.Destroy;
begin

  inherited;
end;

function TOrcamentoItensModel.Entidade(AValue: TTESTORCAMENTOITENS): IOrcamentoItensModel;
begin
  Result := Self;
  FEntidade := AValue;
end;

function TOrcamentoItensModel.Entidade: TTESTORCAMENTOITENS;
begin
  Result := FEntidade;
end;

class function TOrcamentoItensModel.New: IOrcamentoItensModel;
begin
  Result := Self.Create;
end;

end.
