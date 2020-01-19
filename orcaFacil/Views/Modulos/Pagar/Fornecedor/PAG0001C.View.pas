unit PAG0001C.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroBase.View, cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, dxGDIPlusClasses,
  Vcl.ExtCtrls, cxLabel, Vcl.StdCtrls, cxButtons, Base.View.Interf,
  Tipos.Controller.Interf, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Silver, cxTextEdit,
  Fornecedor.Controller.Interf;

type
  TFPAG0001CView = class(TFCadastroView, IBaseCadastroView)
    TeIdFornecedor: TcxTextEdit;
    cxLabel6: TcxLabel;
    TeNomeFantasia: TcxTextEdit;
    cxLabel2: TcxLabel;
    TeCNPJ: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    TeInscEstadual: TcxTextEdit;
    TeEmail: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel3: TcxLabel;
    TeTelefone: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
  private
    FFornecedor: IFornecedorController;
    FRegistro: string;
    procedure exibirDadosNaTela;
    procedure desabilitaCampos;

    procedure salvarDados;
  public

    class function New: IBaseCadastroView;

    function operacao(AValue: TTipoOperacao): IBaseCadastroView;
    function registroSelecionado(AValue: string): IBaseCadastroView;
    procedure &executar;
  end;

var
  FPAG0001CView: TFPAG0001CView;

implementation

{$R *.dfm}

uses FacadeController;
{ TFPAG0001CView }

procedure TFPAG0001CView.BtSalvarClick(Sender: TObject);
begin
  salvarDados;
  inherited;
end;

procedure TFPAG0001CView.desabilitaCampos;
begin
  if FOperacao in [toConsultar, toExcluir] then
  begin
   TeIdFornecedor.Enabled := False;
   TeNomeFantasia.Enabled := False;
   TeCNPJ.Enabled := False;
   TeInscEstadual.Enabled := False;
   TeTelefone.Enabled := False;
   TeEmail.Enabled := False;
  end;
end;

procedure TFPAG0001CView.executar;
begin
  exibirDadosNaTela;
  desabilitaCampos;
  exibirTituloOperacao(FOperacao);

  ShowModal;
end;

procedure TFPAG0001CView.exibirDadosNaTela;
begin
  if FOperacao = toIncluir then
    Exit;

  FFornecedor.localizar(FRegistro);

  TeIdFornecedor.Text := FFornecedor.idFornecedor;
  TeNomeFantasia.Text := FFornecedor.nomeFantasia;
  TeCNPJ.Text := FFornecedor.cnpj;
  TeInscEstadual.Text := FFornecedor.ie;
  TeTelefone.Text := FFornecedor.telefone;
  TeEmail.Text := FFornecedor.email;
end;

procedure TFPAG0001CView.FormCreate(Sender: TObject);
begin
  inherited;

  FFornecedor := TFacadeController.New
                  .modulosFacadeController
                  .pagarFactoryController
                  .fornecedor;
end;

class function TFPAG0001CView.New: IBaseCadastroView;
begin
  Result := Self.Create(nil);
end;

function TFPAG0001CView.operacao(AValue: TTipoOperacao): IBaseCadastroView;
begin
  Result := Self;
  FOperacao := AValue;
end;

function TFPAG0001CView.registroSelecionado(AValue: string): IBaseCadastroView;
begin
  Result := Self;
  FRegistro := AValue;
end;

procedure TFPAG0001CView.salvarDados;
begin
  case FOperacao of
    toIncluir:
      begin
        FFornecedor
         .incluir
          .nomeFantasia(TeNomeFantasia.Text)
          .cnpj(TeCNPJ.Text)
          .ie(TeInscEstadual.Text)
          .telefone(TeTelefone.Text)
          .email(TeEmail.Text)
         .finalizar;

      end;

    toAlterar:
      begin
        FFornecedor
         .alterar
          .nomeFantasia(TeNomeFantasia.Text)
          .cnpj(TeCNPJ.Text)
          .ie(TeInscEstadual.Text)
          .telefone(TeTelefone.Text)
          .email(TeEmail.Text)
         .finalizar;

      end;

    toExcluir:
      begin
        FFornecedor
         .excluir
          .finalizar;
      end;

    toDuplicar:
      begin
        FFornecedor
         .duplicar
          .nomeFantasia(TeNomeFantasia.Text)
          .cnpj(TeCNPJ.Text)
          .ie(TeInscEstadual.Text)
          .telefone(TeTelefone.Text)
          .email(TeEmail.Text)
         .finalizar;

      end;

  end;
end;

end.
