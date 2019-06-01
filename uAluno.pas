unit uAluno;

interface

uses
  uUtils;

type
  IAluno = interface
      ['{1B2C7BE5-A63E-49C7-87C3-42B50C3F8E9B}']
      function Processar : String;
  end;

  TAlunoExatas = class(TInterfacedObject, IAluno)
    private
      FNota : Integer;
    public
      constructor Create(nota : Integer); overload;
      property Nota : Integer read FNota write FNota;
      function Processar : String;
  end;

  TAlunoHumanas = class(TInterfacedObject, IAluno)
    private
      FNota : Integer;
    public
      constructor Create(nota : Integer); overload;
      property Nota : Integer read FNota write FNota;
      function Processar : String;
  end;

implementation

{ TAlunoExatas<Double> }

constructor TAlunoExatas.Create(nota: Integer);
begin
  FNota := nota;
end;

function TAlunoExatas.Processar: String;
begin
  Result := TUtils.IIF<String>((Nota >= 7), 'Aprovado', 'Reprovado');
end;

{ TAlunoHumanas<Double> }

constructor TAlunoHumanas.Create(nota: Integer);
begin
  FNota := nota;
end;

function TAlunoHumanas.Processar: String;
begin
  Result := TUtils.IIF<String>((Nota >= 5), 'Aprovado', 'Reprovado');
end;

end.
