/*
MOTOR DE INFERENCIA:
Esta parte del sistema experto se encarga de inferir cual es el
diagnostico a partir de las preguntas realizadas
*/

:-dynamic si/1, no/1.
preguntar(Problema):- new(Di,dialog('REPARACION Y MANTENIMIENTO')),

    new(L2,label(texto,'Responde las siguientes preguntas')),
    new(La,label(prob,Problema)),
    new(B1,button(si,and(message(Di,return,si)))),
    new(B2,button(no,and(message(Di,return,no)))),

    send(Di,append(L2)),
    send(Di,append(La)),
    send(Di,append(B1)),
    send(Di,append(B2)),
    send(Di,default_button,si),
    send(Di,open_centered),get(Di,confirm,Answer),
    write(Answer),send(Di,destroy),
    ((Answer==si)->assert(si(Problema));
    assert(no(Problema)),fail).

pregunta(S):- (si(S)->true;
              (no(S)->fail;
              preguntar(S))).

limpiar:-retract(si(_)),fail.
limpiar:-retract(no(_)),fail.
limpiar.

botones:-lim,
    send(@boton,free),
    send(@btncarrera,free),
    danio(Danio),
    send(@texto,selection('De acuerdo con los datos obtenidos su PC tiene: ')),
    send(@resp1,selection(Danio)),

    new(@boton,button('Iniciar',message(@prolog,botones))),
    send(Menu,display,@boton,point(40,50)),
    send(Menu,display,@btncarrera,point(20,50)),
    limpiar.

lim:- send(@resp1,selection('')).
