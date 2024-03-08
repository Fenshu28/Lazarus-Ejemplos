unit uComparar;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TfrmCompara }

  TfrmCompara = class(TForm)
    bCompara: TButton;
    eNum1: TLabeledEdit;
    eNum2: TLabeledEdit;
    eResultado: TLabeledEdit;
    TrayIcon1: TTrayIcon;
    procedure bComparaClick(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
  private

  public

  end;

var
  frmCompara: TfrmCompara;

implementation

{$R *.lfm}

{ TfrmCompara }

procedure TfrmCompara.bComparaClick(Sender: TObject);
var
  A,B:Integer;
begin
     A := StrToInt(eNum1.Text);
     B := StrToInt(eNum2.Text);
     if (A=B) then
          eResultado.Text:='Los valores son iguales.'
     else if(A > B) then
          eResultado.Text:='1 es mayor que 2.'
     else
         eResultado.Text:='2 es mayor que 1.';

end;

procedure TfrmCompara.TrayIcon1Click(Sender: TObject);
begin

end;

end.

