
{
Hacer un tablero de ajedrez
Que tenga la capacidad de preguntarle de cuántos cuadros lo quiere (cuantas filas y columnas quiere)
Que abarque toda la pantalla
Lo que cambia es el tamaño de los cuadros, no de la pantalla
Usando la funcion gotoxy
}

Program ChessBoardGotoxy;

Uses crt;

Var 
  filas, colum, i, j : Integer;
  tamX, tamY : Integer;
  screenX, screenY : Integer;
  coordX, coordY : Integer;
  cuadro : Char;

Begin
  clrscr;

  // terminal standar (80,25)
  screenX := 80;
  screenY := 25;

  writeln(':::::Tablero de Ajedrez:::::');
  write('Cantidad de filas: ');
  readln(filas);
  write('Cantidad de columnas: ');
  readln(colum);
  writeln();

  If (filas <= 0) Then
    filas := 1;
  If (colum <= 0) Then
    colum := 1;

  tamX := screenX Div colum;
  tamY := screenY Div filas;
  If tamX < 1 Then tamX := 1;
  If tamY < 1 Then tamY := 1;


  clrscr;

  For i := 1 To screenY Do
    Begin

      For j := 1 To screenX Do
        Begin

          coordX := (j - 1) Div tamX;
          If (coordX >= colum) Then
            coordX := colum - 1;

          coordY := (i - 1) Div tamY;
          If (coordY >= filas) Then
            coordY := filas - 1;




          If (coordY + coordX) Mod 2 = 0 Then
            Begin
              textbackground(White);
              textcolor(white);
              cuadro := '#';
            End
          Else
            Begin
              textbackground(Blue);
              textcolor(Blue);
              cuadro := ' ';
            End;




          gotoXY(j, i);
          write(cuadro);
        End;

    End;

  textbackground(Black);
  textcolor(White);
  gotoxy(1, screenY + 1);

  readln;
End.
