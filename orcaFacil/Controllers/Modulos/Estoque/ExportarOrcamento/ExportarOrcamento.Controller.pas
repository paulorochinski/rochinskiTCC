unit ExportarOrcamento.Controller;

interface

uses ExportarOrcamento.Controller.interf, Orcamento.Model.interf,
  TESTORCAMENTOITENS.Entidade.Model, Generics.Collections, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client, System.SysUtils, ConfiguracoesExportar.Model.interf;

type
  TExportarOrcamento = class(TInterfacedObject, IExportarOrcamento)
  private
    FOrcamentoModel: IOrcamentoModel;
    FConfigExportacaoModel: IConfiguracoesExportarModel;
    FArquivoNome: String;
    FArquivo: TextFile;
    FCodigoSinap: string;
    FDescricao: string;
    FQtde: string;
    FUnidMedida: string;
    FPreco: string;
    FTotal: string;

    FCodigoOrcamento: string;

    FLista: TFDQuery;


  public
    constructor Create;
    destructor Destroy; override;

    class function New: IExportarOrcamento;

    function codigoOrcamento(AValue: string): IExportarOrcamento;
    function carregarItens: IExportarOrcamento;

    procedure exportar;
  end;

implementation

{ TExportarOrcamento }

uses FacadeModel, FacadeView, Tipos.Controller.Interf;

function TExportarOrcamento.carregarItens: IExportarOrcamento;
begin
  Result := self;

  FLista :=  FOrcamentoModel
               .queryItensOrcamento(FCodigoOrcamento);
end;

function TExportarOrcamento.codigoOrcamento(AValue: string): IExportarOrcamento;
begin
  Result := Self;
  FCodigoOrcamento := AValue;
end;

constructor TExportarOrcamento.Create;
begin
  FOrcamentoModel := TFacadeModel.New.ModulosFacadeModel.
    estoqueFactoryModel.orcamento;

  FConfigExportacaoModel := TFacadeModel.New.configuracoesFactoryModel.exportar;
end;

destructor TExportarOrcamento.Destroy;
begin

  inherited;
end;

procedure TExportarOrcamento.exportar;
var
 vLinha, vCabecalho: string;
begin
  FArquivoNome :=  FConfigExportacaoModel.diretorioExportarOrcamentoCsv+'\Orcamento.csv';

  AssignFile(FArquivo, FArquivoNome);

  Rewrite(FArquivo);

  FLista.First;

  vCabecalho := 'Codigo Sinapi;Descricao;Unid Medida;Qtde;Preco Unitario;Total';
  Writeln(FArquivo, vCabecalho);

  while not(FLista.Eof) do
  begin
    FCodigoSinap := FLista.FieldByName('Codigo_sinapi').AsString;
    FDescricao   := FLista.FieldByName('Descricao').AsString;
    FUnidMedida  := FLista.FieldByName('UnidMedida').AsString;
    FQtde        := FLista.FieldByName('Qtde').AsString;
    FPreco       := '     ';
    FTotal       := '     ';

    vLinha := FCodigoSinap +';'+FDescricao+';'+FUnidMedida+';'+FQtde+';'+FPreco+';'+FTotal;

    Writeln(FArquivo, vLinha);

    FLista.Next;
  end;

  CloseFile(FArquivo);

  TFacadeView.New
    .MensagensFactory
    .exibirMensagem(tmInformacao)
    .mensagem(Format('Exportação concluída! Arquivo salvo em: %s ', [FArquivoNome]))
    .exibir;
end;

class function TExportarOrcamento.New: IExportarOrcamento;
begin
  Result := Self.Create;
end;

end.
