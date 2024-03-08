unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmPractica }

  TfrmPractica = class(TForm)
    bSalir: TButton;
    procedure bSalirClick(Sender: TObject);
  private

  public

  end;

var
  frmPractica: TfrmPractica;

implementation

{$R *.lfm}

{ TfrmPractica }

procedure TfrmPractica.bSalirClick(Sender: TObject);
begin
  close;
end;

end.

