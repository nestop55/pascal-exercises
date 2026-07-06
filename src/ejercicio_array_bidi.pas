{
    Programa que almacena las notas de 3 estudiantes (2 notas por cada uno)
    en una matriz bidimensional y las muestra en pantalla.
}

program ejercicio_array_bidi;

uses crt, sysutils;

var notas : array[1..3, 1..2] of Real;
f, c : Integer;

Begin
    ClrScr;

    for f := 1 to 3 do
    begin
        writeln('Estudiante ', f, ': ');
        
        for c := 1 to 2 do
        begin
            write('Nota ', c, ': ');
            readln(notas[f,c]);
        end;

    end;

    for f := 1 to 3 do
    begin
        
        write('Estudiante ', f, ': ');
        
        for c := 1 to 2 do
        begin
            write(notas[f,c]:0:2, ' ');
        end;

        writeln;
    end; 


    readln;

End.