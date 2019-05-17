# Development environment images

These are dockerfiles I created for development

## Build

Don't forget the last "`.`".

``` sh
docker build -f <name.dockerfile> -t <your:tag> .
```

## Run

``` sh
docker run <options> <your_image>
```

1. Options
    - `-i`: show terminal screen
    - `-p`: port forward to host machine, `-p host_port:container_port`
    - `-t`: enable input
    - `-v`: mount folder into container, to mount current folder:
        - <details><summary>Linux or Windows PowerShell</summary>

            ``` sh
            -v ${pwd}:/path/folder_name
            ```

        </details>

        - <details><summary>Windows CMD</summary>

            ``` sh
            -v "%cd%":/path/folder_name
            ```

        </details>

        - <details><summary>Mac OS X</summary>

            ``` sh
            -v $PWD:/path/folder_name
            ```

        </details>

    - `-w`: working directory, `-w /path/folder_name`