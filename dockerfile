FROM nixos/nix:latest

RUN nix-env -i syft
RUN nix-env -i grype
RUN nix-env --upgrade
