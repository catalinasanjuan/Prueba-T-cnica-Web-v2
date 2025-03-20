# Sistema de Gestión de Usuarios

Un sistema de gestión de usuarios con todas las funciones, desarrollado con React, TypeScript y Postgre con servicio BaaS en Supabase.

## Características

- Autenticación con JWT
- Gestión de usuarios (operaciones CRUD)
- Búsqueda y paginación
- Diseño responsivo
- Interfaz moderna con Tailwind CSS
- Rutas protegidas
- Gestión de perfiles
- Actualizaciones en tiempo real

## Tecnologías utilizadas

- React 18
- TypeScript
- Tailwind CSS
- Postgre y Supabase (Backend y autenticación)
- Vite (Herramienta de compilación)
- React Router v6
- Lucide React (Íconos)
- React Hot Toast (Notificaciones)

## Cómo empezar

1. Clonar el repositorio: https://github.com/catalinasanjuan/Prueba-T-cnica-Web-v2.git
2. Instalar dependencias:
   ```bash
   npm install
   ```

3. Configurar las variables de entorno:
   User: admin@example.com
   password:123456
   ```

4. Iniciar el servidor de desarrollo:
   ```bash
   npm run dev
   ```

## Estructura del proyecto

```
src/
├── components/     # Componentes reutilizables
├── contexts/       # Contextos de React para el estado global
├── pages/          # Páginas de la aplicación
├── lib/            # Configuración de Supabase y otras utilidades
├── styles/         # Archivos CSS y Tailwind
├── main.tsx        # Punto de entrada de la aplicación
```


