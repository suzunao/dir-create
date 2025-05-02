# DirPent

## Función

DirPent es un pequeño script Bash que automatiza la creación de una estructura de directorios organizada, pensada para facilitar el registro, análisis y documentación durante la resolución de máquinas en plataformas como Hack The Box (HTB) y TryHackMe (THM).

Su objetivo principal es ayudarte a mantener un entorno limpio y bien estructurado donde puedas almacenar escaneos, exploits, evidencias, scripts, herramientas y notas utilizadas en tus prácticas de pentesting.

## Uso  

1. clona el repositorio:

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

> Nota: Asegúrate de tener instalado el comando tree, ya que se utiliza para visualizar la estructura de carpetas.

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
│   └── credentials_and_flags/    → Hashes, contraseñas extraídas y flags.txt (user, root)
├── scripts/            → Scripts de automatización u ofuscación
├── notes.md            → Notas personales, pasos, comandos usados
└── tools/              → Herramientas externas
```



