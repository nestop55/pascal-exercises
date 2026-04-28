{ 
Realice un algoritmo que permita calcular el salario de una persona partiendo
de las siguientes particularidades

Sueldo base = 50$
Horas extras trabajadas: 3$ nocturnas, 1.5$ diurnas
Bono alimentacion de 6$ por días trabajados
Prima por hijo del 17% de su sueldo base por cada hijo menor de edad
Impuesto de ley politica habitacional 8%
Seguro social obligatorio 9%
}

program CalcularSalario;

uses crt;

const 
SALARIO_BASE = 50.00;
HORAS_EXTRAS_DIURNAS = 1.5;
HORAS_EXTRAS_NOCTURNAS = 3;
BONO_ALIMENTACION = 6.00; 
PRIMA_POR_HIJO = 0.17; 
LEY_POLITICA_HABITACIONAL = 0.08;
SEGURO_SOCIAL_OBLIGATORIO = 0.09;

var 
i, nHijos, diasTrabajados, h, m : Integer;
horaEntrada, horaSalida, horasTrabajadas, horasEDiurnas, horasENocturnas : Double;
totalHorasExtras, totalPrimaHijo, totalBonoAlimentacion, totalLeyHabitacional, totalSeguroSocial: Double;
nombre, apellido : String[75];
ci : LongInt;
salarioBruto, salarioNeto : Double;

begin
    clrscr;

    write('Digite su Nombre: ');
    readln(nombre);
    write('Digite su Apellido: ');
    readln(apellido);
    write('Digite su Cedula de Identidad: ');
    readln(ci);

    repeat
        write('Numero de hijos menores de edad: ');
        readln(nHijos);
        if nHijos < 0 then writeln('El numero no puede ser negativo');  
    until nHijos >= 0;

    totalPrimaHijo := (PRIMA_POR_HIJO * SALARIO_BASE) * nHijos;
    if totalPrimaHijo > (SALARIO_BASE * 0.50) then
        totalPrimaHijo := SALARIO_BASE * 0.50;

    repeat
        write('Dias trabajados: ');
        readln(diasTrabajados);
        if diasTrabajados < 0 then writeln('El numero no puede ser negativo');  
    until diasTrabajados >= 0;

    horasEDiurnas := 0; horasENocturnas := 0;
    
    for i := 1 to diasTrabajados do
    begin 

    writeln('--- Dia ', i, ' ---');
    repeat 
        writeln('Entrada: ');
        write('Hora (0-23): '); readln(h);
        write('Minutos (0-59): '); readln(m);
        horaEntrada := h + (m / 60);
    until (h >= 0) AND (h <= 23) AND (m >= 0) AND (m <= 59);
    repeat 
        writeln('Salida: ');
        write('Hora (0-23): '); readln(h);
        write('Minutos (0-59): '); readln(m);
        horaSalida := h + (m / 60);
    until (h >= 0) AND (h <= 23) AND (m >= 0) AND (m <= 59);

    if horaEntrada > horaSalida then
        horasTrabajadas := (24 - horaEntrada) + horaSalida
    else
        horasTrabajadas := horaSalida - horaEntrada;

    if horasTrabajadas > 8 then 
    begin
        // horaSalida >= 7pm OR horaSalida <= 6am
        if (horaSalida >= 19) OR (horaSalida <= 6) then
            horasENocturnas := horasENocturnas + (horasTrabajadas - 8)
        else
            horasEDiurnas := horasEDiurnas + (horasTrabajadas - 8);
    end;

    end;

    totalHorasExtras := (horasEDiurnas * HORAS_EXTRAS_DIURNAS) + 
                        (horasENocturnas * HORAS_EXTRAS_NOCTURNAS);

    totalBonoAlimentacion := BONO_ALIMENTACION * diasTrabajados;

    salarioBruto := SALARIO_BASE + totalBonoAlimentacion + totalPrimaHijo + totalHorasExtras;

    totalLeyHabitacional := LEY_POLITICA_HABITACIONAL * SALARIO_BASE;
    totalSeguroSocial := SEGURO_SOCIAL_OBLIGATORIO * SALARIO_BASE;

    salarioNeto := salarioBruto - totalLeyHabitacional - totalSeguroSocial;

    clrscr;
    writeln('   NOMINA');
    writeln('------------------------------------------');
    writeln('Empleado: ', nombre, ' ', apellido, ' ', ci);
    writeln('------------------------------------------');
    writeln('SALARIO BASE: $', SALARIO_BASE:0:2);
    writeln('------------------------------------------');
    writeln('Bono de Alimentacion: $', totalBonoAlimentacion:0:2);
    writeln('Prima por Hijo (', nHijos,'): $', totalPrimaHijo:0:2);
    writeln('Horas extras diurnas: ', horasEDiurnas:0:2);
    writeln('Horas extras nocturnas: ', horasENocturnas:0:2);
    writeln('Horas extras: $', totalHorasExtras:0:2);
    writeln('------------------------------------------');
    writeln('SALARIO BRUTO: $', salarioBruto:0:2);
    writeln('------------------------------------------');
    writeln('Impuesto LPH (8%): $', totalLeyHabitacional:0:2);
    writeln('Impuesto SSO (9%): $', totalSeguroSocial:0:2);
    writeln('------------------------------------------');
    writeln('SALARIO NETO: $', salarioNeto:0:2);
    
    readKey();

end.