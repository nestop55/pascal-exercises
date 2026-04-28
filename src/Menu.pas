
Program Menu;

Uses crt, DateUtils, sysutils;

Const 
  PRIMA_POR_HIJO = 0.17;
  LEY_POLITICA_HABITACIONAL = 0.08;
  SEGURO_SOCIAL_OBLIGATORIO = 0.09;
  PRIMA_POR_VEJEZ = 0.15;

Var 
  opc, i: Integer;
  r, h, b, l, a, num: Real;
  edad, diasTrabajados, nHijos, anioNacimiento, anioActual : Integer;
  salarioBase, salarioTotal, horasExtrasD, horasExtrasN : Real;
  ingresoHED, ingresoHEN, ingresoAlimentacion : Real;
  descLPH, descSSO, descTotal, bonoAlimentacion, bonoHorasExtras, bonoPH,
  bonoVejez, bonoTotal : Real;

Begin
  anioActual := yearOf(Now);
  ingresoHED := 1.5;
  ingresoHEN := 3;
  ingresoAlimentacion := 6;

  clrscr;
  writeln('...::: MENU :::...', anioActual);
  writeln('1: Areas');
  writeln('2: Tablas');
  writeln('3: Salario');
  writeln('4: Cerrar');
  write('Seleccione una opcion: ');
  readln(opc);

  Case opc Of 
    1:
       Begin
         writeln('...::: AREAS :::...');
         writeln('1: Circulo');
         writeln('2: Triangulo');
         writeln('3: Cuadrado');
         write('Seleccione una opcion: ');
         readln(opc);

         Case opc Of 
           1:
              Begin
                write('Ingrese la longitud del radio: ');
                readln(r);
                a := pi * sqr(r);
                writeln('El area es: ', a:0:2);
              End;

           2:
              Begin
                write('Ingrese la base y la altura: ');
                readln(b, h);
                a := (b * h) / 2;
                writeln('El area es: ', a:0:2);
              End;

           3:
              Begin
                write('Ingrese la longitud de un lado: ');
                readln(l);
                a := sqr(l);
                writeln('El area es: ', a:0:2);
              End;
         End;
       End;

    2:
       Begin
         writeln('...::: TABLAS :::...');
         writeln('1: Multiplicar');
         writeln('2: Dividir');

         write('Seleccione una opcion: ');
         readln(opc);

         Case opc Of 
           1:
              Begin
                write('Ingrese un numero entero: ');
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
                write('Ingrese un numero entero: ');
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
         End;
       End;

    3:
       Begin
         writeln('...::: SALARIO :::...');
         writeln('1. Obrero');
         writeln('2. Empleado');
         writeln('3. Supervisor');
         writeln('4. Encargado de area');
         writeln('5. Gerente');
         write('Seleccione su cargo (1-5): ');
         readln(opc);

         Case (opc) Of 
           1: salarioBase := 30;
           2: salarioBase := 40;
           3: salarioBase := 50;
           4: salarioBase := 60;
           5: salarioBase := 100;
         End;

         write('Ingrese su edad: ');
         readln(edad);
         write('Cantidad de dias trabajados: ');
         readln(diasTrabajados);
         write('Horas extras diurnas: ');
         readln(horasExtrasD);
         write('Horas extras nocturnas: ');
         readln(horasExtrasN);
         write('Numero de hijos menores de edad: ');
         readln(nHijos);

         For i := 1 To nHijos Do
           Begin
             write(i, '. Año de nacimiento: ');
             readln(anioNacimiento);
             If ((anioActual - anioNacimiento) >= 18) Then nHijos := nHijos - 1;
           End;

         bonoAlimentacion := diasTrabajados * ingresoAlimentacion;
         bonoHorasExtras := (horasExtrasD * ingresoHED) + (horasExtrasN *
                            ingresoHEN);
         If (nHijos > 3) Then bonoPH := (salarioBase * PRIMA_POR_HIJO) * 3
         Else (salarioBase * PRIMA_POR_HIJO) * nHijos;
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
  End;

  readKey;

End.
