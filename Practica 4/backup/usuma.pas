unit uSuma;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmSuma }

  TfrmSuma = class(TForm)
    bSuma: TButton;
    bSalir: TButton;
    eRes: TEdit;
    eNum1: TEdit;
    eNum2: TEdit;
    lblResultado: TLabel;
    lblNum1: TLabel;
    Label2: TLabel;
    lblNum2: TLabel;
    procedure bSalirClick(Sender: TObject);
    procedure bSumaClick(Sender: TObject);
  private

  public

  end;

var
  frmSuma: TfrmSuma;

implementation

{$R *.lfm}

{ TfrmSuma }

procedure TfrmSuma.bSumaClick(Sender: TObject);
var
  num1,num2,res:Integer;
begin
     num1 := StrToInt(eNum1.Text);
     num2 := StrToInt(eNum2.Text);
     res:=0;

     res = num1 + num2;

     eRes.Text:=IntToStr(res);
end;

procedure TfrmSuma.bSalirClick(Sender: TObject);
begin
  close;
end;

end.

