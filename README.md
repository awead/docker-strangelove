# docker-strangelove
## or: How I Learned to Stop Worrying and Love the Container 

### What?

A self-paced tutorial focused on using docker as a primary development tool. You'll build interdependent services as
containers, putting them together first with docker-compose, and then with kubernetes. The main point is to see the
evolution from containers as individual virtual machines to their orchestration as components in a larger, more complex
system.

### Pre-requisites

This is built on Macos, so the dependencies are geared towards that, but any *nix will also work.

* [Docker Desktop](https://www.docker.com/products/docker-desktop/)
* [Homebrew](https://brew.sh/)

Install via `brew`

```
brew install kubectl kubectx minikube
```

Ensure that you have the command-line tools from Docker Desktop installed.


