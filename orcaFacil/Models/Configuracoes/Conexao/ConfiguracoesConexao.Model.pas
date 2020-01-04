unit ConfiguracoesConexao.Model;

interface

uses ConfiguracoesConexao.Model.interf, IniFiles, System.SysUtils;

type
  TConfiguracoesConexaoModel = class(TInterfacedObject,
    IConfiguracoesConexaoModel)
  private
    FFileName: string;
    FFileIni: TIniFile;

    procedure verificarParametrosDeConexao;
    procedure gravarParametrosPadraoDeConexao;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IConfiguracoesConexaoModel;

    function tipoBanco: integer;
    function driver: string;
    function bancoDeDados: string;
    function servidor: string;
    function porta: string;
    function usuario: string;
    function senha: string;
    function biblioteca: string;
  end;

implementation

{ TConfiguracoesConexaoModel }

function TConfiguracoesConexaoModel.bancoDeDados: string;
begin
  Result := FFileIni.ReadString('Dados', 'BancoDeDados', '');
end;

function TConfiguracoesConexaoModel.biblioteca: string;
begin
  Result := FFileIni.ReadString('Dados', 'Biblioteca', '');
end;

constructor TConfiguracoesConexaoModel.Create;
begin
  FFileName := ChangeFileExt(ParamStr(0), '.ini');
  FFileIni := TIniFile.Create(FFileName);

  verificarParametrosDeConexao;
end;

destructor TConfiguracoesConexaoModel.Destroy;
begin
  FFileName := '';
  FFileIni.Free;
  inherited;
end;

function TConfiguracoesConexaoModel.driver: string;
begin
  Result := FFileIni.ReadString('Dados', 'Driver', 'FB');
end;

procedure TConfiguracoesConexaoModel.gravarParametrosPadraoDeConexao;
begin
  FFileIni.WriteInteger('Dados', 'TipoBanco', 0);

  FFileIni.WriteString('Dados', 'BancoDeDados', 'c:\tcc\dados\orcafacil.fdb');
  FFileIni.WriteString('Dados', 'Driver', 'FB');
  FFileIni.WriteString('Dados', 'Porta', '3050');
  FFileIni.WriteString('Dados', 'Servidor', 'localhost');
  FFileIni.WriteString('Dados', 'Usuario', 'SYSDBA');
  FFileIni.WriteString('Dados', 'Senha', 'masterkey');
  FFileIni.WriteString('Dados', 'Biblioteca', 'fbclient.dll');
end;

class function TConfiguracoesConexaoModel.New: IConfiguracoesConexaoModel;
begin
  Result := Self.Create;
end;

function TConfiguracoesConexaoModel.porta: string;
begin
  Result := FFileIni.ReadString('Dados', 'Porta', '');
end;

function TConfiguracoesConexaoModel.senha: string;
begin
  Result := FFileIni.ReadString('Dados', 'Senha', '');
end;

function TConfiguracoesConexaoModel.servidor: string;
begin
  Result := FFileIni.ReadString('Dados', 'Servidor', '');
end;

function TConfiguracoesConexaoModel.tipoBanco: integer;
begin
  Result := FFileIni.ReadInteger('Dados', 'TipoBanco', 0);
end;

function TConfiguracoesConexaoModel.usuario: string;
begin
  Result := FFileIni.ReadString('Dados', 'Usuario', '');
end;

procedure TConfiguracoesConexaoModel.verificarParametrosDeConexao;
begin
  if not(FileExists(FFileName)) then
    gravarParametrosPadraoDeConexao;

  if FileExists(FFileName) then
    if (FFileIni.ReadString('Dados', 'BancoDeDados', '') = EmptyStr) then
      gravarParametrosPadraoDeConexao;
end;

end.
