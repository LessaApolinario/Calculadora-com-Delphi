unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm1 = class(TForm)
    btn_0: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_6: TButton;
    btn_5: TButton;
    btn_4: TButton;
    btn_8: TButton;
    tbn_7: TButton;
    btn_9: TButton;
    btn_igual: TButton;
    btn_ponto: TButton;
    btn_somar: TButton;
    btn_subtrair: TButton;
    btn_mult: TButton;
    btn_dividir: TButton;
    caixa_botoes: TLayout;
    caixa_topo: TLayout;
    txt_num1: TEdit;
    lb_operador: TLabel;
    txt_num2: TEdit;
    procedure btn_subtrairClick(Sender: TObject);
    procedure btn_somarClick(Sender: TObject);
    procedure btn_multClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_dividirClick(Sender: TObject);
begin
  lb_operador.Text := '/';
  btn_somar.Enabled := true;
  btn_dividir.Enabled := false;
  btn_mult.Enabled := true;
  btn_subtrair.Enabled := true;
end;

procedure TForm1.btn_igualClick(Sender: TObject);
  var n1, n2 : double;
begin
  n1 := strToFloat(txt_num1.Text);
  n2 := strToFloat(txt_num2.Text);
end;

procedure TForm1.btn_multClick(Sender: TObject);
begin
  lb_operador.Text := 'x';
  btn_somar.Enabled := true;
  btn_dividir.Enabled := true;
  btn_mult.enabled := false;
  btn_subtrair.enabled := true;
end;

procedure TForm1.btn_somarClick(Sender: TObject);
begin
  lb_operador.Text := '+';
  btn_somar.Enabled := false;
  btn_dividir.Enabled := true;
  btn_mult.Enabled := true;
  btn_subtrair.Enabled := true;
end;

procedure TForm1.btn_subtrairClick(Sender: TObject);
begin
  lb_operador.Text := '-';
  btn_somar.Enabled := true;
  btn_dividir.Enabled := true;
  btn_mult.Enabled := true;
  btn_subtrair.Enabled := false;
end;

end.
