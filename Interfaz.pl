/*
INTERFAZ DEL PROGRAMA.
Esta parte del sistema experto es la que se encarga de
interactuar con la persona comun, botones, textos, etc.
*/
interfaz:-
    new(Menu,dialog('SISTEMA EXPERTO', size(500,500))),
    new(L, label(nombre,'MANTENIMIENTO Y REPARACION DE PCs')),
    new(@texto,label(nombre,'Segun lo que responda se le dar� un resultado:')),
    new(@resp1,label(nombre,'')),
    new(Salir,button('SALIR',and(message(Menu,destroy),message(Menu,free)))),
    new(@boton,button('Consultar',message(@prolog,botones))),
    send(Menu,append(L)),new(@btncarrera,button('�Diagnostico?')),
    send(Menu,display,L,point(125,20)),
    send(Menu,display,@boton,point(100,150)),
    send(Menu,display,@texto,point(20,100)),
    send(Menu,display,Salir,point(20,400)),
    send(Menu,display,@resp1,point(20,130)),
    send(Menu,open_centered).

danio('Defectos de RAM'):-ram,!.
danio('Defectos de Disco Duro'):-discoduro,!.
danio('Defectos en la Tarjeta Madre'):-motherboard,!.
danio('Defectos de Procesador'):-procesador,!.
danio('Defectos de Tarjeta de Video'):-tarjetavideo,!.
danio('Defectos de la Fuente de Alimentacion'):-fuente,!.
danio('Defectos en las Unidades Opticas'):-unidadesopt,!.
danio('Defectos en la Tarjeta de Sonido'):-tarjetasonido,!.
danio('Defectos en el Mouse'):-mouse,!.
danio('Defectos en la Pantalla'):-pantalla,!.
danio('Defectos en la Impresora'):-impresora,!.
danio('Defectos en el teclado'):-teclado,!.
danio('Sin da�o').

/*
INICIAR SISTEMA EXPERTO.
Cabe aclarar que se corre la siguiente instrucci�n para que Prolog
ejecute autom�ticamente la interfaz creada. Antes tienen que estar
consultados los archivos de Prolog
*/

:-interfaz.
