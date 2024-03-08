unit uCalifiicacion;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TfrmCalifica }

  TfrmCalifica = class(TForm)
    bCalificacion: TButton;
    eNombre: TLabeledEdit;
    eCalificacion: TLabeledEdit;
    lbNombre: TLabel;
    lbLetrero: TLabel;
    procedure bCalificacionClick(Sender: TObject);
  private

  public

  end;

var
  frmCalifica: TfrmCalifica;

implementation

{$R *.lfm}

{ TfrmCalifica }

procedure TfrmCalifica.bCalificacionClick(Sender: TObject);
var
  car:string;
begin
     car := eCalificacion.Text
     lbNombre.Caption :=eNombre.Text;
     case car of
       'A': begin
         lbLetrero.Caption:='Perfecto';
       end;
       'B': begin
         lbLetrero.Caption:='Estupendo';
       end;
       'C': begin
         lbLetrero.Caption:='Estudia más';
       end;
       'D': begin
         lbLetrero.Caption:='Obtén ayuda';
       end;
         'E','F': begin
         lbLetrero.Caption:='Vuelve a estudiar';
       end;
     else begin
             lbLetrero.Caption:='Error de calificación';
     end;
     end;
end;

end.

