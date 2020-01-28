unit ExportarOrcamento.Controller.interf;

interface

type
  IExportarOrcamento = interface
    ['{175B18FB-475C-46AC-A35E-547065CFB682}']
    function codigoOrcamento(AValue: string): IExportarOrcamento;
    function carregarItens: IExportarOrcamento;
    procedure exportar;
  end;

implementation

end.
