
Program Menu;

Uses crt, dos;

Const 
  PRIMA_POR_HIJO = 0.17;
  LEY_POLITICA_HABITACIONAL = 0.08;
  SEGURO_SOCIAL_OBLIGATORIO = 0.09;
  PRIMA_POR_VEJEZ = 0.15;

Var 
  opc, subOpc, i: Integer;
  r, h, b, l, a, num: Real;
  edad, diasTrabajados, nHijos, edadHijo, hijosMenores : Integer;
  band : Boolean;
  anioA, mesA, diaA, diasemA, anio, mes, dia, diasMax : Word;
  salarioBase, salarioTotal, horasExtrasD, horasExtrasN : Real;
  ingresoHED, ingresoHEN, ingresoAlimentacion : Real;
  descLPH, descSSO, descTotal, bonoAlimentacion, bonoHorasExtras, bonoPH,
  bonoVejez, bonoTotal : Real;

Begin
  getDate(anioA, mesA, diaA, diasemA);
  ingresoHED := 1.5;
  ingresoHEN := 3;
  ingresoAlimentacion := 6;

  opc := 0;

  While (opc <> 4) Do
    Begin
      clrscr;

      writeln('...::: MENU :::...');
      writeln('1: Areas');
      writeln('2: Tablas');
      writeln('3: Salario');
      writeln('4: Salir');
      write('Seleccione una opcion: ');
      readln(opc);

      subOpc := 0;

      Case opc Of 
        1:
           Begin
             While (subOpc <> 4) Do
               Begin
                 clrscr;
                 writeln('...::: AREAS :::...');
                 writeln('1: Circulo');
                 writeln('2: Triangulo');
                 writeln('3: Cuadrado');
                 writeln('4: Volver');
                 Write('Seleccione una opcion: ');
                 readln(subOpc);

                 Case subOpc Of 
                   1:
                      Begin
                        Write('Ingrese la longitud del radio: ');
                        readln(r);
                        a := pi * sqr(r);
                        writeln('El area es: ', a:0:2);
                      End;

                   2:
                      Begin
                        Write('Ingrese la base y la altura: ');
                        readln(b, h);
                        a := (b * h) / 2;
                        writeln('El area es: ', a:0:2);
                      End;

                   3:
                      Begin
                        Write('Ingrese la longitud de un lado: ');
                        readln(l);
                        a := sqr(l);
                        writeln('El area es: ', a:0:2);
                      End;

                   4: ;

                   Else writeln('Opcion no valida, intente de nuevo.');

                 End;

                 If subOpc <> 4 Then
                   Begin
                     writeln;
                     write('Presione cualquier tecla para continuar...');
                     readKey;
                   End;

               End;
           End;

        2:
           Begin
             While (subOpc <> 3) Do
               Begin
                 clrscr;
                 writeln('...::: TABLAS :::...');
                 writeln('1: Multiplicar');
                 writeln('2: Dividir');
                 writeln('3: Volver');

                 Write('Seleccione una opcion: ');
                 readln(subOpc);

                 Case subOpc Of 
                   1:
                      Begin
                        Write('Ingrese un numero entero: ');
                        readln(num);
                        writeln(num:0:2, ' x 0 = ', (num * 0): 0: 2);
                        writeln(num:0:2, ' x 1 = ', (num * 1): 0: 2);
                        writeln(num:0:2, ' x 2 = ', (num * 2): 0: 2);
                        writeln(num:0:2, ' x 3 = ', (num * 3): 0: 2);
                        writeln(num:0:2, ' x 4 = ', (num * 4): 0: 2);
                        writeln(num:0:2, ' x 5 = ', (num * 5): 0: 2);
                        writeln(num:0:2, ' x 6 = ', (num * 6): 0: 2);
                        writeln(num:0:2, ' x 7 = ', (num * 7): 0: 2);
                        writeln(num:0:2, ' x 8 = ', (num * 8): 0: 2);
                        writeln(num:0:2, ' x 9 = ', (num * 9): 0: 2);
                        writeln(num:0:2, ' x 10 = ', (num * 10): 0: 2);
                      End;

                   2:
                      Begin
                        Write('Ingrese un numero entero: ');
                        readln(num);
                        writeln(num:0:2, ' / 1 = ', (num / 1): 0: 2);
                        writeln(num:0:2, ' / 2 = ', (num / 2): 0: 2);
                        writeln(num:0:2, ' / 3 = ', (num / 3): 0: 2);
                        writeln(num:0:2, ' / 4 = ', (num / 4): 0: 2);
                        writeln(num:0:2, ' / 5 = ', (num / 5): 0: 2);
                        writeln(num:0:2, ' / 6 = ', (num / 6): 0: 2);
                        writeln(num:0:2, ' / 7 = ', (num / 7): 0: 2);
                        writeln(num:0:2, ' / 8 = ', (num / 8): 0: 2);
                        writeln(num:0:2, ' / 9 = ', (num / 9): 0: 2);
                        writeln(num:0:2, ' / 10 = ', (num / 10): 0: 2);
                      End;

                   3: ;

                   Else writeln('Opcion no valida, intente de nuevo.');

                 End;

                 If subOpc <> 3 Then
                   Begin
                     writeln;
                     write('Presione cualquier tecla para continuar...');
                     readKey;
                   End;

               End;
           End;

        3:
           Begin
             clrscr;
             writeln('...::: SALARIO :::...');
             writeln('1. Obrero');
             writeln('2. Empleado');
             writeln('3. Supervisor');
             writeln('4. Encargado de area');
             writeln('5. Gerente');
             Write('Seleccione su cargo (1-5): ');
             readln(subOpc);

             Case (subOpc) Of 
               1: salarioBase := 30;
               2: salarioBase := 40;
               3: salarioBase := 50;
               4: salarioBase := 60;
               5: salarioBase := 100;
               Else salarioBase := 0;
             End;

             Write('Ingrese su edad: ');
             readln(edad);
             Write('Cantidad de dias trabajados: ');
             readln(diasTrabajados);
             Write('Horas extras diurnas: ');
             readln(horasExtrasD);
             Write('Horas extras nocturnas: ');
             readln(horasExtrasN);
             Write('Numero de hijos menores de edad: ');
             readln(nHijos);

             hijosMenores := 0;

             For i := 1 To nHijos Do
               Begin
                 Repeat
                   writeln(i, '. Fecha de nacimiento: ');
                   write('Anio: ');
                   readln(anio);
                   write('Mes: ');
                   readln(mes);
                   write('Dia: ');
                   readln(dia);

                   Case mes Of 

                     1,3,5,7,8,10,12: diasMax := 31;

                     4,6,9,11: diasMax := 30;

                     2:
                        Begin
                          If (anio Mod 4 = 0) And ((anio Mod 100 <> 0)) Or (anio
                             Mod 400 = 0) Then diasMax := 29
                          Else diasMax := 28;

                        End;
                     Else diasMax := 0;
                   End;

                   If (dia < 1) Or (dia > diasMax) Or (mes < 1) Or (mes > 12)
                     Then
                     Begin
                       band := false;
                       writeln('Fecha no valida');
                     End

                   Else
                     Begin
                       band := true;
                       edadHijo := anioA - anio;
                       If (mesA < mes) Or ((mesA = mes) And (diaA < dia)) Then
                         edadHijo := edadHijo - 1;
                       If edadHijo < 18 Then
                         Begin
                           writeln('Es menor de edad (Aplica bono)');
                           hijosMenores := hijosMenores + 1;
                         End
                       Else writeln('Es mayor de edad (No aplica)');
                     End;

                 Until band = true;
               End;

             bonoAlimentacion := diasTrabajados * ingresoAlimentacion;
             bonoHorasExtras := (horasExtrasD * ingresoHED) + (horasExtrasN *
                                ingresoHEN);

             If (hijosMenores > 3) Then bonoPH := (salarioBase * PRIMA_POR_HIJO)
                                                  *
                                                  3
             Else bonoPH := (salarioBase * PRIMA_POR_HIJO) * hijosMenores;

             If (edad > 65) Then bonoVejez := salarioBase * PRIMA_POR_VEJEZ
             Else bonoVejez := 0;

             bonoTotal := bonoAlimentacion + bonoHorasExtras + bonoPH +
                          bonoVejez;

             descLPH := salarioBase * LEY_POLITICA_HABITACIONAL;
             descSSO := salarioBase * SEGURO_SOCIAL_OBLIGATORIO;
             descTotal := descLPH + descSSO;

             salarioTotal := salarioBase + bonoTotal - descTotal;

             writeln('Salario total: $', salarioTotal:0:2);
           End;

        4: write('Saliendo del menu...');

        Else writeln('Opcion no valida, intente de nuevo.');

      End;

      If (opc <> 1) And (opc <> 2) And (opc <> 4) Then
        Begin
          writeln;
          write('Presione cualquier tecla para continuar...');
          readKey;
        End;

    End;

  readKey;

End.
