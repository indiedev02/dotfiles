# 🖥️ MacBook Setup Guide

A quick guide to get your MacBook ready for development.

---

## 🔑 GitHub Setup

### Generate SSH Key

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

Press **Enter** to accept the default location and optionally add a passphrase.

### Copy SSH Public Key

```bash
cat ~/.ssh/id_ed25519.pub
```

Add it to **GitHub → Settings → SSH and GPG keys**.

---

## 📦 Basic Installation

### Install Homebrew

Homebrew is the package manager for macOS.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Configure Homebrew Environment (Apple Silicon)

After installation, add Homebrew to your shell environment:

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Verify installation:

```bash
brew --version
```

---

### Install Raycast

Raycast is a productivity launcher for macOS.

* Download from: [https://www.raycast.com/](https://www.raycast.com/)
* Grant permissions when prompted

---

### Install Starship Prompt

Starship is a fast and customizable shell prompt.

```bash
brew install starship
```
Then add Starship to your shell config:
```bash
eval "$(starship init zsh)"
```

Restart your terminal to apply changes

---

### Install Ghostty Terminal

Ghostty is a modern, fast terminal emulator.

```bash
brew install --cask ghostty
```

---

### Install GNU Stow

GNU Stow helps manage dotfiles using symlinks.

```bash
brew install stow
```

---

### Install Neovim

Neovim is a powerful, extensible terminal-based text editor.

```bash
brew install neovim
```

Verify installation:

```bash
nvim --version
```

---

### Install tmux

tmux is a terminal multiplexer for managing multiple sessions and panes.

```bash
brew install tmux
```

Verify installation:

```bash
tmux -V
```

---

## 🔗 Apply Dotfiles with Stow

Once all tools are installed and your dotfiles repository is cloned, run the following **from the root of your dotfiles directory**:

```bash
stow .
```

This will symlink all configured dotfiles into your home directory.

---

## ✅ Optional Next Steps

### Configure Git

```bash
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
```
