unit TEntry;

interface

type
  TEntry<TKey, TValue> = class
   private
     FKey: TKey;
     FValue: TValue;
   public
     constructor Create(Key: TKey; Value: TValue); overload;
     function GetValue: TValue;
     procedure SetKeyValue(Key: TKey; Value: TValue);
     procedure SetValue(Value: TValue);
     property Value: TValue read FValue write FValue;
     property Key: TKey read FKey write FKey;
   end;

implementation

{ TEntry<TKey, TValue> }

constructor TEntry<TKey, TValue>.Create(Key: TKey; Value: TValue);
begin
  FKey := Key;
  FValue := Value;
end;

function TEntry<TKey, TValue>.GetValue: TValue;
begin
  Result := FValue;
end;

procedure TEntry<TKey, TValue>.SetKeyValue(Key: TKey; Value: TValue);
begin
  FKey := Key;
  FValue := Value;
end;

procedure TEntry<TKey, TValue>.SetValue(Value: TValue);
begin
  FValue := Value;
end;

end.
