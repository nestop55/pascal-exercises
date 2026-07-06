
{
    Realice un programa que lea 5 notas, las almacene en un arreglo unidimencional y
    las ordene de forma descendente
}

Program ejercicio_array_uni_1;

Uses crt, sysutils;

Var notas : array[1..5] Of Real;
  i, j: Integer;
  aux : Real;

Begin
  clrscr;

  // Pedir notas
  For i := Low(notas) To High(notas) Do
    Begin
      write('Nota ', i, ': ');
      readln(notas[i]);
    End;

  
  For i := Low(notas) To High(notas) - 1 Do
    For j := i + 1 To High(notas) Do
      If (notas[i] < notas[j]) Then
        Begin
          aux := notas[i];
          notas[i] := notas[j];
          notas[j] := aux;
        End;

  writeln('Notas Ordenadas');

  For i := Low(notas) To High(notas) Do
    Begin
      writeln('Nota ', i, ': ', notas[i]:0:2);
    End;

  readln;
End.
