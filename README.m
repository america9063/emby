# Guía de Instalación de Emby Server en Linux (Debian/Ubuntu)

Esta guía te proporcionará los pasos necesarios para instalar Emby Server en tu sistema basado en Debian o Ubuntu.

---

## 🚀 Instalación Básica de Emby Server

Sigue estos comandos paso a paso en tu terminal:

1.  **Actualizar el sistema de paquetes:**
    ```bash
    sudo apt-get update
    ```

2.  **Descargar e instalar el paquete .deb de Emby Server:**
    Este comando descarga la versión `4.8.x.x` del paquete `deb` de Emby y lo instala.
    ```bash
    sudo wget [https://github.com/MediaBrowser/Emby.Releases/releases/download/4.8.8.0/emby-server-deb_4.8.8.0_amd64.deb](https://github.com/MediaBrowser/Emby.Releases/releases/download/4.8.8.0/emby-server-deb_4.8.8.0_amd64.deb) && sudo dpkg -i emby-server-deb_4.8.8.0_amd64.deb
    ```
    *Nota: Si encuentras errores de dependencias después de `dpkg -i`, puedes ejecutar `sudo apt-get install -f` para resolverlos.*

3.  **Instalar Emby Server (resolver dependencias si es necesario):**
    ```bash
    sudo apt-get install emby-server
    ```

4.  **Actualizar nuevamente el sistema de paquetes (recomendado después de instalaciones):**
    ```bash
    sudo apt-get update
    ```

5.  **Iniciar el servicio de Emby Server:**
    ```bash
    sudo systemctl start emby-server
    ```

6.  **Detener el servicio de Emby Server (opcional, si necesitas hacer configuraciones antes de habilitar):**
    ```bash
    sudo systemctl stop emby-server
    ```

7.  **Habilitar Emby Server para que inicie automáticamente al arrancar el sistema:**
    ```bash
    sudo systemctl enable emby-server
    ```

---

## 🌐 Acceso a la Interfaz Web de Emby

Una vez que Emby Server esté en ejecución, puedes acceder a su interfaz web desde tu navegador:
