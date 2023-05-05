generic
   
   type Tipoelem is private;
   with function "<" (X, Y: Tipoelem) return Boolean;
   with function ">" (X, Y: Tipoelem) return Boolean;
   with procedure Put (X: in TipoElem);
   
   package Arbol is
      
      type Tipoarbol is private;
      
      -- Cuando se crea un puntero en ada se inicializa en nulo.
	  function Vacio (Raiz: Tipoarbol) return Boolean;
      procedure Insertar(Raiz: in out Tipoarbol; Elemento: in Tipoelem);
      procedure Suprimir(Arbol: in out TipoArbol; ValSup: in TipoElem);
      function Esta(Raiz: in TipoArbol; Buscado: in TipoElem) return Boolean; -- Busca si elemento se encuentra
      procedure Limpiar(Ptr: in out TipoArbol);
      function Izq(Ptr: TipoArbol) return TipoArbol; -- Devulve un puntero del nodo raiz del arbol izquierdo
      function Der(Ptr: TipoArbol) return TipoArbol; -- Devuelve un puntero del nodo raiz del arbol derecho
      function Info(Ptr: Tipoarbol) return Tipoelem; -- Imprime el elemento que esta en la raiz del arbol.
      
	  Arbolvacio: exception;
   
      private
      
      type Tiponodo;
      type Tipoarbol is access Tiponodo;
      type Tiponodo is
      record
         Info: Tipoelem;
         Izq, Der: Tipoarbol;
   end record;
   
end arbol;
--package Arbolinc is new Arbol(Integer,"<", ">",temp);
-- use Arbolinc;
-- arbol:tipoarbol;