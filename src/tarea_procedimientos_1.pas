



{
    Hacer un algoritmo que lea n cantidad de números, y devuelva el inicio y final 
    de un intervalo de números, sabiendo que el inicio será el menor de los pares y 
    el final el prom de los impares.

    De ese intervalo quiero el prom de todos los múltiplos de 5, e imprimir la 
    tabla de ese número
}

Program tarea_procedimientos_1;

Uses crt, sysutils;

Var num : Int64;
  confirm : Char;
  primer_par : Boolean;
  sumaImpares, nImpares : Int64;
  inicio, fin : Int64;
  promTotal : Real;


Procedure pedir_numero(Var a : Int64; Var con : Char);

Begin

  write('Digite un numero: ');
  readln(a);

  write('Registrar otro numero? (s/n): ');
  readln(con);

  con := lowercase(con);

End;

Function calc_menor(a, menor : Int64) : Int64;

Begin

  If (a < menor) Then
    menor := a;

  calc_menor := menor;

End;


Function calc_suma(a, b : Int64) : Int64;

Begin
  calc_suma := a + b;
End;


Function calc_prom(sum, n : Int64) : Real;

Begin

  If (n > 0) Then
    calc_prom := sum / n
  Else
    Begin
      writeln('Error: No se puede dividir entre 0');
      calc_prom := 0.0;
    End;

End;


Procedure promedio_intervalo (inicio, fin : Int64);

Var i, aux, suma, cont : Int64;

Begin

  If (inicio > fin) Then
    Begin
      aux := inicio;
      inicio := fin;
      fin := aux;
    End;

  cont := 0;
  suma := 0;

  For i := inicio To fin Do
    Begin
      If (i Mod 5 = 0) Then
        Begin
          suma := calc_suma(suma, i);
          cont := cont + 1;
        End;
    End;

  promTotal := calc_prom(suma, cont);

End;

Procedure tabla_multiplicar(n : Int64);

Var i : Integer;

Begin
  writeln('Tabla de multiplicar del ', n);
  For i := 1 To 10 Do
    writeln(n, ' * ', i, ' = ', n*i);
End;

Begin
  clrscr;

  confirm := ' ';
  primer_par := true;
  sumaImpares := 0;
  nImpares := 0;

  inicio := 0;
  fin := 0;

  While (confirm <> 'n') Do
    Begin

      pedir_numero(num, confirm);

      // Impar
      If (odd(num)) Then
        Begin
          sumaImpares := calc_suma(sumaImpares, num);
          nImpares := nImpares + 1;
        End
        // Par
      Else
        Begin
          If (primer_par) Then
            Begin
              inicio := num;
              primer_par := false;
            End
          Else
            inicio := calc_menor(num, inicio);
        End;



// Si falta un par o impar para realizar la operacion, y no generar error al ejecutar
      If (confirm = 'n') Then
        Begin
          If (primer_par = true) Then
            Begin
              writeln('**Debe ingresar almenos un numero par**');
              confirm := 's';
            End;

          If (nImpares = 0) Then
            Begin
              writeln('**Debe ingresar almenos un numero impar**');
              confirm := 's';
            End;
        End

    End;

  fin := round(calc_prom(sumaImpares, nImpares));

  writeln;
  writeln('Intervalo: ', inicio, ' a ', fin);
  Writeln('El menor par (inicio) es: ', inicio);
  Writeln('El promedio impar (fin) es: ', fin);

  promedio_intervalo(inicio, fin);

  writeln;
  writeln('El promedio total es: ', promTotal:0:2);

  tabla_multiplicar(round(promTotal));

  readln;
End.
