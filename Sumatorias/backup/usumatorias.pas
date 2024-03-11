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
    lbSumat: TLabel;
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

function sumatoria(n:integer) : integer;
var
  t:integer;
begin
   sumatoria:=0;

  case t of
    1: sumatoria:=sumatoria+((2*n)+5);
    2: sumatoria:=sumatoria+(1);
    3: sumatoria:=sumatoria+(1);
    4: sumatoria:=sumatoria+(2);
  else sumatoria:=-1;
  end;
end;

function Calcular(n:integer) : integer;
var
  i:integer;
begin
  i:=1;
  Calcular:=0;
  while i <= n do
  begin
    Calcular:=Calcular+sumatoria(i);
    i:=i+1;
  end;
end;

procedure TfrmSumatorias.btnCalcClick(Sender: TObject);
begin

end;

procedure TfrmSumatorias.cmbOpcionChange(Sender: TObject);
begin

end;

procedure TfrmSumatorias.FormCreate(Sender: TObject);
begin
     txtDato.NumbersOnly:=true;
end;

end.

