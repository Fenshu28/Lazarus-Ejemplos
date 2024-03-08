unit uEtiquetas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmEtiqueta }

  TfrmEtiqueta = class(TForm)
    lblEtiqueta: TLabel;
    lblEtiqueta2: TLabel;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmEtiqueta: TfrmEtiqueta;

implementation

{$R *.lfm}

{ TfrmEtiqueta }

procedure TfrmEtiqueta.FormCreate(Sender: TObject);
begin

end;

end.

