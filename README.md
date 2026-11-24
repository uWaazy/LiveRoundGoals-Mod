<div align="center">

# ⚽ LiveRoundGoals v1.3

**Real-Time Broadcast Goal Notifications & Live Round Results for eFootball PES 2021 (Sider)**

[![Version](https://img.shields.io/badge/version-1.3-00e676?style=for-the-badge)](../../releases)
[![PES 2021](https://img.shields.io/badge/eFootball-PES%202021%20%2F%20FL-132544?style=for-the-badge)](#compatibility)
[![Sider](https://img.shields.io/badge/Sider-LuaJIT%20%2B%20D3D11-f7c600?style=for-the-badge)](#installation)

**Languages:** 🇺🇸 **English** | 🇧🇷 [Português (Brasil)](README.pt-BR.md) | 🇪🇸 [Español](README.es.md)

</div>

---

## ✨ Features

- **📺 TV Broadcast Goal Alerts ("Gol na Rodada"):**
  - Real-time Direct3D 11 / Direct2D pop-up cards whenever a goal is scored in parallel Master League, League, or Cup matches.
  - Dynamic competition themes for **25+ official tournaments** (UEFA Champions League, Europa League, UEFA Super Cup, UEFA Euro, FIFA World Cup, FIFA Club World Cup, CONMEBOL Libertadores, Sul-Americana, Recopa, Copa América, Brasileirão Série A/B/C/D, Copa do Brasil, Supercopa do Brasil, Paulistão, Premier League, EFL Championship, FA Cup, LaLiga, LaLiga Hypermotion, Copa del Rey, Serie A, Serie BKT, Coppa Italia, Bundesliga, DFB-Pokal, Ligue 1, Ligue 2 BKT, Coupe de France, Eredivisie, KNVB Beker, Liga Portugal, Taça de Portugal, Liga Profesional Argentina, Copa Argentina, AFC Champions League, and more) with real club crests and authentic `Competition.bin` league logos.
  - **Live Broadcast Match Highlights (`BRACE` / `HAT-TRICK!` / `ROUT`):** Automatically tags multi-goal scorers (`2 GOLS` / `BRACE` / `DOBLETE` and `HAT-TRICK!`) and 3+ goal blowouts (`• GOLEADA` / `• ROUT`) on both live goal cards and the 2-column round panel, grouping multiple goals by the same scorer on one compact broadcast line.
  - **Live Standings Delta (`▲` / `▼`):** Shows each club's live table position and how many places they climbed or dropped after each goal.
  - **Group-Stage Smart Filter (Default ON):** During group-stage matches, live TV alerts automatically notify only goals from **your group** by default (switchable in-game via Sider overlay `[6]`).
  - **Multi-Language Overlays (`PT-BR` / `EN` / `ES`) with Smart Game Language Auto-Detection:** Automatically detects your in-game language (`PT-BR` / `PT-PT` -> `PT`, `EN-UK` / `EN-US` -> `EN`, `ES` / `LATAM` -> `ES`) on first launch (`lang=auto`), and lets you switch all overlays live with **`[3]`** in the Sider menu or via `lang=auto` / `pt` / `en` / `es` in `modules\LiveRoundGoals\config.ini`.
  - **Persistent Goal Sound & Volume Control (`[4]` / `[5]`):** Bundled goal alert chime synchronized with card entrance (`0%` Mute to `100%`, saved to `config.ini`; supports custom audio override at `content\LiveRoundGoals\gol.wav`).
- **🫥 Smart Ball-Occlusion Auto-Fade:**
  - Automatically turns transparent (`25%`) only when the player carrying the ball passes directly over the corner where the card is displayed.
- **📊 Integrated Round Results Panel (Pause / Halftime / Fulltime):**
  - Starts **disabled by default** on a compact bottom bar so native match stats remain 100% visible, and slides smoothly in sync with PES 2021's menu animation.
  - Press **`R3` / `L3`** to open the **2-Column Broadcast Grid** showing all remaining/simultaneous matches of the round with live scores, goal scorers, and group/league positions.
  - **100% Synced with Master League:** Every score shown in the live alerts and round panel is written directly into Master League's official standings and fixture table.

---

## 🖼️ Previews

<p align="center">
  <img src="Previews/preview_01_champions_league.png" alt="UEFA Champions League (EN)" width="48%"/>
  <img src="Previews/preview_02_europa_league.png" alt="UEFA Europa League (ES)" width="48%"/>
</p>
<p align="center">
  <img src="Previews/preview_03_copa_do_mundo.png" alt="FIFA World Cup (PT-BR)" width="48%"/>
  <img src="Previews/preview_04_paulistao.png" alt="Paulistão (PT-BR)" width="48%"/>
</p>
<p align="center">
  <img src="Previews/preview_05_brasileirao_serie_a.png" alt="Brasileirão Série A (PT-BR)" width="48%"/>
  <img src="Previews/preview_06_libertadores.png" alt="CONMEBOL Libertadores (ES)" width="48%"/>
</p>
<p align="center">
  <img src="Previews/preview_07_premier_league.png" alt="Premier League (EN)" width="48%"/>
</p>
<p align="center">
  <img src="Previews/preview_08_painel_resultados_rodada.png" alt="2-Column Broadcast Round Results Panel" width="96%"/>
</p>

---

## 📦 Installation

> Compatible with **any PES 2021 patch** (BMPES, SmokePatch, Football Life, VirtuaRED, Dream Patch, etc.) running **Sider**.

1. Download the latest **`LiveRoundGoals_v1.3.zip`** from the [Releases](../../releases) tab (or copy the `modules` folder from this package).
2. Extract/copy the **`modules`** folder into your main PES 2021 / Sider directory (where `sider.ini` is located).
3. Open **`sider.ini`** in Notepad and ensure these options are enabled:
   ```ini
   luajit.ext.enabled = 1
   match-stats.enabled = 1
   ```
4. Add this line to your Lua modules list in **`sider.ini`**:
   ```ini
   lua.module = "LiveRoundGoals.lua"
   ```
5. Save `sider.ini` and launch the game through **Sider**.

---

## 🎮 Controls

### Inside Pause / Halftime / Fulltime Menu
| Input | Action |
| :--- | :--- |
| **`R3`** (Right Stick Click) / **`]`** | Open Round Results / Next Page |
| **`L3`** (Left Stick Click) / **`[`** | Previous Page / Back to Stats |
| **`Y` / Triangle** or **`SELECT`** or **`F10`** | Hide / Show Overlay |

### During Match & Sider Overlay (`Spacebar`)
| Input | Action |
| :--- | :--- |
| **`SELECT + L3`** or **`F10`** | Hide / Dismiss Live Goal Alerts |
| **`F9`** | Trigger Test Goal Notification *(3s cooldown)* |
| **`[3]`** *(in Sider menu)* | Switch Language (`PT-BR` / `EN` / `ES` — saved to `config.ini`) |
| **`[4]` / `[5]`** *(in Sider menu)* | Decrease / Increase Goal Alert Sound Volume (`-10%` / `+10%`) |
| **`[6]`** *(in Sider menu)* | Toggle Group Filter *(My Group Only [Default] / My Group + Menu / Full Round)* |
| **`[7]`** *(in Sider menu)* | Cycle Screen Corner |
| **`[8]` / `[9]`** *(in Sider menu)* | Decrease / Increase Card Scale (`-5%` / `+5%`) |
| **`[-]` / `[=]`** & **`PgUp` / `PgDn`** *(in Sider menu)* | Fine-tune X / Y Position |
| **`[0]`** *(in Sider menu)* | Toggle Smart Ball Auto-Fade |
| **`[BACKSPACE]`** *(in Sider menu)* | Reset Default Layout |

---

## 🛡️ Compatibility & Supported Patches

- **Auto-Detected Patches (Dedicated Club Databases + Live Career RAM + Direct `.cpk` & `livecpk` Emblem Loader):**
  - ✅ **BMPES**
  - ✅ **SP Football Life 2027 (`FL27` / `FL26` / `FL25`)**
  - ✅ **Gogosz Patch (Conmebol & World)**
  - ✅ **MARFUT Patch (World)**
  - ✅ **VirtuaRED / Dream Patch / SmokePatch / Other Sider Patches** *(automatic live career RAM club discovery up to 3,200 slots + native `.cpk` emblem reader)*
- Supports **Steam v1.07.02** and **CPY v1.1.0** (`PES2021.exe` & `FL_2027.exe`) executables with any Sider 7.x build and XInput or DirectInput (DualSense/DualShock/USB) controllers.
- Native C++ / Direct2D / D3D11 rendering with integrity verification sealed between `LiveRoundGoals.lua` and `LiveRoundGoals.dll`. Do not rename or modify `LiveRoundGoals.lua`.

---

## 📜 License & Terms of Use

**Copyright © 2026 uWaazy — All Rights Reserved.** See the full [LICENSE](LICENSE) file.

> 🆓 **100% FREE MOD:** LiveRoundGoals is completely free. **If you paid anyone for this mod, you were scammed.**

- ✅ **Allowed:** Free download and personal, non-commercial offline use in PES 2021 / SP Football Life.
- ❌ **Prohibited without permission from uWaazy:** Re-uploading/mirroring files, bundling into third-party patches/modpacks *(patch creators interested in native integration must contact uWaazy first)*, commercial use/resale, or reverse-engineering/modifying `LiveRoundGoals.dll` and `LiveRoundGoals.lua`.
- ⚠️ **Disclaimer:** Provided **"AS IS"** without warranty. Intended strictly for offline modes (Master League, League, Cup).
