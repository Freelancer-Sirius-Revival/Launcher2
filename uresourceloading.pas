unit UResourceLoading;

{$mode ObjFPC}{$H+}

interface

uses
  Classes;

function LoadResource(const Name: String): TStream;

implementation

uses
  {$IFDEF WINDOWS}
  windows,
  {$ENDIF}
  LCLIntf;

function LoadResource(const Name: String): TStream;
begin
  Result := TResourceStream.Create(HInstance, Name, RT_RCDATA);
end;

end.

