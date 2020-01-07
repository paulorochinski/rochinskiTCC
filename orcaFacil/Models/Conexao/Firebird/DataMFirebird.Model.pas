unit DataMFirebird.Model;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client, Conexao.Model.Interf, ormbr.Factory.Interfaces,
  ConfiguracoesConexao.Model.Interf, ormbr.Factory.FireDAC,
  ormbr.dml.Generator.Firebird;

type
  TFDataMFirebird = class(TDataModule, IConexaoModel)
    FBancoDeDados: TFDConnection;
    DriverLink: TFDPhysFBDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FConfiguracoes: IConfiguracoesConexaoModel;
    FConexao: IDBConnection;

    procedure conectaNoBancoDeDados;
  public
    { Public declarations }

    class function New: IConexaoModel;

    function Conexao: IDBConnection;
  end;

var
  FDataMFirebird: TFDataMFirebird;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FacadeModel;
{$R *.dfm}
{ TFDataMFirebird }

procedure TFDataMFirebird.conectaNoBancoDeDados;
begin
  FConfiguracoes := TFacadeModel.New.configuracoesFactoryModel.Conexao;

  try
    FBancoDeDados.Connected := false;
    FBancoDeDados.LoginPrompt := false;
    FBancoDeDados.DriverName := FConfiguracoes.driver;
    FBancoDeDados.Params.Database := FConfiguracoes.bancoDeDados;
    FBancoDeDados.Params.Add('server=' + FConfiguracoes.servidor);
    FBancoDeDados.Params.Add('port=' + FConfiguracoes.porta);
    FBancoDeDados.Params.Add('username=' + FConfiguracoes.usuario);
    FBancoDeDados.Params.Add('password=' + FConfiguracoes.senha);
    FBancoDeDados.Connected := true;

    DriverLink.VendorLib := FConfiguracoes.biblioteca;
  except
    on E: Exception do
      raise Exception.Create(E.Message);
  end;
end;

function TFDataMFirebird.Conexao: IDBConnection;
begin
  Result := FConexao;
end;

procedure TFDataMFirebird.DataModuleCreate(Sender: TObject);
begin
  conectaNoBancoDeDados;

  FConexao := TFactoryFireDAC.Create(FBancoDeDados, dnFirebird);
end;

class function TFDataMFirebird.New: IConexaoModel;
begin
  Result := Self.Create(nil);
end;

end.
