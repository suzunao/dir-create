# DirPent

## Función

Este pequeño script automatiza la creación de estructuras de directorios organizados, especialmente útil para mantener un registro detallado de la información durante la resolución de máquinas de Hack The Box (HTB) o CTF en TryHackMe (THM).

Su objetivo es ayudarte a mantener un entorno ordenado donde puedas almacenar escaneos, exploits, evidencias, scripts y herramientas utilizadas en tus prácticas de pentesting.

## Uso  

1. clona el repositorio 

```
git clone https://github.com/suzunao/dir-pent.git
```

2. Dar permisos de ejecución:

```
cd dir-pent
chmod +x dirpent.sh 

```
3. Ejecuta el script:

```
./dirPentes.sh <-htb | -thm> <NombreDeLaMaquina>
```

>Nota: Asegúrate de tener instalado el comando tree, ya que se utiliza para visualizar la estructura de carpetas.

### Estructura de carpetas.

La estructura que genera este script es la siguiente:

```
MáquinaX/
├── enumeration/
│   ├── web/
│   ├── smb/
│   └── ftp/
├── scan/               → Archivos de escaneo
├── exploit/            → Scripts de explotación (propios o ajenos)
├── evidence/
│   ├── screenshots/    → Capturas de pantalla del proceso
│   ├── credentials/    → Hashes, contraseñas extraídas
│   └── flags/          → flags.txt (user, root)
├── scripts/            → Scripts de automatización u ofuscación
├── notes.md            → Notas personales, pasos, comandos usados
└── tools/              → Herramientas externas.
```



