unit UPais;

interface
type TPais = class (TObject)
              private



              protected
                id:integer;
                descricao:string;
                Idioma:string;
                Moeda:string;


              public

                constructor create;
                destructor destroy;
                procedure setId(vId:integer);
                function getId:integer;
end;
implementation

{ TPais }

constructor TPais.create;
begin
     id:=0;
     descricao:='';
     Idioma:='';
     Moeda:='';
end;

destructor TPais.destroy;
begin

end;

function TPais.getId: integer;
begin
    Result:=Id;
end;

procedure TPais.setId(vId: integer);
begin
    Id:= vid;
end;

end.
