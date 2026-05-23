




{
Realice un programa que lea un intervalo de numeros, determine cuales numeros son perfectos 
y calcule el promedio de los numeros perfectos
}

Program Clase_4;

Uses crt;

Var inicio, fin, num, cont, nPerfectos, i, j : Integer;
  promedio : real;

Begin
  clrscr;

  promedio := 0;
  nPerfectos := 0;

  write('Digite el inicio intervalo: ');
  readln(inicio);
  write('Digite el final intervalo: ');
  readln(fin);

  If (inicio <= fin) Then
    Begin

      For i := inicio To fin Do
        Begin
          cont := 0;

          If (i <= 0) Then
            continue;

          For j := 1 To (i - 1) Do
            Begin
              If (i Mod j) = 0 Then
                cont := cont + j;
            End;

          If (cont = i) Then
            Begin
              promedio := promedio + i;
              nPerfectos := nPerfectos + 1;
            End;

        End;

    End

  Else
    Begin

      For i := inicio Downto fin Do
        Begin
          cont := 0;

          If (i <= 0) Then
            continue;

          For j := 1 To (i - 1) Do
            Begin
              If (i Mod j) = 0 Then
                cont := cont + j;
            End;

          If (cont = i) Then
            Begin
              promedio := promedio + i;
              nPerfectos := nPerfectos + 1;
            End;

        End;

    End;

  If nPerfectos > 0 Then
    Begin
      promedio := promedio / nPerfectos;
      writeln('El promedio de los numeros perfectos es: ', promedio:0:2);
    End
  Else
    writeln('No se encontraron numeros perfectos en ese intervalo.');

End.
