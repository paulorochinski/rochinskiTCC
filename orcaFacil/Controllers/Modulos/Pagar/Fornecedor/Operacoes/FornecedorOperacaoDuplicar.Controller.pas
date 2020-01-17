unit FornecedorOperacaoDuplicar.Controller;

interface

uses Fornecedor.Controller.Interf, Fornecedor.Model.Interf, TPAGFORNECEDOR.Entidade.Model;

type
  TFornecedorOperacaoDuplicarController = class(TInterfacedObject,
    IFornecedorOperacaoDuplicarController)
  private
    FFornecedorModel: IFornecedorModel;

    FNomeFantasia: string;
    FCNPJ: string;
    FIE: string;
    FTelefone: string;
    FEmail: string;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IFornecedorOperacaoDuplicarController;

    function fornecedorModel(AValue: IFornecedorModel)
      : IFornecedorOperacaoDuplicarController;

    function nomeFantasia(AValue: string): IFornecedorOperacaoDuplicarController;
    function cnpj(AValue: string): IFornecedorOperacaoDuplicarController;
    function ie(AValue: string): IFornecedorOperacaoDuplicarController;
    function telefone(AValue: string): IFornecedorOperacaoDuplicarController;
    function email(AValue: string): IFornecedorOperacaoDuplicarController;

    procedure finalizar;
  end;

implementation

{ TFornecedorOperacaoDuplicarController }


function TFornecedorOperacaoDuplicarController.cnpj(
  AValue: string): IFornecedorOperacaoDuplicarController;
begin
  Result := Self;
  FCNPJ := AValue;
end;

constructor TFornecedorOperacaoDuplicarController.Create;
begin

end;

destructor TFornecedorOperacaoDuplicarController.Destroy;
begin

  inherited;
end;

function TFornecedorOperacaoDuplicarController.email(
  AValue: string): IFornecedorOperacaoDuplicarController;
begin
  Result := Self;
  FEmail := AValue;
end;

procedure TFornecedorOperacaoDuplicarController.finalizar;
begin
  FFornecedorModel.Entidade(TTPAGFORNECEDOR.Create);

  FFornecedorModel.Entidade.NOMEFANTASIA := FNomeFantasia;
  FFornecedorModel.Entidade.CNPJ := FCNPJ;
  FFornecedorModel.Entidade.IE := FIE;
  FFornecedorModel.Entidade.TELEFONE := FTelefone;
  FFornecedorModel.Entidade.EMAIL := FEmail;

  FFornecedorModel.DAO.Insert(FFornecedorModel.Entidade);
end;

function TFornecedorOperacaoDuplicarController.fornecedorModel
  (AValue: IFornecedorModel): IFornecedorOperacaoDuplicarController;
begin
  Result := Self;
  FFornecedorModel := AValue;
end;

function TFornecedorOperacaoDuplicarController.ie(
  AValue: string): IFornecedorOperacaoDuplicarController;
begin
 Result := Self;
 FIE := AValue;
end;

class function TFornecedorOperacaoDuplicarController.New
  : IFornecedorOperacaoDuplicarController;
begin
  Result := Self.Create;
end;

function TFornecedorOperacaoDuplicarController.nomeFantasia(
  AValue: string): IFornecedorOperacaoDuplicarController;
begin
  Result := Self;
  FNomeFantasia := AValue;
end;

function TFornecedorOperacaoDuplicarController.telefone(
  AValue: string): IFornecedorOperacaoDuplicarController;
begin
  Result := Self;
  FTelefone := AValue;
end;

end.
