FROM archlinux

# --- Keep container interactive by default ---
CMD ["/bin/bash"]

# --- Setting working dir ---
WORKDIR /root

# Install everything in ONE layer, clean caches
RUN pacman -Syy --noconfirm && \
  pacman -S --noconfirm --needed \
  neovim lua vim starship zoxide bat nodejs npm git fzf ripgrep gcc cmake make wget yazi curl shellcheck lazygit && \
  # Clean pacman cache to reduce image size
  pacman -Scc --noconfirm

# Install Node Language Servers
RUN npm install -g \
  vscode-langservers-extracted 

LABEL maintainer="Sandip Duley"
LABEL version="2.0"
