unit OrcamentoOperacaoExcluir.Controller;

interface

uses Orcamento.Controller.interf, Orcamento.Model.interf,
  OrcamentoItens.Model.interf, TESTORCAMENTOITENS.Entidade.Model, Generics.Collections,
  TESTORCAMENTO.Entidade.Model, System.SysUtils, FacadeController, ormbr.factory.interfaces;

type
  TOrcamentoOperacaoExcluirController = class(TInterfacedObject,
    IOrcamentoOperacaoExcluirController)
  private
    FConexao: IDBConnection;
    FOrcamentoModel: IOrcamentoModel;
    FOrcamentoItensModel: IOrcamentoItensModel;

    FRegistro: TTESTORCAMENTO;

    procedure removerOrcamento;
    procedure removerItensOrcamento;
    procedure removerFornecedoresOrcamento;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IOrcamentoOperacaoExcluirController;

    function orcamentoModel(AValue: IOrcamentoModel)
      : IOrcamentoOperacaoExcluirController;
    function orcamentoItensModel(AValue: IOrcamentoItensModel)
      : IOrcamentoOperacaoExcluirController;

    function orcamentoSelecionado(AValue: TTESTORCAMENTO)
      : IOrcamentoOperacaoExcluirController;

    procedure finalizar;
  end;

implementation

{ TOrcamentoOperacaoExcluirController }

uses FacadeView, Tipos.Controller.Interf;

constructor TOrcamentoOperacaoExcluirController.Create;
begin
 FConexao := TFacadeController.New.ConexaoController.conexaoAtual;
end;

destructor TOrcamentoOperacaoExcluirController.Destroy;
begin

  inherited;
end;

procedure TOrcamentoOperacaoExcluirController.finalizar;
begin
  if TFacadeView.New
      .MensagensFactory
      .exibirMensagem(tmConfirmacao)
      .mensagem(Format('Deseja excluir o orçamento Nº: %s ?', [FRegistro.IDORCAMENTO.ToString]))
      .exibir then
  begin
    {1} removerFornecedoresOrcamento;
    {2} removerItensOrcamento;
    {3} removerOrcamento;
  end;
end;

class function TOrcamentoOperacaoExcluirController.New
  : IOrcamentoOperacaoExcluirController;
begin
  Result := Self.Create;
end;

function TOrcamentoOperacaoExcluirController.orcamentoItensModel
  (AValue: IOrcamentoItensModel): IOrcamentoOperacaoExcluirController;
begin
  Result := Self;
  FOrcamentoItensModel := AValue;
end;

function TOrcamentoOperacaoExcluirController.orcamentoModel
  (AValue: IOrcamentoModel): IOrcamentoOperacaoExcluirController;
begin
  Result := Self;
  FOrcamentoModel := AValue;
end;

function TOrcamentoOperacaoExcluirController.orcamentoSelecionado
  (AValue: TTESTORCAMENTO): IOrcamentoOperacaoExcluirController;
begin
   Result := Self;
   FRegistro := AValue;
end;

procedure TOrcamentoOperacaoExcluirController.removerFornecedoresOrcamento;
begin
   FConexao
    .ExecuteDirect(
      Format('Delete from TEstOrcamentoFornecedores Where IdOrcamento = %s',
        [QuotedStr(FRegistro.CODIGO)]
        ));
end;

procedure TOrcamentoOperacaoExcluirController.removerItensOrcamento;
begin
   FConexao
    .ExecuteDirect(
      Format('Delete from TEstOrcamentoItens Where IdOrcamento = %s',
        [QuotedStr(FRegistro.CODIGO)]
        ));
end;

procedure TOrcamentoOperacaoExcluirController.removerOrcamento;
begin
    FOrcamentoModel.DAO.Delete(FRegistro);
end;

end.
