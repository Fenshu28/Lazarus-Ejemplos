unit uFuncionCadena;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnConcat: TButton;
    btnCopiar: TButton;
    btnLong: TButton;
    btnCompara: TButton;
    btnMinMay: TButton;
    btnMayMin: TButton;
    txtCad1: TLabeledEdit;
    txtCad2: TLabeledEdit;
    txtCad3: TLabeledEdit;
    procedure btnConcatClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnConcatClick(Sender: TObject);
begin
  txtCad3.Text:=Concat(txtCad1.Text,txtCad2.Text);
end;

end.

