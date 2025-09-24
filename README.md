# My Blog

Un blog completo desarrollado con Ruby on Rails que permite a los usuarios crear, gestionar y publicar artículos con sistema de comentarios.

## ✨ Características

- **Gestión de Artículos**: Crear, editar, eliminar y visualizar artículos
- **Estados de Publicación**: Artículos en "Borrador" o "Publicado" con botones dinámicos para cambiar estado
- **Autenticación**: Sistema de usuarios con Devise
- **Autorización**: Control de permisos con Pundit (solo el dueño puede editar/eliminar)
- **Comentarios**: Los usuarios autenticados pueden comentar artículos
- **Filtrado Inteligente**: 
  - Usuarios ven sus artículos (borrador + publicados) + artículos publicados de otros
  - Usuarios no autenticados solo ven artículos publicados
- **Interfaz Moderna**: Diseño responsivo con TailwindCSS
- **Notificaciones**: Mensajes visuales para confirmar acciones

## 🛠️ Tecnologías

- **Ruby on Rails 8**
- **Devise** (autenticación)
- **Pundit** (autorización)
- **TailwindCSS** (estilos)
- **SQLite3** (base de datos)
- **Turbo Rails & Stimulus** (interactividad)

## 🚀 Instalación

```bash
# Clonar repositorio
git clone https://github.com/LissEbalo/My_Blog.git
cd My_Blog

# Instalar dependencias
bundle install

# Configurar base de datos
rails db:migrate

# Iniciar aplicación
bin/dev
```

La aplicación estará disponible en `http://localhost:3000`

## 📝 Uso

1. **Registrarse/Iniciar sesión** para crear artículos
2. **Crear artículos** que inician en estado "Borrador"
3. **Publicar artículos** usando el botón verde "Publicar"
4. **Cambiar a borrador** usando el botón amarillo "Pasar a Borrador"
5. **Comentar** en artículos (requiere autenticación)

## 🔒 Permisos

- Solo el **dueño del artículo** puede editarlo, eliminarlo o cambiar su estado
- Los **usuarios no autenticados** solo pueden ver artículos publicados
- Los **usuarios autenticados** ven sus propios artículos + artículos publicados de otros