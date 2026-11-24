<div align="center">

# ⚽ LiveRoundGoals v1.3

**Notificaciones de Gol en la Jornada estilo TV y Resultados en Tiempo Real para eFootball PES 2021 (Sider)**

[![Versión](https://img.shields.io/badge/versi%C3%B3n-1.3-00e676?style=for-the-badge)](../../releases)
[![PES 2021](https://img.shields.io/badge/eFootball-PES%202021%20%2F%20FL-132544?style=for-the-badge)](#compatibilidad)
[![Sider](https://img.shields.io/badge/Sider-LuaJIT%20%2B%20D3D11-f7c600?style=for-the-badge)](#instalación)

**Idiomas:** 🇺🇸 [English](README.md) | 🇧🇷 [Português (Brasil)](README.pt-BR.md) | 🇪🇸 **Español**

</div>

---

## ✨ Características

- **📺 Alertas de Gol estilo Transmisión de TV:**
  - Tarjetas nativas en Direct3D 11 / Direct2D mostradas en tiempo real cada vez que hay un gol en otros partidos de la jornada en Liga Master, Liga o Copa.
  - Temas visuales dinámicos para **25+ competiciones oficiales** (UEFA Champions League, Europa League, Supercopa de la UEFA, UEFA Euro, Copa del Mundo FIFA, Mundial de Clubes FIFA, CONMEBOL Libertadores, Sudamericana, Recopa, Copa América, Brasileirão Série A/B/C/D, Copa do Brasil, Supercopa do Brasil, Paulistão, Premier League, EFL Championship, FA Cup, LaLiga, LaLiga Hypermotion, Copa del Rey, Serie A, Serie BKT, Coppa Italia, Bundesliga, DFB-Pokal, Ligue 1, Ligue 2 BKT, Coupe de France, Eredivisie, KNVB Beker, Liga Portugal, Taça de Portugal, Liga Profesional Argentina, Copa Argentina, AFC Champions League y más) con escudos reales y logos oficiales de `Competition.bin`.
  - **Destacados de Transmisión en Vivo (`DOBLETE` / `HAT-TRICK!` / `GOLEADA`):** Etiqueta automáticamente dobletes (`(DOBLETE)`), `HAT-TRICK!` (3+ goles) y partidos con diferencia de 3+ goles (`• GOLEADA`) tanto en la tarjeta de gol como en el panel de la jornada, agrupando múltiples goles del mismo jugador en una sola línea compacta.
  - **Clasificación en Vivo (`▲` / `▼`):** Muestra la posición actual de cada equipo y cuántos puestos sube o baja en el instante del gol.
  - **Filtro Inteligente de Fase de Grupos (Activo por Defecto):** En torneos de grupos, las alertas durante el partido muestran por defecto solo los goles de **tu grupo** (configurable en el panel de Sider con la tecla `[6]`).
  - **Soporte Multi-Idioma (`PT-BR` / `EN` / `ES`) con Auto-Detección Inteligente del Idioma del Juego:** Detecta automáticamente el idioma activo de tu PES 2021 / Football Life al iniciar por primera vez (`Español España / LATAM` -> `ES`, `Portugués BR / PT` -> `PT`, `Inglés` -> `EN` mediante `lang=auto`), y permite cambiar el idioma en tiempo real con la tecla **`[3]`** en Sider o mediante `lang=auto` / `pt` / `en` / `es` en `modules\LiveRoundGoals\config.ini`.
  - **Sonido de Gol Sincronizado y Control de Volumen (`[4]` / `[5]`):** Audio sincronizado con la entrada de la tarjeta en pantalla (`0%` Silencio a `100%`, guardado en `config.ini`; admite audio personalizado en `content\LiveRoundGoals\gol.wav`).
- **🫥 Transparencia Inteligente (Auto-Fade con el Balón):**
  - La tarjeta se vuelve transparente (`25%`) automáticamente solo cuando el jugador con el balón pasa justo por encima de la esquina donde aparece el marcador.
- **📊 Panel de Resultados de la Jornada (Pausa / Descanso / Final del Partido):**
  - Comienza **desactivado por defecto** en una barra inferior compacta (sin tapar las estadísticas del partido) y acompaña suavemente la animación de entrada del menú de PES 2021.
  - Pulsa **`R3` / `L3`** para abrir la **Cuadrícula Doble Broadcast (2 Columnas)** con los partidos simultáneos/restantes de la jornada, marcadores, goleadores y posiciones.
  - **100% Sincronizado con Liga Master:** Todos los marcadores mostrados en vivo se registran exactamente en la tabla oficial de la competición.

---

## 🖼️ Vistas Previas

<p align="center">
  <img src="Previews/preview_01_champions_league.png" alt="UEFA Champions League (EN)" width="48%"/>
  <img src="Previews/preview_02_europa_league.png" alt="UEFA Europa League (ES)" width="48%"/>
</p>
<p align="center">
  <img src="Previews/preview_03_copa_do_mundo.png" alt="Copa del Mundo FIFA (PT-BR)" width="48%"/>
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
  <img src="Previews/preview_08_painel_resultados_rodada.png" alt="Panel de Resultados de la Jornada (Cuadrícula 2 Columnas)" width="96%"/>
</p>

---

## 📦 Instalación

> Compatible con **cualquier parche de PES 2021** (BMPES, SmokePatch, Football Life, VirtuaRED, Dream Patch, etc.) que use **Sider**.

1. Descarga **`LiveRoundGoals_v1.3.zip`** desde la pestaña [Releases](../../releases) (o copia la carpeta `modules` de este paquete).
2. Extrae/copia la carpeta **`modules`** dentro de tu carpeta principal de PES 2021 / Sider (donde está `sider.ini`).
3. Abre **`sider.ini`** con el Bloc de notas y verifica que estas opciones estén activadas:
   ```ini
   luajit.ext.enabled = 1
   match-stats.enabled = 1
   ```
4. Añade esta línea a la lista de módulos Lua en **`sider.ini`**:
   ```ini
   lua.module = "LiveRoundGoals.lua"
   ```
5. Guarda `sider.ini` e inicia el juego normalmente desde **Sider**.

---

## 🎮 Controles

### Dentro del Menú de Pausa / Descanso / Final del Partido
| Botón / Tecla | Acción |
| :--- | :--- |
| **`R3`** (Clic en Stick Derecho) / **`]`** | Abrir Resultados de la Jornada / Página Siguiente |
| **`L3`** (Clic en Stick Izquierdo) / **`[`** | Página Anterior / Volver a Estadísticas |
| **`Y` / Triángulo** o **`SELECT`** o **`F10`** | Ocultar / Mostrar Overlay |

### Durante el Partido y en el Panel de Sider (`Barra Espaciadora`)
| Botón / Tecla | Acción |
| :--- | :--- |
| **`SELECT + L3`** o **`F10`** | Ocultar / Mostrar Alertas en el Partido |
| **`F9`** | Lanzar Notificación de Prueba *(enfriamiento de 3s)* |
| **`[3]`** *(en el panel de Sider)* | Cambiar Idioma (`PT-BR` / `EN` / `ES` — guardado en `config.ini`) |
| **`[4]` / `[5]`** *(en el panel de Sider)* | Bajar / Subir Volumen del Sonido de Gol (`-10%` / `+10%`) |
| **`[6]`** *(en el panel de Sider)* | Cambiar Filtro de Grupos *(Solo Mi Grupo [Defecto] / Overlay + Menú / Toda la Jornada)* |
| **`[7]`** *(en el panel de Sider)* | Cambiar Esquina de Pantalla |
| **`[8]` / `[9]`** *(en el panel de Sider)* | Reducir / Aumentar Escala (`-5%` / `+5%`) |
| **`[-]` / `[=]`** y **`RePág` / `AvPág`** *(en Sider)* | Ajuste Fino de Posición X / Y |
| **`[0]`** *(en el panel de Sider)* | Activar / Desactivar Auto-Fade con el Balón |
| **`[BACKSPACE]`** *(en el panel de Sider)* | Restaurar Valores por Defecto |

---

## 🛡️ Parches Compatibles e Integridad

- **Parches con Detección Automática (Bases de Clubes Dedicadas + RAM de Liga Master + Lector Nativo de Escudos desde `.cpk` y `livecpk`):**
  - ✅ **BMPES**
  - ✅ **SP Football Life 2027 (`FL27` / `FL26` / `FL25`)**
  - ✅ **Gogosz Patch (Conmebol & World)**
  - ✅ **MARFUT Patch (World)**
  - ✅ **VirtuaRED / Dream Patch / SmokePatch / Otros Parches Sider** *(lectura automática de hasta 3.200 clubes desde la RAM de Liga Master + lector nativo de escudos desde archivos `.cpk`)*
- Compatible con ejecutables **Steam v1.07.02** y **CPY v1.1.0** (`PES2021.exe` y `FL_2027.exe`), cualquier compilación de Sider 7.x y mandos XInput o DirectInput (DualSense/DualShock/USB).
- Renderizado nativo en C++ / Direct2D / D3D11 con sello de integridad entre `LiveRoundGoals.lua` y `LiveRoundGoals.dll`. No modifiques ni renombres `LiveRoundGoals.lua`.

---

## 📜 Licencia y Términos de Uso

**Copyright © 2026 uWaazy — Todos los Derechos Reservados.** Consulta el archivo completo en [LICENSE](LICENSE).

> 🆓 **MOD 100% GRATUITO:** LiveRoundGoals es totalmente gratis. **Si pagaste a alguien por este mod, fuiste estafado.**

- ✅ **Permitido:** Descarga gratuita y uso personal, no comercial y offline en PES 2021 / SP Football Life.
- ❌ **Prohibido sin autorización:** Resubir o duplicar los archivos, incluirlos en parches o modpacks de terceros, uso comercial o reventa, o ingeniería inversa/modificación de `LiveRoundGoals.dll` y `LiveRoundGoals.lua`.
- ⚠️ **Descargo de Responsabilidad:** Se entrega **"TAL CUAL" ("AS IS")**, sin garantías. Destinado exclusivamente a modos offline (Liga Máster, Liga, Copa).
