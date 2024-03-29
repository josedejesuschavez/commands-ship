# Commands Ship

## Contenido

* [Instalación](#Instalación)
* Prerequisitos
    * [Debian](#pre-requisitos-para-uso-en-debian)
* [Estructura de carpetas para cada comando](#estructura-de-carpetas-para-cada-comando)
* Uso básico
    * [Obtener repositorios Third Party](#obtener-repositorios-third-party)
    * Crear nuevo repositorio Third Party
    * Remover repositorio Third Party
    * Crear un nuevo comando
    * Remover comando creado
    * Remover modulo creado
    * Cambiar nombre a un comando
    * Actualizar commands-ship
    * Actualizar repositorios Third Party
* Repositorios Third Party
    * [Jose de Jesus Chavez][josedejesuschavezrepo]
    * [Docker][docker-repo]
    * [Vim][vim-repo]
    * [Python][python-repo]
## Instalación:
`git clone https://github.com/josedejesuschavez/commands-ship.git $HOME/.commands-ship`

`sh $HOME/.commands-ship/install.sh`

`dotbot -c $HOME/.commands-ship/configs/symlinks.yaml -d $HOME/.commands-ship`

En varias ocasiones pedirá la contraseña del usuario administrador

## Pre-requisitos para uso en Debian
- git
- wget
- curl

## Estructura de carpetas para cada comando

![folder_structure_command](https://user-images.githubusercontent.com/2577473/112806663-44afc080-9034-11eb-864f-617dcc98bf18.png)

Dentro de cada comando se encuentra 3 archivos y una carpeta, las cuales son doc, params, scripts y la carpeta code.

Archivos:

- doc       -> En este archivo se encuentra la documentación que se visualiza en el comando dot del lado derecho de la terminal
- params    -> Este archivo nos sirve para obtener los parametros para ejecutar el archivo de script con los datos correctos
- script    -> En este archivo viene la implementación de nuestro comando

Carpeta:
- code      -> Viene en esta carpeta todos los archivos necesitarios para poder ejecutar el comando correctamente

## Obtener repositorios Third Party
Ejecutar el comando dot

![command_dot](https://user-images.githubusercontent.com/2577473/112799325-6eb0b500-902b-11eb-9424-55764258f2fe.png)

Buscar el comando GetCommandsFromGit

![find_command_getcommandsfromgit](https://user-images.githubusercontent.com/2577473/112799654-dff06800-902b-11eb-8c1d-49e68a47e3be.png)

Ingresaremos la URL de nuestro repositorio Third Party, por ejemplo [Jose de Jesus Chavez][josedejesuschavezrepo_git]

![command_getcommandsfromgit_insert_parameter_repo_url](https://user-images.githubusercontent.com/2577473/112799905-32ca1f80-902c-11eb-8e55-4954215fe5b4.png)

El siguiente parametro es el branch, este campo nos sirve para tomar como branch default de nuestro repo Third Party

![command_getcommandsfromgit_insert_parameter_branch](https://user-images.githubusercontent.com/2577473/112800328-bb48c000-902c-11eb-90f7-2faa924cb563.png)

Como siguiente parametro ingresaremos el alias, el alias nos sirve para identificar el repositorio Third Party, dentro de los demas repositorios

![command_getcommandsfromgit_insert_parameter_alias](https://user-images.githubusercontent.com/2577473/112801195-d49e3c00-902d-11eb-8340-f02cd8da95e8.png)

Ejecutamos de nueva cuenta el comando dot

![command_dot](https://user-images.githubusercontent.com/2577473/112799325-6eb0b500-902b-11eb-9424-55764258f2fe.png)

Ya se mostrara con exito los comandos Third Party

![success_get_commands_third_party](https://user-images.githubusercontent.com/2577473/112805981-855b0a00-9033-11eb-98e4-27eb7ae6d607.png)

[josedejesuschavezrepo]: https://github.com/josedejesuschavez/commands-public
[docker-repo]: https://github.com/josedejesuschavez/commands-docker
[vim-repo]: https://github.com/josedejesuschavez/commands-vim
[python-repo]: https://github.com/josedejesuschavez/commands-python
[josedejesuschavezrepo_git]: https://github.com/josedejesuschavez/commands-public.git
