unit uAscii;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnAscii: TButton;
    btnCarac: TButton;
    txtCaracIn: TLabeledEdit;
    txtDigOut: TLabeledEdit;
    txtDigIn: TLabeledEdit;
    txtCaracOut: TLabeledEdit;
    procedure btnAsciiClick(Sender: TObject);
    procedure btnCaracClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnAsciiClick(Sender: TObject);
begin
   txtDigOut.Text:=IntToStr(Ord(txtCaracIn.Text[1]));
end;

procedure TForm1.btnCaracClick(Sender: TObject);
begin
  txtCaracOut.Text:=Chr(StrToInt(txtDigIn.Text));
end;

end.

