unit uAluno;

interface

uses
  uProcessador;

type
  IAluno<Double, IProcessadorAluno> = interface
    ['{F558ECEA-EEC6-45CA-AB04-435116E5434F}']
    function Situacao : String;
  end;

  TAluno<Double, IProcessadorAluno> = class(TInterfacedObject, IAluno<Double, IProcessadorAluno>)
    private
      FProcessador : IProcessadorAluno;
      FNota : Double;
    public
      property Processador : IProcessadorAluno read FProcessador write FProcessador;
      property Nota : Double read FNota write FNota;
      function Situacao : String;
  end;

implementation

{ TAluno<Double, IProcessadorAluno> }

function TAluno<Double, IProcessadorAluno>.Situacao: String;
begin
  Processador.Processar(FNota);
end;

end.
