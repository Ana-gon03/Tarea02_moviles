# 🌍🐾 Viaje Zoológico Inmersivo  

## 📌 Descripción de la aplicación  
**Viaje Zoológico Inmersivo** es una aplicación diseñada para ofrecer una experiencia interactiva sobre el mundo natural.  
La navegación sigue una jerarquía de **tres niveles**:  

1. **Ecosistemas globales** – El usuario elige entre distintos ecosistemas (selva, desierto, océano, sabana, montaña, bosque).  
2. **Hábitats específicos** – Dentro de cada ecosistema se despliegan hábitats más detallados (ej. en la selva: Suelo del Bosque, Copa de los árboles, Río selvático).  
3. **Animales representativos** – Finalmente, el usuario descubre un animal característico de ese hábitat con información visual, textual y multimedia.  


---

## ⚙️ Instrucciones de Instalación y Ejecución

### 🔧 Prerrequisitos  
- **Android Studio**  
- **SDK de Android**  
- **Dispositivo Android** con depuración USB habilitada o **emulador configurado** 

1. **Clonar el repositorio**  
   ```bash
   git clone https://github.com/Ana-gon03/Tarea02_moviles.git

2. **Abrir en Android Studio**
 - Ejecutar Android Studio
 - Seleccionar "Open an existing Android Studio project"
 - Navegar hasta la carpeta del proyecto y seleccionarla

2. **Sincronizar dependencias**
 - Android Studio automáticamente iniciará la sincronización de Gradle 
 -Esperar a que se complete el proceso

4. **Configurar el dispositivo**
 - Conectar un dispositivo Android con depuración USB habilitada, o
 - Iniciar un emulador desde Android Studio

5. **Ejecutar la aplicación**
 - Hacer clic en el botón "Run" (▶️) o usar el atajo Shift + F10
 - Seleccionar el dispositivo de destino
 - La aplicación se instalará y ejecutará automáticamente


---

## 🎨 Decisiones de Diseño y Mecanismos de Transición

### Arquitectura de Navegación
La aplicación implementa una navegación jerárquica de tres niveles usando Activities separadas:

**Nivel 1 - Ecosistema:** Pantalla principal con vista global de ecosistemas
**Nivel 2 - Habitat:** Vista específica de hábitats dentro del ecosistema seleccionado
**Nivel 3 - Animal:** Información detallada del animal seleccionado

### Decisiones de Diseño Visual
**Paleta de Colores**

- Tonos calidos
- Azules profundos
- Grises y azules fríos

### Elementos Visuales
- Fondos degradados que evocan cada ecosistema
- Imagenes
  - Ecosistemas
  - Habitat
  - Animales
 
## Mecanismos de Transición
Transición Nivel 1 → Nivel 2 -> nIVEL 3: "Inmersión Gradual"
- **Tipo:** Transición combinada Fade + Scale
- **Efecto:** La pantalla nueva aparece gradualmente (fade-in) mientras se escala desde un tamaño pequeño al normal

---

## 🔧 Retos y Soluciones

## Reto 1: Diseño de la Interfaz de Usuario
 Al inicio del proyecto, no sabía como diseñarla. No sabía cómo crear una experiencia visual que fuera atractiva.

**Solución Implementada:**

- Estudio de aplicaciones similares para inspiración en paletas de colores y layouts
- Uso de Material Design como guía base para componentes y espaciado
- Iteración constante del diseño basándome en pruebas visuales

## Reto 2: Gestión de Dependencias y Configuración
Durante el desarrollo enfrenté múltiples errores relacionados con dependencias faltantes en el archivo pubspec.yaml. Los errores más comunes fueron:
- Conflictos de versiones entre dependencias

**Solución Implementada:**

- Ejecución sistemática de flutter pub get después de cada cambio
- Verificación de compatibilidad de versiones en pub.dev
- Uso de flutter clean y flutter pub get para limpiar caché corrupto
- Implementación gradual: añadir una dependencia a la vez y probar

## Reto3: Organización del Código y Arquitectura
Al principio, todo mi código estaba en un solo archivo, lo que hacía difícil el mantenimiento y la escalabilidad del proyecto.
  
- Separación gradual de código en archivos específicos por funcionalidad
- Creación de modelos de datos para cada entidad (Ecosistema, Hábitat, Animal)
- Implementación de widgets reutilizables para elementos comunes

---
### 📸 Capturas de Pantalla

#### 🌍 Nivel 1 – Ecosistemas
![Ecosistemas](assets/images/Ecosistema1.jpg)
![Ecosistemas](assets/images/Ecosistema2.jpg)
![Ecosistemas](assets/images/Ecosistema3.jpg)
#### 🏞️ Nivel 2 – Hábitat
#### 🐆 Nivel 3 – Animal

 
