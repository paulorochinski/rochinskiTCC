unit Fornecedor.Controller.Interf;

interface

uses Fornecedor.Model.Interf, TPAGFORNECEDOR.Entidade.Model;

type
  IFornecedorOperacaoIncluirController = interface;
  IFornecedorOperacaoAlterarController = interface;
  IFornecedorOperacaoExcluirController = interface;
  IFornecedorOperacaoDuplicarController = interface;

  IFornecedorController = interface
    ['{649EF46B-3B18-4DA2-89D0-492E71BB62C2}']
    function incluir: IFornecedorOperacaoIncluirController;
    function alterar: IFornecedorOperacaoAlterarController;
    function excluir: IFornecedorOperacaoExcluirController;
    function duplicar: IFornecedorOperacaoDuplicarController;

    function localizar(AValue: string): IFornecedorController;

    function idFornecedor: string;
    function nomeFantasia: string;
    function cnpj: string;
    function ie: string;
    function telefone: string;
    function email: string;
  end;

  IFornecedorOperacaoIncluirController = interface
    ['{E18C9411-321B-49DA-8D47-2CEF6E0AB7A8}']
    function fornecedorModel(AValue: IFornecedorModel): IFornecedorOperacaoIncluirController;

    function nomeFantasia(AValue: string): IFornecedorOperacaoIncluirController;
    function cnpj(AValue: string): IFornecedorOperacaoIncluirController;
    function ie(AValue: string): IFornecedorOperacaoIncluirController;
    function telefone(AValue: string): IFornecedorOperacaoIncluirController;
    function email(AValue: string): IFornecedorOperacaoIncluirController;

    procedure finalizar;
  end;

  IFornecedorOperacaoAlterarController = interface
    ['{1EA450B1-040F-4C03-B649-FCF836AED043}']
    function fornecedorModel(AValue: IFornecedorModel): IFornecedorOperacaoAlterarController;
    function fornecedorSelecionado(AValue: TTPAGFORNECEDOR): IFornecedorOperacaoAlterarController;

    function nomeFantasia(AValue: string): IFornecedorOperacaoAlterarController;
    function cnpj(AValue: string): IFornecedorOperacaoAlterarController;
    function ie(AValue: string): IFornecedorOperacaoAlterarController;
    function telefone(AValue: string): IFornecedorOperacaoAlterarController;
    function email(AValue: string): IFornecedorOperacaoAlterarController;

    procedure finalizar;
  end;

  IFornecedorOperacaoExcluirController = interface
    ['{D3E23660-D341-4719-B987-7DD1B2652842}']
    function fornecedorModel(AValue: IFornecedorModel): IFornecedorOperacaoExcluirController;
    function fornecedorSelecionado(AValue: TTPAGFORNECEDOR): IFornecedorOperacaoExcluirController;

    procedure finalizar;
  end;

  IFornecedorOperacaoDuplicarController = interface
    ['{E56F876D-A2EC-4E5A-A31E-086D420EF83A}']
    function fornecedorModel(AValue: IFornecedorModel): IFornecedorOperacaoDuplicarController;

    function nomeFantasia(AValue: string): IFornecedorOperacaoDuplicarController;
    function cnpj(AValue: string): IFornecedorOperacaoDuplicarController;
    function ie(AValue: string): IFornecedorOperacaoDuplicarController;
    function telefone(AValue: string): IFornecedorOperacaoDuplicarController;
    function email(AValue: string): IFornecedorOperacaoDuplicarController;

    procedure finalizar;
  end;

implementation

end.
