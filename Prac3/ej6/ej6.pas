program Prac3Ej6;
type
    prenda = record
        cod_prenda:integer;
        desc:string;
        colores:string;
        tipo_prenda:string;
        stock:integer;
        precio_unitario:integer;
    end;

    file_mae = File of prenda;
    file_det = File of Integer;

procedure bajaLogica(var mae:file_mae; var det:file_det);


var
    mae:file_mae;
    det:file_det;
begin
    Assign(mae, 'Maestro');
    Assign(det, 'Detalle');
    bajaLogica(mae,det);
end.