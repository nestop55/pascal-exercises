program ChessBoard;

uses crt;

var filas, colum, i,j : Integer;
tamX, tamY, cont : Integer;
screenX, screenY : Integer;
cuadro : Char;


procedure intercambiarCuadro(var c : Char);
begin
if (c = '#') then 
    c := ' '
else 
    c := '#';
end;

begin


clrscr;

screenX := 50;
screenY := screenX div 2;
    
    writeln(':::::Tablero de Ajedrez:::::');
    write('Cantidad de filas: ');
    readln(filas);
    write('Cantidad de columnas: ');
    readln(colum);
    writeln();
    
    if (filas <= 0) then 
        filas := 1;
    if (colum <= 0) then 
        colum := 1;
    
    tamX := screenX div colum;
    tamY := screenY div filas;
    cuadro := '#';
  
  cont := 1;
  
  for i := 1 to (tamY * filas) do
   begin
   
        if (cont mod 2 <> 0) then
            cuadro := '#'
        else 
            cuadro := ' ';
          
        for j := 1 to (tamX * colum) do
         begin
            
            write(cuadro);
            if (j mod tamX = 0) and (j < tamX * colum) then
               intercambiarCuadro(cuadro);
            
         end;
         
         writeln();
        
        if (i mod tamY = 0) then
            cont := cont + 1;
        
   end;
   
   readln;
   
end.