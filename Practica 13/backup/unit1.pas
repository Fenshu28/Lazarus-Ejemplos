unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnPos: TButton;
    btnCarac: TButton;
    txtResult2: TEdit;
    txtResult: TEdit;
    txtCadena: TLabeledEdit;
    txtCarac: TLabeledEdit;
    txtPos: TLabeledEdit;
    procedure btnCaracClick(Sender: TObject);
    procedure btnPosClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnPosClick(Sender: TObject);
var
  cad: string;
  c: Char;
  i,tam,pos: Integer;
begin
  cad := txtCadena.Text;
  c := txtCarac.Text[1];
  tam := Length(txtCadena.Text);

  for i:=0 to tam do
    if(c = cad[i]) then
    begin
      pos:=i;
      txtResult.Text:=IntToStr(pos);
      break;
    end
    else
      txtResult.Text:='Caracter no encontrado.';

end;

procedure TForm1.btnCaracClick(Sender: TObject);
var
  cad: string;
  tam,pos: Integer;
begin
  cad := txtCadena.Text;
  pos := StrToInt(txtPos.Text);
  tam := Length(txtCadena.Text);

  txtResult2.Text:=cad[pos];

end;

end.

