unit Ventana_Feliz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TfrmFeliz }

  TfrmFeliz = class(TForm)
    bFeliz: TButton;
    bSalir: TButton;
    imgHola: TImage;
    lbFeliz: TLabel;
    procedure bFelizClick(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
  private

  public

  end;

var
  frmFeliz: TfrmFeliz;

implementation

{$R *.lfm}

{ TfrmFeliz }

procedure TfrmFeliz.bFelizClick(Sender: TObject);
begin
   imgHola.Picture.LoadFromFile('C:\Users\UNSIS\Pictures\FondoRF.png');
   lbFeliz.Caption:= 'Bienvenidooos';
end;

procedure TfrmFeliz.bSalirClick(Sender: TObject);
begin
  close;
end;

end.

