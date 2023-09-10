# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.245.0/containers/rust/.devcontainer/base.Dockerfile

# [Choice] Debian OS version (use bullseye on local arm64/Apple Silicon): buster, bullseye
# ARG VARIANT="buster"
# FROM rust:1.72.0-alpine3.17

# [Optional] Uncomment this section to install additional packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

FROM rust:1.72.0-bookworm

WORKDIR /usr/src/app
COPY . .

RUN cargo install --path .

CMD ["app"]
