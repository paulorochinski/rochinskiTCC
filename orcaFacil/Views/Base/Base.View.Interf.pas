unit Base.View.Interf;

interface

type
  IBasePesquisaView = interface
    ['{71221DC5-588B-42C9-9F1D-F2B7DF151D19}']
    procedure listarRegistros;
    function incluirRegistro: IBasePesquisaView;
    function alterarRegistro: IBasePesquisaView;
    function consultarRegistro: IBasePesquisaView;
    function excluirRegistro: IBasePesquisaView;
    function duplicarRegistro: IBasePesquisaView;
    procedure &executar;
  end;

implementation

end.
