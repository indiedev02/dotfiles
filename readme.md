Here’s the **improved version of your Markdown**, with the required **post-Homebrew setup step added**, cleaned up formatting, and made user-agnostic (no hard-coded username).

---

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

After installation, run the following commands to add Homebrew to your shell:

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
curl -sS https://starship.rs/install.sh | sh
```

Add it to your shell config:

**Zsh (`~/.zshrc`):**

```bash
eval "$(starship init zsh)"
```

Restart your terminal to apply changes.

---

### Install Ghostty Terminal

Ghostty is a modern terminal emulator.

```bash
brew install --cask ghostty
```

---

