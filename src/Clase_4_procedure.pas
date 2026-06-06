
Program Clase_4_procedure;

Uses crt;

Var inicio, fin : LongInt;
  num, sumaPerfectos, totalPerfectos : Integer;


Procedure pedirIntervalo;

Begin
  write('Inicio del Intervalo: ');
  read(inicio);
  write('Fin del Intervalo: ');
  read(fin);
End;

// con var paso los parametros por referencia
Procedure intercambiar(Var a, b: LongInt);

Begin
  a := a + b;
  b := a - b;
  a := a - b;
End;

Function calcularPerfecto(a: Integer): Boolean;

Var cont, i: Integer;

Begin

  If (a > 0) Then
    Begin

      cont := 0;

      For i := 1 To (a Div 2) Do
        Begin

          If (a Mod i = 0) Then
            cont := cont + i;

        End;

      If (cont = a) Then
        Begin
          calcularPerfecto := true;
          exit;
        End;
        
    End;

  calcularPerfecto := false;

End;

Procedure calcularPromedio(suma, total: Integer);

Var prom : Real;

Begin
  If (total <= 0) Then
    exit;
  prom := suma / total;
  writeln('El promedio es: ', prom:0:2);
End;

Begin
  clrscr;

  sumaPerfectos := 0;
  totalPerfectos := 0;

  pedirIntervalo;

  If (inicio > fin) Then
    intercambiar(inicio, fin);

  For num := inicio To fin Do
    Begin
      If (calcularPerfecto(num) = true) Then
        Begin
          writeln(num, ' es perfecto');
          sumaPerfectos := sumaPerfectos + num;
          totalPerfectos := totalPerfectos + 1;
        End;
    End;

  calcularPromedio(sumaPerfectos, totalPerfectos);

End.
