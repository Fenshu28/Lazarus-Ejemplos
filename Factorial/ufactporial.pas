unit uFactporial;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TfrmFactorial }

  TfrmFactorial = class(TForm)
    btnCalcular: TButton;
    lbResul: TLabel;
    txtDato: TLabeledEdit;
    procedure btnCalcularClick(Sender: TObject);
  private

  public

  end;

var
  frmFactorial: TfrmFactorial;

implementation

function factorial(numero:integer):integer;
begin
if numero = 1 then
factorial := numero
else
factorial := numero * factorial(numero-1)
end;

{$R *.lfm}

{ TfrmFactorial }

procedure TfrmFactorial.btnCalcularClick(Sender: TObject);
begin
  lbResul.Caption:=Concat('Resultado:',#13,txtDato.Text,'! = ',IntToStr(factorial(StrToInt(txtDato.Text))));
end;

end.

