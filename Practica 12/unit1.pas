unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

const
  num=5;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnJuga: TButton;
    btnSalir: TButton;
    txtNumJ: TLabeledEdit;
    procedure btnJugaClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  jugador : array[0..num] of string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnJugaClick(Sender: TObject);
var
  i : Integer;
begin
  jugador[0] := 'Luis';
  jugador[1] := 'Jose';
  jugador[2] := 'Arturo';
  jugador[3] := 'Antonio';
  jugador[4] := 'Juan';
  jugador[5] := 'Julio';

  i := StrToInt(txtNumJ.Text);
  ShowMessage(jugador[i]+' esta en la primera base.');

end;

end.

