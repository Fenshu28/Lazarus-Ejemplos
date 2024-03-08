unit uSumatorias;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TfrmSumatorias }

  TfrmSumatorias = class(TForm)
    Button1: TButton;
    txtDato: TLabeledEdit;
    lbHola: TBoundLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmSumatorias: TfrmSumatorias;

implementation

 function SumatoriaUno(n:integer) : integer;
 var
   i:integer;
 begin
   i:=1;
   SumatoriaUno:= i;
   while i <= n do
   begin
     SumatoriaUno:=SumatoriaUno+((2*i)+5);
     i++;
   end;
 end;

{$R *.lfm}

{ TfrmSumatorias }


procedure TfrmSumatorias.Button1Click(Sender: TObject);
begin

end;

procedure TfrmSumatorias.FormCreate(Sender: TObject);
begin
     txtDato.NumbersOnly:=true;
end;

end.

