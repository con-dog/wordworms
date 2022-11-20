# Wordworms

## Containers

    - Each "service" lives in its own container
    - Compose spec specifies Dockerfile build target
    - Containers are usually multistage (base / dev / prod)
    - Development happens inside the container environment

## Building for development

```bash
bash up.sh -m dev
```

## Building for prod

```bash
bash up.sh
```
