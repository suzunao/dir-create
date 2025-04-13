# dir-script

## Función

Este pequeño script automatiza la creación de estructuras de directorios organizados para facilitar el registro y análisis de información durante la resolución de máquinas de Hack The Box (HTB) o CTF en TryHackMe (THM).

Su objetivo es ayudarte a mantener un entorno ordenado donde puedas almacenar escaneos, exploits, evidencias, scripts y herramientas utilizadas en tus prácticas de pentesting.

## Uso  

clona el repositorio 

```
git clone 
cd dir-create
```

dar permisos:

```
chsmod -x dirPentes.sh 
```

nota:  instala  el tree ya que se usa para visualizar las carpetas.

```
./dirPentes.sh <-htb o -thm> <NombreDeLaMaquina>
```

### Estructura de carpetas.

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



