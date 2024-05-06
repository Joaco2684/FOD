program Prac3Ej1;
type
	empleado = record
		nro:integer;
		apellido: string;
		nombre: string;
		edad:integer;
		dni:integer;
	end;
	
	archivo = File of empleado;

procedure eliminarEmpleado(var arch:archivo; num:integer);
var
    ult,act:empleado;
begin
    reset(arch);
    seek(arch, FileSize(arch)-1);
    readln(arch,ult);
    seek(arch, 0);
    readln(arch, act);
    while ((not eof(arch)) and (act.nro <> num)) do
        readln(arch,act);
    if (act.nro = num) then
        begin
            seek(arch, FilePos(arch)-1); //Pos donde encontró el empleado a eliminar
            writeln(arch, ult);
            seek(arch, FileSize(arch)-1);
            truncate(arch);
        end;
end;

var
    arch: archivo;
    num:integer;
begin
    Assign(arch, 'Archivo');
    writeln('Ingrese un nro de empleado a borrar:');
    readln(num);
    eliminarEmpleado(arch,num);
end.