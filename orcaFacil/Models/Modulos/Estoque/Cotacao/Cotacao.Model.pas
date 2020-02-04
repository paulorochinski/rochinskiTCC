unit Cotacao.Model;

interface

uses
  ormbr.container.objectset.interfaces, ormbr.Factory.interfaces,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client, System.SysUtils, TESTCOTACAO.Entidade.Model,
  Cotacao.Model.Interf;

type
  TCotacaoModel = class(TInterfacedObject, ICotacaoModel)
  private
    FConexao: IDBConnection;
    FEntidade: TTESTCOTACAO;
    FDao: IContainerObjectSet<TTESTCOTACAO>;
    FDQuery: TFDQuery;

  public
    constructor Create;
    destructor Destroy; override;

    class function New: ICotacaoModel;

    function Entidade(AValue: TTESTCOTACAO): ICotacaoModel; overload;
    function Entidade: TTESTCOTACAO; overload;

    function DAO: IContainerObjectSet<TTESTCOTACAO>;

    function query: TFDQuery;

    function queryItensCotacao(ACodOrcamento: string): TFDQuery;
  end;

implementation

{ TCotacaoModel }

uses FacadeController, ormbr.container.objectset, cqlbr.interfaces,
  criteria.query.language, FacadeModel, Conexao.Model.Interf,
  cqlbr.serialize.firebird;

constructor TCotacaoModel.Create;
begin
  FConexao := TFacadeController.New.ConexaoController.conexaoAtual;
  FDao := TContainerObjectSet<TTESTCOTACAO>.Create(FConexao, 1);

  FDQuery := TFDQuery.Create(nil);

  FDQuery.Connection := TFacadeModel.New.conexaoFactoryModel.
    conexaoComBancoDeDados(dbFirebird).ConexaoFireDac;
end;

function TCotacaoModel.DAO: IContainerObjectSet<TTESTCOTACAO>;
begin
  Result := FDao;
end;

destructor TCotacaoModel.Destroy;
begin

  inherited;
end;

function TCotacaoModel.Entidade(AValue: TTESTCOTACAO): ICotacaoModel;
begin
  Result := Self;
  FEntidade := AValue;
end;

function TCotacaoModel.Entidade: TTESTCOTACAO;
begin
  Result := FEntidade;
end;

class function TCotacaoModel.New: ICotacaoModel;
begin
  Result := Self.Create;
end;

function TCotacaoModel.query: TFDQuery;
begin
  Result := FDQuery;
end;

function TCotacaoModel.queryItensCotacao(ACodOrcamento: string): TFDQuery;
begin
  FDQuery.SQL.Clear;
  FDQuery.Active := False;

  FDQuery.SQL.Add(Format('  select                                           ' +
    'b.codigo,                                                  ' +
    'b.codigo_sinapi,                                           ' +
    'b.descricao,                                               ' +
    'b.unidmedida,                                              ' +
    'a.qtde                                                     ' +
    'from                                                       ' +
    'testorcamentoitens a                                       ' +
    'inner join testproduto b on (b.codigo = a.idproduto)       ' +
    'where a.idorcamento = %s                                   ',
    [QuotedStr(ACodOrcamento)]));

  FDQuery.Active := True;

  Result := FDQuery;
end;

end.
