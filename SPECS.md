# SPECS - AgentHub Admin Panel (Prototipo HTML)

## 1) Descripcion del producto

AgentHub es una plataforma SaaS para alquiler de agentes de IA preconfigurados con capacidades (skills) que se asignan a tareas de negocio.

Este prototipo representa el panel de administracion interno usado por el usuario administrador de AgentHub, responsable de:
- monitorear metricas operativas y financieras,
- gestionar usuarios, agentes y skills,
- revisar contrataciones,
- auditar y resolver errores de ejecucion.

El objetivo del prototipo es servir como referencia visual e interactiva para una futura implementacion conectada a backend.

## 2) Stack tecnologico y restricciones

- HTML5 semantico (estructura principal del panel).
- Tailwind CSS cargado via CDN para todo el estilo visual.
- JavaScript vanilla para toda la interactividad (sin frameworks).
- Datos completamente hardcodeados (sin fetch, sin API, sin backend).
- Sin archivos CSS personalizados.
- Sin atributos style en linea.
- Sin React, Vue, Angular, jQuery, ni herramientas de build.

## 3) Estructura global del layout

- Layout principal con sidebar persistente a la izquierda y area de contenido a la derecha.
- Barra superior fija en el panel de contenido con titulo de seccion y toggle claro/oscuro.
- Navegacion lateral con 6 enlaces internos (anclas) y estado activo visible.
- El contenido principal se divide en 6 secciones semanticas con identificador unico.
- El layout debe ser usable en escritorio y tablet mediante utilidades responsive de Tailwind.

## 4) Especificaciones por seccion

### 4.1 Dashboard

1. Grid responsive de metricas 2x2 en tablet/escritorio y 1 columna en movil, con 4 tarjetas: ingresos del mes, perdida por descuentos/cupones, agentes activos y agentes fallando.
2. Cada tarjeta incluye: icono, etiqueta de metrica y valor hardcodeado; usa color de acento distinto por tipo de metrica y sombra sutil.
3. Debajo del grid aparece un bloque de ancho completo que actua como placeholder del grafico semanal (borde discontinuo y etiqueta centrada).
4. El placeholder mantiene altura minima visible para conservar jerarquia visual incluso en viewport pequeno.

### 4.2 Gestion de usuarios

1. Tabla con al menos 5 usuarios hardcodeados y columnas: Nombre, Email, Plan y Estado (badge).
2. Cada fila contiene un boton de acciones (icono de tres puntos) que abre un dropdown contextual con: Ver detalle y Eliminar.
3. Ver detalle abre modal overlay con registro completo del usuario (datos ampliados de contacto, plan y estado).
4. El modal de usuario se cierra con boton de cierre y tambien al hacer clic en el backdrop.

### 4.3 Gestion de agentes

1. Listado de al menos 4 agentes hardcodeados con: nombre del agente, propietario y badge de estado (Activo/Inactivo/Fallando).
2. Cada item contiene una lista de skills colapsada por defecto; un control expandible alterna expandir/colapsar con transicion suave.
3. Cada agente incluye dropdown de acciones con Configurar y Eliminar.
4. Configurar abre modal con el prompt de sistema del agente dentro de un textarea editable.

### 4.4 Skills

1. Bloque explicativo superior define que una skill es una capacidad modular que amplifica lo que puede hacer un agente.
2. Catalogo de al menos 4 skills hardcodeadas mostrando: nombre, descripcion breve y contador de agentes habilitados.
3. Cada skill incluye dropdown de acciones con Ver detalle y Eliminar.
4. Ver detalle abre modal con informacion ampliada de la skill (descripcion, casos de uso y numero de agentes vinculados).

### 4.5 Contrataciones de agentes

1. Tabla con al menos 4 contratos (activos y pasados) y columnas: Cliente, Agente, Skills contratadas, Fechas (inicio/fin), Importe pagado.
2. Cada fila tiene dropdown de acciones con Ver detalle y Eliminar.
3. Ver detalle abre modal con desglose completo del contrato, incluyendo skills individuales y precio por skill.
4. El contenido hardcodeado reutiliza nombres de agentes existentes para consistencia transversal.

### 4.6 Log de errores

1. Listado con al menos 6 entradas hardcodeadas: timestamp, agente, tipo de error, severidad y descripcion breve.
2. Tipo/severidad se representa visualmente con badges de color (por ejemplo: warning, critico, timeout, integracion).
3. Cada entrada contiene dropdown de acciones con Ver detalle y Marcar como resuelto.
4. Ver detalle abre modal con traza completa del error y contexto operativo asociado.

## 5) Inventario de componentes reutilizables

- Sidebar de navegacion persistente.
- Topbar con titulo dinamico de seccion y toggle de modo oscuro.
- Tarjeta de metrica (icono, etiqueta, valor, acento).
- Tabla de datos reutilizable (cabecera + filas + celda de acciones).
- Dropdown de acciones (boton trigger + menu contextual).
- Modal overlay reutilizable (cabecera, cuerpo, boton cierre, backdrop).
- Badge de estado/tipo (usuario, agente, error).
- Item de lista de agente con bloque colapsable de skills.
- Tarjeta de skill (nombre, descripcion, contador, acciones).
- Placeholder de grafico semanal.

## 6) Reglas de interaccion global

- Un unico dropdown abierto a la vez; abrir otro cierra el anterior.
- Todos los dropdowns se cierran al hacer clic fuera de su area.
- Todos los modales se cierran por boton de cierre y por clic en backdrop.
- Los colapsables de skills inician cerrados y alternan estado con transicion visible.
- El toggle claro/oscuro aplica clase dark al raiz del documento y actualiza toda la UI con utilidades dark:.
- La preferencia de modo (claro/oscuro) se persiste en localStorage.

## 7) Criterios de aceptacion

1. Existe sidebar persistente con acceso visible a las 6 secciones del panel.
2. El Dashboard muestra exactamente 4 tarjetas de metrica hardcodeadas y un placeholder de grafico semanal.
3. Gestion de usuarios incluye minimo 5 filas con dropdown funcional por fila.
4. Ver detalle en usuarios abre modal con informacion completa y el modal cierra por boton y por backdrop.
5. Gestion de agentes incluye minimo 4 agentes con estado y skills colapsadas por defecto.
6. El colapsable de skills en agentes se expande y colapsa con transicion visible al hacer clic.
7. Configurar en agentes abre modal con textarea editable del prompt del agente.
8. Seccion Skills incluye explicacion contextual y al menos 4 skills con contador de adopcion.
9. Ver detalle en Skills abre modal de detalle; cada skill mantiene dropdown funcional.
10. Contrataciones muestra al menos 4 contratos con cliente, agente, skills, fechas e importe.
11. Ver detalle en contrataciones abre modal con desglose por skill y precio individual.
12. Log de errores muestra al menos 6 entradas con badge de tipo/severidad codificado por color.
13. Ver detalle en errores abre modal con traza completa; Marcar como resuelto esta presente en dropdown.
14. Todos los dropdowns cierran al hacer clic fuera de su contenedor.
15. Todos los modales cierran con boton de cierre y clic en backdrop.
16. El modo oscuro/claro cambia toda la interfaz y su estado persiste al navegar por las secciones.
17. Se usan solo clases Tailwind via CDN, sin CSS externo ni estilos inline.
18. Toda la interactividad esta implementada con JavaScript vanilla.
19. El HTML usa etiquetas semanticas adecuadas: nav, header, main, section, table y similares.
20. Los nombres hardcodeados de agentes son consistentes entre Gestion de agentes, Contrataciones y Log de errores.

