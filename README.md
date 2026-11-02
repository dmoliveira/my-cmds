# open_tabs

A simple and cross-platform script to open multiple websites in **Google Chrome** from a `.txt` list.  
Compatible with **macOS** and **Ubuntu/Linux**.

---

## 🚀 Usage

```bash
./open_tabs.sh data/news-local.txt
```

or simply run without arguments to use the default list (`./sites.txt`):

```bash
./open_tabs.sh
```

Each `.txt` file should contain one URL per line.  
You can create different themed lists under the `data/` folder (e.g. `news-local.txt`, `news-tech.txt`, `discounts.txt`, etc).

### Spanish learning sessions

Configure the `open_tabs` function in `zsh_alias` with your repository path and source it from `~/.zshrc`. Then use:

```bash
open_tabs spanish           # all Spanish topics
open_tabs spanish learning  # one topic
open_tabs spanish ai
```

Topics are `learning`, `news`, `travel`, `science`, `ai`, `nintendo`, and `politics`. Edit the corresponding file in `data/spanish/` to add or remove links. Add another topic by creating a new `.txt` file in that directory, with one URL per line; it will automatically be included in `open_tabs spanish` and available as `open_tabs spanish <filename>` (without `.txt`).

Without the shell function, pass one or more lists directly: `./open_tabs.sh data/spanish/learning.txt data/spanish/news.txt`.

---

## 🧩 Features

- ✅ Works on **macOS** and **Linux**
- 🗂️ Supports **category-based lists** (AI, Tech, Finance, News, etc.)
- 💨 Opens all URLs in a **new Chrome window**
- 💬 Skips empty lines and comments starting with `#`
- ⚙️ Simple alias integration for Zsh (see `zsh_alias`)

---

## 🧰 Installation

1. Clone or download this repo:
   ```bash
   git clone https://github.com/yourname/open_tabs.git
   cd open_tabs
   ```

2. Make the script executable:
   ```bash
   chmod +x open_tabs.sh
   ```

3. (Optional) Add an alias in your `~/.zshrc`:
   ```bash
   alias open_tabs="/Users/$(whoami)/Codes/Projects/my-cmds/open_tabs.sh"
   ```

Now you can run from anywhere:
```bash
open_tabs data/news-tech.txt
```

---

## 📂 Folder Structure

```
.
├── open_tabs.sh          # Main script
├── zsh_alias             # Example alias setup
├── data/
│   ├── news-local.txt
│   ├── news-global.txt
│   ├── news-finance.txt
│   ├── news-tech.txt
│   ├── news-ai.txt
│   ├── discounts.txt
│   └── nintendo.txt
└── LICENSE
```

---

## ❤️ Support

If this project saves you time, consider supporting with a coffee ☕ or donation via Stripe:

[![Donate via Stripe](https://img.shields.io/badge/Donate-Stripe-blue?logo=stripe&logoColor=white)](https://buy.stripe.com/8x200i8bSgVe3Vl3g8bfO00)

**Author:** Diego Marinho
