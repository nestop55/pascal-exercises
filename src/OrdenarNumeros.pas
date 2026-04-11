program OrdenarNumeros;

uses crt;

var a,b,c,d, aux: Integer;

begin
clrscr;

writeln('Digite cuatro numeros enteros: ');
read(a,b,c,d);
//input: 8 6 0 -3

if a > b then begin; aux := a; a := b; b := aux; end;
if c > d then begin; aux := c; c := d; d := aux; end;
if a > c then begin; aux := a; a := c; c := aux; end;
if b > d then begin; aux := b; b := d; d := aux; end;
if b > c then begin; aux := b; b := c; c := aux; end;
//output: -3 0 6 8

writeln('Orden creciente: ', a , ' ', b , ' ' , c , ' ', d );

if a < b then begin; aux := a; a := b; b := aux; end;
if c < d then begin; aux := c; c := d; d := aux; end;
if a < c then begin; aux := a; a := c; c := aux; end;
if b < d then begin; aux := b; b := d; d := aux; end;
if b < c then begin; aux := b; b := c; c := aux; end;
//output: 8 6 0 -3

writeln('Orden decreciente: ', a , ' ', b , ' ' , c , ' ', d );

end.

