# Dockerised-Neovim

A fast, modern, and highly customized **Neovim** setup designed for efficient development inside a Docker environment.

The prebuilt Docker image is available on Docker Hub:

```bash
https://hub.docker.com/r/sandipduley/neovim-udev
```

---

#### The Dockerfile is used to build the base image, after which the container is configured and exported as the final image.

---

## Usages

##### Simple Pull

```bash
docker pull sandipduley/neovim-udev
```

##### One-Liner Run

```bash
docker run -it --name custom-name sandipduley/neovim-udev /bin/bash
```

---
