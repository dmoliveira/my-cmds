# Data Folder

This folder contains curated URL lists used by the `open_tabs.sh` script.  
Each file represents a category or session of sites to open in a new Chrome window.

---

## 🗂️ File Descriptions

| File | Purpose |
|------|----------|
| **news-local.txt** | Australian news — e.g. ABC, 7News, The Age, News.com.au |
| **news-global.txt** | Global & international news — BBC, Reuters, Bloomberg, Al Jazeera |
| **news-finance.txt** | Business and finance — AFR, SmartCompany, WSJ, AusBiz |
| **news-tech.txt** | Tech updates — TechCrunch, Wired, Verge, ZDNet |
| **news-ai.txt** | AI and ML industry sources — OpenAI, DeepLearning.ai, HuggingFace, etc. |
| **discounts.txt** | Top Australian deal and coupon sites — OzBargain, Groupon, LuxuryEscapes |
| **nintendo.txt** | Cheapest Nintendo Switch game listings across AU retailers |

---

## ✏️ Format Rules

- One URL per line.
- Lines starting with `#` are ignored (can be used for comments).
- Optionally, group sections with `[category]` headers for readability.

Example:

```ini
# My favourite tech sources
[tech]
https://techcrunch.com/
https://www.theverge.com/
https://arstechnica.com/
```

---

## 💡 Tip

Combine this with aliases or scripts like:

```bash
open_tabs data/news-local.txt
open_tabs data/news-tech.txt
open_tabs data/discounts.txt
```

You can use it daily to start your browsing sessions instantly.
