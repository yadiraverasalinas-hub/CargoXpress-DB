# CargoXpress - Base de Datos

Proyecto académico desarrollado en la Universidad Peruana de Ciencias Aplicadas (UPC)  
Curso: Base de Datos | NRC: 16039 | Periodo: 2026-10

## Integrantes
- Cordova Salcedo, Juan Pablo
- Chile Quiroga, Hildemaro
- Pereira Mamani, Juan Andree
- Perez Ochoa, Jeremias Calet
- Vera Salinas, Yadira Yajaira

## Estructura del repositorio

### Base de datos relacional (SQL Server)
| Archivo | Descripción |
|---|---|
| `relacional/01_create_tables.sql` | Creación de tablas, claves primarias, foráneas y restricciones |
| `relacional/02_insert_data.sql` | Carga de datos de prueba |

### Base de datos no relacional (MongoDB)
| Archivo | Descripción |
|---|---|
| `no_relacional/01_create_collections.js` | Creación de colecciones con validación de esquema |
| `no_relacional/02_insert_data.js` | Carga de documentos de prueba |

## Cómo ejecutar

**SQL Server:**
1. Abrir SQL Server Management Studio
2. Ejecutar primero `01_create_tables.sql`
3. Luego ejecutar `02_insert_data.sql`

**MongoDB:**
1. Abrir MongoDB Compass o mongosh
2. Ejecutar primero `01_create_collections.js`
3. Luego ejecutar `02_insert_data.js`
