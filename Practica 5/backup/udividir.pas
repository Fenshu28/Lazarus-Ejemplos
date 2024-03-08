unit uDividir;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TfrmDivide }

  TfrmDivide = class(TForm)
    bDividir: TButton;
    eDividendo: TLabeledEdit;
    eDivisor: TLabeledEdit;
    eResultado: TLabeledEdit;
    procedure bDividirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmDivide: TfrmDivide;

implementation

{$R *.lfm}

{ TfrmDivide }

procedure TfrmDivide.FormCreate(Sender: TObject);
begin
  eDividendo.NumbersOnly:=true;
    eDivisor.NumbersOnly:=true;
end;

procedure TfrmDivide.bDividirClick(Sender: TObject);
var
  num1,num2,res:real;
begin
    num1:=StrToFloat(eDividendo.Text);
    num2:=StrToFloat(eDivisor.Text);

    if num2<>0 then
    begin
      res:=num1/num2;
      eResultado.Text:=FloatToStr(res);
    end
    else eResultado.Text:='ERROR';
end;


