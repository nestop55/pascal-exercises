
Program Examen_2;

Uses crt, dos;

Var 
  opc, opc3 : Char;
  opc2 : Integer;

  inicio, fin, aux, i, j: Integer;
  cont, sumaTotal, cantNum : Integer;
  prom : Integer;
  factorial : Int64;

  montoTotal, kmInicial, kmFinal, kmRecorridos, x : real;

  num, min, max:  Int64;


Begin
  clrscr;

  opc := ' ';

  While (opc <> 's') Do
    Begin
      clrscr;
      writeln('::::MENU::::');
      writeln('a. Numeros');
      writeln('b. Aquiler');
      writeln('c. Tablas');
      writeln('s. Salir');
      writeln('---------------------');
      write('Seleccione una opcion: ');
      readln(opc);

      Case opc Of 
        'a':
             Begin
               opc2 := 1;
               While (opc2 <> 0) Do
                 Begin
                   clrscr;
                   writeln('::::NUMEROS::::');
                   writeln('1. Intervalo 1');
                   writeln('2. Intervalos 2');
                   writeln('0. Regresar');
                   writeln('---------------------');
                   write('Seleccione una opcion: ');
                   readln(opc2);

                   Case (opc2) Of 
                     1:
                        Begin

                          aux := 0;

                          write('Digite un intervalo de numeros: ');
                          readln(inicio, fin);

                          If (inicio > fin) Then
                            Begin
                              aux := inicio;
                              inicio := fin;
                              fin := aux;
                            End;

                          cantNum := 0;
                          sumaTotal := 0;
                          prom := 0;
                          For i := inicio To fin Do
                            Begin

                              If odd(i) Then
                                Begin
                                  writeln(i, ' es impar');
                                  sumaTotal := sumaTotal + i;
                                  cantNum := cantNum + 1;
                                End;

                            End;

                          If cantNum > 0 Then
                            Begin
                              prom := sumaTotal Div cantNum;
                              writeln('El promedio es: ', prom);

                              factorial := 1;

                              For i := 1 To prom Do
                                Begin
                                  factorial := factorial * i;
                                End;

                              writeln('El factorial es: ', factorial);

                            End;

                        End;

                     2:
                        Begin


                          aux := 0;

                          write('Digite un intervalo de numeros: ');
                          readln(inicio, fin);

                          If (inicio > fin) Then
                            Begin
                              aux := inicio;
                              inicio := fin;
                              fin := aux;
                            End;

                          cantNum := 0;
                          sumaTotal := 0;
                          prom := 0;

                          For i := inicio To fin Do
                            Begin
                              sumaTotal := sumaTotal + i;
                              cantNum := cantNum + 1;
                            End;

                          If cantNum > 0 Then
                            Begin
                              prom := sumaTotal Div cantNum;
                              writeln('El promedio es: ', prom);

                              prom := prom Div 100;

                              If (odd(prom)) Then
                                writeln('Es impar')
                              Else
                                writeln('Es par');

                            End;


                        End;

                   End;

                   If (opc2 <> 0) Then
                     readln;

                 End;

             End;



        'b':
             Begin
               opc2 := 1;
               While (opc2 <> 0) Do
                 Begin
                   clrscr;
                   writeln('::::ALQUILER::::');
                   writeln('1. Carros');
                   writeln('2. Motos');
                   writeln('0. Regresar');
                   writeln('---------------------');
                   write('Seleccione una opcion: ');
                   readln(opc2);

                   Case (opc2) Of 
                     1:
                        Begin

                          montoTotal := 50;

                          While (true) Do
                            Begin
                              write('Digite el kilometraje inicial: ');
                              readln(kmInicial);
                              write('Digite el kilometraje final: ');
                              readln(kmFinal);

                              if (kmInicial > kmFinal) Then
                                writeln('Error: El kilometraje inicial no puede ser mayor al final')
                              else 
                                break; 
                            End;
                            
                            kmRecorridos := kmFinal - kmInicial;

                          If (kmRecorridos > 300) And (kmRecorridos <= 700)
                            Then
                            Begin
                              x := kmRecorridos - 300;
                              kmRecorridos := kmRecorridos - x;
                              montoTotal := montoTotal + (x * 1.5);
                            End;

                          If (kmRecorridos > 200) And (kmRecorridos <= 300)
                            Then
                            Begin
                              x := kmRecorridos - 200;
                              kmRecorridos := kmRecorridos - x;
                              montoTotal := montoTotal + (x * 2);
                            End;

                          If (kmRecorridos > 150) And (kmRecorridos <= 200)
                            Then
                            Begin
                              x := kmRecorridos - 150;
                              kmRecorridos := kmRecorridos - x;
                              montoTotal := montoTotal + (x * 3);
                            End;

                          If (kmRecorridos > 100) And (kmRecorridos <= 150)
                            Then
                            Begin
                              x := kmRecorridos - 100;
                              kmRecorridos := kmRecorridos - x;
                              montoTotal := montoTotal + (x * 5);
                            End;

                          writeln('Monto Total es: ',montoTotal:0:2);

                        End;

                     2:
                        Begin

                          montoTotal := 10;
                          While (true) Do
                            Begin
                              write('Digite el kilometraje inicial: ');
                              readln(kmInicial);
                              write('Digite el kilometraje final: ');
                              readln(kmFinal);

                              if (kmInicial > kmFinal) Then
                                writeln('Error: El kilometraje inicial no puede ser mayor al final')
                              else 
                                break; 
                            End;
                            
                            kmRecorridos := kmFinal - kmInicial;

                          If (kmRecorridos > 200) And (kmRecorridos <= 500)
                            Then
                            Begin
                              x := kmRecorridos - 200;
                              kmRecorridos := kmRecorridos - x;
                              montoTotal := montoTotal + (x * 0.75);
                            End;

                          If (kmRecorridos > 100) And (kmRecorridos <= 200)
                            Then
                            Begin
                              x := kmRecorridos - 100;
                              kmRecorridos := kmRecorridos - x;
                              montoTotal := montoTotal + (x * 1);
                            End;

                          If (kmRecorridos > 50) And (kmRecorridos <= 100)  Then
                            Begin
                              x := kmRecorridos - 50;
                              kmRecorridos := kmRecorridos - x;
                              montoTotal := montoTotal + (x * 2);
                            End;

                          writeln('Monto Total es: ',montoTotal:0:2);


                        End;

                   End;

                   If (opc2 <> 0) Then
                     readln;

                 End;

             End;
        'c':
             Begin
               opc2 := 1;
               While (opc2 <> 0) Do
                 Begin
                   clrscr;
                   writeln('::::TABLAS::::');
                   writeln('1. Menor');
                   writeln('2. Mayor');
                   writeln('0. Regresar');
                   writeln('---------------------');
                   write('Seleccione una opcion: ');
                   readln(opc2);

                   Case (opc2) Of 
                     1:
                        Begin
                          opc3 := ' ';
                          i := 1;

                          While opc3 <> 'n' Do
                            Begin

                              write('Digite un numero: ' );
                              readln(num);

                              If (i = 1) Then min := num;

                              If (num < min) Then min := num;

                              write('Desea registrar otro numero? (s/n) ');
                              readln(opc3);

                              i := i + 1;

                            End;

                          writeln('El numero menor es: ', min);
                        End;

                     2:
                        Begin

                          opc3 := 's';
                          i := 1;

                          While opc3 <> 'n' Do
                            Begin

                              write('Digite un numero: ' );
                              readln(num);

                              If (i = 1) Then max := num;

                              If (num > max) Then max := num;

                              write('Desea registrar otro numero? (s/n) ');
                              readln(opc3);

                              i := i + 1;

                            End;

                          writeln('El numero mayor es: ', max);

                        End;

                   End;

                   If (opc2 <> 0) Then
                     readln;

                 End;

             End;

        's': writeln('Saliendo del Menu...');

      End;

    End;

End.
