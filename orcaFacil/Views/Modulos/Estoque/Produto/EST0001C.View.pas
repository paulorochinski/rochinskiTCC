unit EST0001C.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroBase.View, cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, cxLabel,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Base.View.Interf,
  Tipos.Controller.Interf, Produto.Controller.Interf, cxTextEdit, cxMemo, dxGDIPlusClasses;

type
  TFEST0001CView = class(TFCadastroView, IBaseCadastroView)
    TeCodigoSinapi: TcxTextEdit;
    TeUnidMedida: TcxTextEdit;
    TePrMedioSinapi: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    TeIdProduto: TcxTextEdit;
    TeOrigemPreco: TcxTextEdit;
    cxLabel7: TcxLabel;
    TeDescricao: TcxMemo;
    cxLabel8: TcxLabel;
    TePrecoMedio: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure TeCodigoSinapiKeyPress(Sender: TObject; var Key: Char);
  private
    FProduto: IProdutoController;
    FRegistro: string;
  public
    { Public declarations }
    class function New: IBaseCadastroView;

    function operacao(AValue: TTipoOperacao): IBaseCadastroView;
    function registroSelecionado(AValue: string): IBaseCadastroView;
    procedure salvarDados;
    procedure exibirDadosNaTela;
    procedure desabilitaCampos;
    procedure &executar;
  end;

var
  FEST0001CView: TFEST0001CView;

implementation

{$R *.dfm}

uses FacadeController;
{ TFEST0001CView }

procedure TFEST0001CView.BtSalvarClick(Sender: TObject);
begin
  salvarDados;
  inherited;
end;

procedure TFEST0001CView.desabilitaCampos;
begin
  if FOperacao in [toConsultar, toExcluir] then
  begin
    TeCodigoSinapi.Enabled := False;
    TeDescricao.Enabled := False;
    TeUnidMedida.Enabled := False;
    TeOrigemPreco.Enabled := False;
    TePrecoMedio.Enabled := False;
    TePrMedioSinapi.Enabled := False;
  end;
end;

procedure TFEST0001CView.executar;
begin
  exibirDadosNaTela;
  desabilitaCampos;
  exibirTituloOperacao(FOperacao);

  ShowModal;
end;

procedure TFEST0001CView.exibirDadosNaTela;
begin
  if FOperacao = toIncluir then
    Exit;

  FProduto.localizar(FRegistro);

  TeIdProduto.Text := FProduto.idProduto;
  TeCodigoSinapi.Text := FProduto.codigoSinapi;
  TeDescricao.Text := FProduto.descricao;
  TeUnidMedida.Text := FProduto.unidMedida;
  TeOrigemPreco.Text := FProduto.origemPreco;
  TePrecoMedio.Text := FProduto.prMedio;
  TePrMedioSinapi.Text := FProduto.prMedioSinapi;
end;

procedure TFEST0001CView.FormCreate(Sender: TObject);
begin
  inherited;
  FProduto := TFacadeController.New.ModulosFacadeController.
    EstoqueFactoryController.Produto
end;

class function TFEST0001CView.New: IBaseCadastroView;
begin
  Result := Self.Create(nil);
end;

function TFEST0001CView.operacao(AValue: TTipoOperacao): IBaseCadastroView;
begin
  Result := Self;
  FOperacao := AValue;
end;

function TFEST0001CView.registroSelecionado(AValue: string): IBaseCadastroView;
begin
  Result := Self;
  FRegistro := AValue;
end;

procedure TFEST0001CView.salvarDados;
begin
  case FOperacao of
    toIncluir:
      begin
        FProduto
         .Incluir
          .codigoSinapi(TeCodigoSinapi.Text)
          .descricao(TeDescricao.Text)
          .unidMedida(TeUnidMedida.Text)
          .origemPreco(TeOrigemPreco.Text)
          .prMedio(TePrecoMedio.Text)
          .prMedioSinapi(TePrMedioSinapi.Text)
         .&executar;

      end;

    toAlterar:
      begin
        FProduto
         .Alterar
          .codigoSinapi(TeCodigoSinapi.Text)
          .descricao(TeDescricao.Text)
          .unidMedida(TeUnidMedida.Text)
          .origemPreco(TeOrigemPreco.Text)
          .prMedio(TePrecoMedio.Text)
          .prMedioSinapi(TePrMedioSinapi.Text)
         .&executar;

      end;

    toConsultar:
      ;

    toExcluir:
      begin
        FProduto
         .Excluir
          .&executar;
      end;

    toDuplicar:
      begin
        FProduto
         .Duplicar
          .codigoSinapi(TeCodigoSinapi.Text)
          .descricao(TeDescricao.Text)
          .unidMedida(TeUnidMedida.Text)
          .origemPreco(TeOrigemPreco.Text)
          .prMedio(TePrecoMedio.Text)
          .prMedioSinapi(TePrMedioSinapi.Text)
         .&executar;

      end;

  end;
end;

procedure TFEST0001CView.TeCodigoSinapiKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if not (CharInSet(Key,['0'..'9', #8])) then key := #0;
end;

end.
