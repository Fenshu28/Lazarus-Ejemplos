unit uSumaNumeros;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TfrmSumatoria }

  TfrmSumatoria = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    eResultado: TLabeledEdit;
    procedure Button1Click(Sender: TObject);

  private

  public

  end;

var
  frmSumatoria: TfrmSumatoria;

implementation

{$R *.lfm}

{ TfrmSumatoria }



procedure TfrmSumatoria.Button1Click(Sender: TObject);
var
suma,i:Integer;
begin
suma := 0;
for i:=1 to 10 do
begin
  suma:=suma+i;
end;
eResultado.Text:=IntToStr(suma);

end;

end.

