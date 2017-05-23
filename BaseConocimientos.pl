/*
BASE DE CONOCIMIENTOS.
Fallos comunes en PCs y las razones por las que pueden estar sucediendo
Los fallos se colocan como preguntas, que se ir�n mostrando una a una
*/

ram:-ram_daniada,
    pregunta('Continuo reinicio automatico del ordenador?'),
    pregunta('Al encender el equipo no carga absolutamente nada(pantalla negra?'),
    pregunta('El equipo se bloquea con cualquier aplicacion?').

discoduro:-discoduro_daniado,
    pregunta('Error serio de disco al escribir en la unidad?'),
    pregunta('Error de datos al leer la unidad?'),
    pregunta('Continuos ruidos al interior del CPU?').

motherboard:-motherboard_daniada,
    pregunta('Se apaga solo el computador y vuelve a prender?'),
    pregunta('Hay buses desconectados?'),
    pregunta('Hay chips explotados?').

procesador:-procesador_daniado,
    pregunta('El ventilador del procesador no funciona?'),
    pregunta('El disipador de calor esta sucio?'),
    pregunta('Encendido lento?').

tarjetavideo:-tarjetavideo_daniada,
    pregunta('Cuando arranca el equipo escucha 3 pitillos?'),
    pregunta('Parpadea el monitor?').

fuente:-fuente_daniada,
    pregunta('El ventilador de la fuente no funciona?'),
    pregunta('Se escuchan ruidos electricos?'),
    pregunta('El computador no prende?').


unidadesopt:-unidadesopt_daniadas,
    pregunta('La unidad no lee ning�n disco?'),
    pregunta('Al leer el disco se bloquea la PC?'),
    pregunta('Cuando gira el disco emite un zumbido fuerte?').

tarjetasonido:-tarjetasonido_daniada,
    pregunta('No reconoce dispositivos de sonido?'),
    pregunta('El sonido tiene interferencias?'),
    pregunta('El volumen de sonido es bajo?').

mouse:- mouse_daniado,
    pregunta('El cursor en la pantalla brinca?'),
    pregunta('El cursor no da movimientos?').

pantalla:-pantalla_daniada,
    pregunta('Los colores estan distorsionados?'),
    pregunta('La pantalla se pone negra y vuelve a su estado normal constantemente?').

impresora:-impresora_daniada,
    pregunta('Imprime caracteres no correspondientes a la impresi�n?'),
    pregunta('La impresi�n sale desalineada?').


teclado:-teclado_daniado,
    pregunta('Al encender el equipo las luces indicadoras del teclado tienen una intensidad baja?'),
    pregunta('Algunas veces tiene problemas al presionar algunas letras?').

desconocido:- se_desconoce_danio.


ram_daniada:- pregunta('Continuo reinicio automatico del ordenador?'),!.

discoduro_daniado:- pregunta('Error serio de disco al escribir en la unidad?'),!.

motherboard_daniada:- pregunta('Se apaga solo el computador y vuelve a prender?'),!.

procesador_daniado:- pregunta('El ventilador del procesador no funciona?'),!.

tarjetavideo_daniada:- pregunta('Cuando arranca el equipo escucha 3 pitillos?'),!.

fuente_daniada:- pregunta('El ventilador de la fuente no funciona?'),!.

unidadesopt_daniadas:- pregunta('La unidad no lee ning�n disco?'),!.

tarjetasonido_daniada:- pregunta('No reconoce dispositivos de sonido?'),!.

mouse_daniado:- pregunta('El cursor en la pantalla brinca?'),!.

pantalla_daniada:- pregunta('Los colores estan distorsionados?'),!.

impresora_daniada:- pregunta('Imprime caracteres no correspondientes a la
impresi�n?'),!.

teclado_daniado:- pregunta('Al encender el equipo las luces indicadoras del teclado tienen una intensidad baja?'),!.
