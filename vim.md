My Vim
===================

a) u -> Undo
b) Ctrl + R -> Redo
c) * -> Se le aprieta arriba a un texto, y si lo sigues apretando va a navegar a todas las ocurrencias de este texto en el fichero actual
d) # -> Es lo mismo pero para atras

Decargar el vimplug
--------------------
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Navegacion
--------------------------------
  hjkl -> Desplazarse en el codigo
  w -> navega al inicio de la proxima palabra a la derecha
  b -> navega al inicio de la proxima palabra a la izq
  e -> navega al final de la proxima palabra a la derecha
  0 -> navega al inicio de la linea
  $ -> navega al final de la linea
  Shift + { -> navega hacia el siguiente parrafo
  Shift + } -> navega hacia el parrafo anterior
  Ctrl + d -> navegar a la ultima linea del fichero
  Ctrl + w +w -> navega entre las ventanas abiertas en split

Insercion
------------
i -> insertar texto a la izq de la palabra
a -> insertar texto a la derecha de la palabra
I -> insertar texto al inicio de la linea
A -> insertar texto al final de la linea

Eliminacion
---------------
dd -> eliminar linea
x  -> eliminar caracter sin entrar en modo de insercion
dw -> elimina toda una palabra
D -> elimina dede donde esta el cursor hasta el final de la linea


Seleccion
----------------
v -> Ingresa al modo visual.
V -> selecciona toda la linea, si se navega sigue seleccionando pero linea a linea
Ctrl + v -> modo seleccion de columna
 
(Mientras se esta en modo visual, si se aprieta 'd' elimina todo lo seleccionado)
y-> copiar seleccion
p-> pegar seleccion
yy-> sin estar en modo visual, copia la linea entera
Espacio + ci -> comentarea/descomentarea la linea o seleccion 
 

Git (fugitive)
--------------
Espacio + G -> Abre la ventana de git (:G)

Nota: En esa ventana salen todos los ficheros con cambios. Sobre ellos se realizan acciones:
a) git add/ filename.php -> Esta accion se realiza parandose encima del fichero y presionando la tecla menos '-'
b) Virar todo para atras un fichero , se realiza con Shift + x.
c) parado encima de un fichero con cambios se aprieta 'p' y luego '=' y se mostraran los cambios como un arbol ahi mismo.
d) parado encima de un fichero con cambios se aprieta 'dd' y sale una ventana para comparar los cambios. Si se presiona 'dp' hace algo parecido
e) git commit -> pararse arriba de un fichero y apretar 'cc'

Git (gv)
-----------------
gv permite navegar en el repo.
a) Mostrar la ventana principal con todos los commits -> :GV
b) Mostrar el historial de un fichero. Pararse en el fichero y luego :GV?

Terminal
----------------
a) Abrir un terminal pequenno debajo -> Ctrl + t
b) Abrir un terminal grande a la derecha -> Ctrl + y

Tallas locas
--------------

Abre un terminal a la derecha con el mysql abierto
:vsplit term://mysql

Cuando abre el vim, automaticamente hace un split con un terminal debajo
(en el init.vim)
autocmd VimEnter * ++nested split term://bash 
