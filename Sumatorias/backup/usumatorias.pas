unit uSumatorias;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TfrmSumatorias }

  TfrmSumatorias = class(TForm)
    btnCalc: TButton;
    cmbOpcion: TComboBox;
    lbResult: TLabel;
    txtDato: TLabeledEdit;
    procedure btnCalcClick(Sender: TObject);
    procedure cmbOpcionChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmSumatorias: TfrmSumatorias;

implementation

{$R *.lfm}

{ TfrmSumatorias }

function sumatoria(i,t:integer) : double;
begin
   sumatoria:=0;
  case t of
    0: sumatoria:=sumatoria+((2*i)+5);
    1: sumatoria:=sumatoria+((4*sqr(i))+3);
    2: sumatoria:=sumatoria+(((3*sqr(i))-(2*i)+8)div(sqr(i)-16));
    3: sumatoria:=sumatoria+(sqrt(sqr(i)-4));
  else sumatoria:=-1;
  end;
end;

function Calcular(n,t:integer) : double;
var
  i:integer;
begin
  i:=1;
  Calcular:=0;
  while i <= n do
  begin
    Calcular:=Calcular+sumatoria(i,t);
    i:=i+1;
  end;
end;

procedure TfrmSumatorias.btnCalcClick(Sender: TObject);
begin
   lbResult.Caption:=Concat('Resultado:',#13,FloatToStr(Calcular(StrToFloat(txtDato.Text),cmbOpcion.ItemIndex)));
end;

procedure TfrmSumatorias.cmbOpcionChange(Sender: TObject);
begin

end;

procedure TfrmSumatorias.FormCreate(Sender: TObject);
begin
     txtDato.NumbersOnly:=true;
end;

end.

