unit Cotacao.Controller.interf;

interface

uses TESTCOTACAO.Entidade.Model, Cotacao.Model.interf;

type
  ICotacaoController = interface
    ['{E8519005-790B-4147-B5DC-8D7246C75D46}']
    function localizarPeloIdOrcamento(AValue: string): ICotacaoController;

    function cotacaoSelecionada: TTESTCOTACAO;
  end;

  ICotacaoOperacaoSalvarController = interface
    ['{76112C92-C83C-43FB-9CEB-36B8F235540C}']
    function cotacaoModel(AValue: ICotacaoModel)
      : ICotacaoOperacaoSalvarController;
    function cotacaoSelecionada(AValue: TTESTCOTACAO)
      : ICotacaoOperacaoSalvarController;
  end;

  ICotacaoOperacaoExcluirController = interface
    ['{9A260967-8802-4993-8B13-314AEB84A8FD}']
  end;

implementation

end.
