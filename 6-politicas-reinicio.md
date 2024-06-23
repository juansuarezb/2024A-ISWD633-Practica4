# Políticas de reinicio

## Para esta parte de la práctica
1. Usa el archivo Dockerfile que se encuentra en cada carpeta con el nombre de la política de reinicio para crear una imagen. Analiza las instrucciones de cada Dockerfile 
2. Usa la imagen para ejecutar un contenedor agregando la política respectiva y observar lo que sucede verificando el cumplimiento de la política de reinicio

### restart = no
No reinicia el contenedor bajo ninguna razón. Esta es la política por default
```
docker run -d --name <nombre contenedor> <nombre imagen>
```

### restart = always

Si se detiene manualmente, no se reinicia. El contenedor es iniciado nuevamente cuando el demonio (servicio) reinicia

```
docker run -d --name <nombre contenedor> --restart always <nombre imagen>
```

### restart = unless-stopped

Se reinicia siempre y cuando no se detenga manualmente

```
docker run -d --name <nombre contenedor> --restart unless-stopped <nombre imagen>
```

### restart = on-failure

Se reinicia únicamente cuando hay una falla en la ejecución del código. No se reinicia si el contenedor se detiene manualmente.

```
docker run -d --name <nombre contenedor> --restart on-failure <nombre imagen>
```
