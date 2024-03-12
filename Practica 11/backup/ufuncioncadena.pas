unit uFuncionCadena;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TfrmFunciones }

  TfrmFunciones = class(TForm)
    btnConcat: TButton;
    btnCopiar: TButton;
    btnLong: TButton;
    btnCompara: TButton;
    btnMinMay: TButton;
    btnMayMin: TButton;
    txtCad1: TLabeledEdit;
    txtCad2: TLabeledEdit;
    txtCad3: TLabeledEdit;
    procedure btnComparaClick(Sender: TObject);
    procedure btnConcatClick(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnLongClick(Sender: TObject);
    procedure btnMayMinClick(Sender: TObject);
    procedure btnMinMayClick(Sender: TObject);
  private

  public

  end;

var
  frmFunciones: TfrmFunciones;

implementation

{$R *.lfm}

{ TfrmFunciones }

procedure TfrmFunciones.btnConcatClick(Sender: TObject);
begin
  txtCad3.Text:=Concat(txtCad1.Text,txtCad2.Text);
end;

procedure TfrmFunciones.btnComparaClick(Sender: TObject);
begin
  if(txtCad1.Text = txtCad2.Text) then
  begin
    txtCad3.Text:='Iguales';
  end;
end;

procedure TfrmFunciones.btnCopiarClick(Sender: TObject);
begin
  txtCad3.Text:=Copy(txtCad1.Text,3,4);
end;

procedure TfrmFunciones.btnLongClick(Sender: TObject);
begin
  txtCad3.Text:=IntToStr(Length(txtCad1.Text));
end;

procedure TfrmFunciones.btnMayMinClick(Sender: TObject);
begin
  txtCad3.Text:=LowerCase(txtCad1.Text);
end;

procedure TfrmFunciones.btnMinMayClick(Sender: TObject);
begin
    txtCad3.Text:=UpperCase(txtCad1.Text);
end;

end.

