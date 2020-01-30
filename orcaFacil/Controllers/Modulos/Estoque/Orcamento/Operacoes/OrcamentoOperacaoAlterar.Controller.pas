unit OrcamentoOperacaoAlterar.Controller;

interface

uses Orcamento.Controller.interf, Orcamento.Model.interf,
  OrcamentoItens.Model.interf, Generics.Collections, TESTORCAMENTOITENS.Entidade.Model,
  TESTORCAMENTO.Entidade.Model, System.SysUtils, ormbr.factory.interfaces,
  OrcamentoFornecedores.Model.Interf, TESTORCAMENTOFORNECEDORES.Entidade.Model;

type
  TOrcamentoOperacaoAlterarController = class(TInterfacedObject,
    IOrcamentoOperacaoAlterarController)
  private
    FConexao: IDBConnection;
    FOrcamentoModel: IOrcamentoModel;
    FOrcamentoItensModel: IOrcamentoItensModel;
    FOrcamentoFornecedoresModel: IOrcamentoFornecedoresModel;

    FRegistro: TTESTORCAMENTO;

    FDescricao: string;

    FLista: TList<TOrcamentoItens>;
    FListaFornecedores: TList<TOrcamentoFornecedores>;

    procedure removerItensOrcamento;
    procedure removerFornecedoresOrcamento;

    procedure gravarCapaOrcamento;
    procedure gravarItensOrcamento;
    procedure gravarFornecedoresOrcamento;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IOrcamentoOperacaoAlterarController;

    function orcamentoModel(AValue: IOrcamentoModel)
      : IOrcamentoOperacaoAlterarController;
    function orcamentoItensModel(AValue: IOrcamentoItensModel)
      : IOrcamentoOperacaoAlterarController;
    function orcamentoFornecedoresModel(AValue: IOrcamentoFornecedoresModel)
      : IOrcamentoOperacaoAlterarController;


    function orcamentoSelecionado(AValue: TTESTORCAMENTO): IOrcamentoOperacaoAlterarController;

    function descricao(AValue: string): IOrcamentoOperacaoAlterarController;

    function itens(AValue: TList<TOrcamentoItens>)
      : IOrcamentoOperacaoAlterarController;
    function fornecedores(AValue: TList<TOrcamentoFornecedores>)
      : IOrcamentoOperacaoAlterarController;

    procedure finalizar;
  end;

implementation

{ TOrcamentoOperacaoAlterarController }

uses FacadeController;

constructor TOrcamentoOperacaoAlterarController.Create;
begin
 FConexao := TFacadeController.New.ConexaoController.conexaoAtual;
end;

function TOrcamentoOperacaoAlterarController.descricao(
  AValue: string): IOrcamentoOperacaoAlterarController;
begin
  Result := self;
  FDescricao := AValue;
end;

destructor TOrcamentoOperacaoAlterarController.Destroy;
begin

  inherited;
end;

procedure TOrcamentoOperacaoAlterarController.finalizar;
begin
  {1} gravarCapaOrcamento;

  {2} removerItensOrcamento;
  {3} removerFornecedoresOrcamento;

  {4} gravarItensOrcamento;
  {5} gravarFornecedoresOrcamento;
end;

function TOrcamentoOperacaoAlterarController.fornecedores(
  AValue: TList<TOrcamentoFornecedores>): IOrcamentoOperacaoAlterarController;
begin
   Result := Self;
   FListaFornecedores := AValue;
end;

procedure TOrcamentoOperacaoAlterarController.gravarCapaOrcamento;
begin
  FOrcamentoModel.DAO.Modify(FRegistro);

  FRegistro.DESCRICAO := FDescricao;

  FOrcamentoModel.DAO.Update(FRegistro);
end;

procedure TOrcamentoOperacaoAlterarController.gravarFornecedoresOrcamento;
var
  I: Integer;
begin
  for I := 0 to Pred(FListaFornecedores.Count) do
  begin
   FOrcamentoFornecedoresModel.Entidade(TTESTORCAMENTOFORNECEDORES.Create);

   FOrcamentoFornecedoresModel.Entidade.IDORCAMENTO  := FRegistro.CODIGO;
   FOrcamentoFornecedoresModel.Entidade.IDFORNECEDOR   := FListaFornecedores[I].codigo;

   FOrcamentoFornecedoresModel.DAO.Insert(FOrcamentoFornecedoresModel.Entidade);
  end;
end;

procedure TOrcamentoOperacaoAlterarController.gravarItensOrcamento;
var
  I: Integer;
begin
  for I := 0 to Pred(FLista.Count) do
  begin
   FOrcamentoItensModel.Entidade(TTESTORCAMENTOITENS.Create);

   FOrcamentoItensModel.Entidade.IDORCAMENTO := FRegistro.CODIGO;
   FOrcamentoItensModel.Entidade.IDPRODUTO   := FLista[I].codigo;
   FOrcamentoItensModel.Entidade.QTDE        := FLista[I].qtde;

   FOrcamentoItensModel.DAO.Insert(FOrcamentoItensModel.Entidade);
  end;
end;

function TOrcamentoOperacaoAlterarController.itens(
  AValue: TList<TOrcamentoItens>): IOrcamentoOperacaoAlterarController;
begin
  Result := Self;
  FLista := AValue;
end;

class function TOrcamentoOperacaoAlterarController.New
  : IOrcamentoOperacaoAlterarController;
begin
  Result := Self.Create;
end;

function TOrcamentoOperacaoAlterarController.orcamentoFornecedoresModel(
  AValue: IOrcamentoFornecedoresModel): IOrcamentoOperacaoAlterarController;
begin
  Result := Self;
  FOrcamentoFornecedoresModel := AValue;
end;

function TOrcamentoOperacaoAlterarController.orcamentoItensModel(
  AValue: IOrcamentoItensModel): IOrcamentoOperacaoAlterarController;
begin
  Result := self;
  FOrcamentoItensModel := AValue;
end;

function TOrcamentoOperacaoAlterarController.orcamentoModel(
  AValue: IOrcamentoModel): IOrcamentoOperacaoAlterarController;
begin
   Result := self;
   FOrcamentoModel := AValue;
end;

function TOrcamentoOperacaoAlterarController.orcamentoSelecionado(
  AValue: TTESTORCAMENTO): IOrcamentoOperacaoAlterarController;
begin
  Result := Self;
  FRegistro := AValue;
end;

procedure TOrcamentoOperacaoAlterarController.removerFornecedoresOrcamento;
begin
   FConexao
    .ExecuteDirect(
      Format('Delete from TEstOrcamentoFornecedores Where IdOrcamento = %s',
        [QuotedStr(FRegistro.CODIGO)]
        ));
end;

procedure TOrcamentoOperacaoAlterarController.removerItensOrcamento;
begin
   FConexao
    .ExecuteDirect(
      Format('Delete from TEstOrcamentoItens Where IdOrcamento = %s',
        [QuotedStr(FRegistro.CODIGO)]
        ));
end;

end.
