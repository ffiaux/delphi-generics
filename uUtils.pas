unit uUtils;

interface

type
  TUtils = class
    class function IIF<T>(Condition : Boolean; T1, T2 : T) : T;
  end;

implementation

{ TUtils }

class function TUtils.IIF<T>(Condition: Boolean; T1, T2: T): T;
begin
  if Condition then
    Result := T1
  else
    Result := T2;
end;

end.
