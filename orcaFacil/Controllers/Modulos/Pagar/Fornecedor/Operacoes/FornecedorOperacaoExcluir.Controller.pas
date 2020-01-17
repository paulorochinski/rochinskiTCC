unit FornecedorOperacaoExcluir.Controller;

interface

uses Fornecedor.Controller.Interf, Fornecedor.Model.Interf,
  TPAGFORNECEDOR.Entidade.Model;

type
  TFornecedorOperacaoExcluirController = class(TInterfacedObject,
    IFornecedorOperacaoExcluirController)
  private
    FFornecedorModel: IFornecedorModel;
    FRegistro: TTPAGFORNECEDOR;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IFornecedorOperacaoExcluirController;

    function fornecedorModel(AValue: IFornecedorModel)
      : IFornecedorOperacaoExcluirController;
    function fornecedorSelecionado(AValue: TTPAGFORNECEDOR)
      : IFornecedorOperacaoExcluirController;

    procedure finalizar;
  end;

implementation

{ TFornecedorOperacaoExcluirController }

uses FacadeView, Tipos.Controller.Interf, System.SysUtils;

constructor TFornecedorOperacaoExcluirController.Create;
begin

end;

destructor TFornecedorOperacaoExcluirController.Destroy;
begin
  inherited;
end;

procedure TFornecedorOperacaoExcluirController.finalizar;
begin
  if TFacadeView.New
       .MensagensFactory
       .exibirMensagem(tmConfirmacao)
       .mensagem(format('Deseja excluír o fonecedor %s ?', [FRegistro.NOMEFANTASIA.Value]))
       .exibir then
  begin
    FFornecedorModel.DAO.Delete(FRegistro);
  end;

end;

function TFornecedorOperacaoExcluirController.fornecedorModel
  (AValue: IFornecedorModel): IFornecedorOperacaoExcluirController;
begin
  Result := Self;
  FFornecedorModel := AValue;
end;

function TFornecedorOperacaoExcluirController.fornecedorSelecionado
  (AValue: TTPAGFORNECEDOR): IFornecedorOperacaoExcluirController;
begin
  Result := Self;
  FRegistro := AValue;
end;

class function TFornecedorOperacaoExcluirController.New
  : IFornecedorOperacaoExcluirController;
begin
  Result := Self.Create;
end;

end.
