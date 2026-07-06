
{
    Realice un programa que lea 5 notas, las almacene en un arreglo unidimencional y
    las ordene de forma descendente
}

// arreglos no estaticos, arreglos dinamicos

Program ejercicio_array_uni_2;

Uses crt, sysutils;

Var notas : array Of Real;
  cant, i, j: Integer;
  aux : Real;

Begin
  clrscr;

  write('Digite la cantidad de notas: ');
  readln(cant);

  SetLength(notas, cant); // Le asignamos tamaño 5 (índices del 0 al 4)

  For i := Low(notas) To High(notas) Do
    Begin
      write('Nota ', i + 1, ': ');
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
      writeln('Nota ', i + 1, ': ', notas[i]:0:2);
    End;

  readln;
End.
