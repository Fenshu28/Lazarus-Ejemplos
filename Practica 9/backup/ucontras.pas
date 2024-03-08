unit uContras;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TfrmContrasena }

  TfrmContrasena = class(TForm)
    btnContra: TButton;
    imgContra: TImage;
    lbAviso: TLabel;
    txtContra: TLabeledEdit;
    procedure btnContraClick(Sender: TObject);
  private

  public

  end;

var
  frmContrasena: TfrmContrasena;

implementation

{$R *.lfm}

{ TfrmContrasena }

procedure TfrmContrasena.btnContraClick(Sender: TObject);
begin
  if txtContra.Text = 'contraseña' then
  begin
       Beep();
       imgContra.Picture.LoadFromFile('./resources/oro.jpg');
       lbAviso.Caption:= 'Se abrio la boveda';

  end
  else
  begin
    lbAviso.Caption:='Contraseña incorrecta.';
    txtContra.Text:='';
    txtContra.SetFocus;
  end;
end;

end.

