# 🎨 LiveRoundGoals — Guia de Temas, Fontes & Transição 3D (PT-BR / EN / ES)

Com o **LiveRoundGoals v1.4+**, qualquer jogador pode personalizar as cores, bordas, opacidade, **fontes (`.ttf` / `.otf` ou fontes do Windows)** e a **animação 3D da bola ("Gol da Rodada")** do overlay — e ainda compartilhar seus temas com a comunidade pelo GitHub!

---

## 📁 Como funciona a pasta `themes/`

Todos os temas ficam em:
```text
modules\LiveRoundGoals\themes\<nome_do_tema>\theme.ini
```

O pacote já vem com 3 temas prontos de exemplo:
- `globo_classic` — Clássico TV aberta (azul-marinho, dourado e bola 3D giratória)
- `ucl_neon` — Noites europeias (azul noturno, ciano neon, fonte `Bahnschrift` e bola 3D com quique elástico)
- `minimal_dark` — Escuro minimalista limpo

### Como ativar ou trocar de tema no jogo
- Aperte **`Insert`** a qualquer momento no jogo (sem precisar abrir o Sider) para alternar entre **`auto`** (temas automáticos por competição) e todos os temas encontrados em `themes\`.
- Ou abra o overlay do Sider (`Espaço`) e aperte **`[1]`**.
- Ou defina diretamente no `modules\LiveRoundGoals\config.ini`:
  ```ini
  theme=globo_classic
  ```

---

## 🛠️ Criando seu Próprio Tema (`theme.ini`)

1. Crie uma nova pasta dentro de `modules\LiveRoundGoals\themes\`, por exemplo:
   `modules\LiveRoundGoals\themes\meu_tema\`
2. Crie um arquivo `theme.ini` dentro dela com o modelo abaixo:

```ini
[theme]
name=Meu Tema TV
author=SeuNome
description=Descricao curta do seu tema

[colors]
# Formato ARGB (8 digitos hex: AA RR GG BB) ou RGB (6 digitos hex: RR GG BB)
bg_top=F2081838
bg_bot=F6040D22
header_bg=FF0D2759
accent=FFF7C600
goal_hi=FF00E676
text_main=FFFFFFFF
text_muted=FFB8C4D8
border_color=FFF7C600

[style]
corner_radius=10
border_width=1.8
opacity=1.0

[font]
# Nome de qualquer fonte instalada no Windows (ex: Segoe UI, Bahnschrift, Impact, Arial, Oswald)
family=Segoe UI
# Opcional: arquivo .ttf ou .otf colocado dentro da propria pasta do tema (ex: MinhaFonte.ttf)
file=

[transition]
# Modos: ball3d (Gol da Rodada Globo), ball3d_bounce (Bola 3D com quique), slide (Deslize), zoom (Zoom suave)
mode=ball3d
duration=0.78
ball_primary=FFF8FAFC
ball_secondary=FF111827
ball_accent=FFF7C600
ball_spins=2.4
```

### 🔤 Usando Fontes Customizadas (`.ttf` / `.otf`)
- **Fonte já instalada no Windows:** Basta colocar o nome exato em `family=` (ex: `family=Bahnschrift` ou `family=Montserrat`) e deixar `file=` vazio.
- **Fonte própria (`.ttf` / `.otf`) sem precisar instalar no Windows:**
  1. Copie o arquivo `.ttf` ou `.otf` para dentro da pasta do seu tema (ex: `themes\meu_tema\BroadcastBold.ttf`).
  2. Coloque `file=BroadcastBold.ttf` no `theme.ini` (o `family=` é detectado automaticamente se ficar vazio ou em `Segoe UI`).
- Também é possível sobrescrever a fonte globalmente para o modo `theme=auto` editando `font_family=` e `font_file=` no `modules\LiveRoundGoals\config.ini`.

### ⚽ Personalizando a Transição 3D da Bola
- Aperte **`End`** no jogo para alternar instantaneamente entre os 4 estilos:
  - `0` / `ball3d` — **Bola 3D "Gol da Rodada" (Padrão):** bola 3D gira suavemente e abre o card do placar.
  - `1` / `ball3d_bounce` — **Bola 3D com Quique Elástico:** entra quicando com giro acelerado.
  - `2` / `slide` — **Deslize Clássico TV.**
  - `3` / `zoom` — **Zoom Suave.**
- No `theme.ini`, personalize `ball_primary` (gomos principais), `ball_secondary` (pentágonos), `ball_accent` (costura/brilho Fresnel) e `ball_spins` (voltas da bola, `0.5` a `6.0`).

---

## 🌐 Compartilhe seu Tema no GitHub!

Criou um tema bonito (Premiere, ESPN, CazéTV, Sky Sports, TNT Sports, Globo retrô)? Compartilhe com a comunidade:

1. **Via Pull Request (Recomendado):**
   - Faça um Fork do repositório [LiveRoundGoals-Mod](https://github.com/uWaazy/LiveRoundGoals-Mod).
   - Adicione sua pasta em `modules/LiveRoundGoals/themes/<nome_do_seu_tema>/theme.ini` *(não inclua fontes pagas/com copyright restrito — use fontes abertas como Google Fonts / OFL ou fontes do Windows)*.
   - Abra um **Pull Request** com 1 print do card de teste (`F9`).
2. **Via Issue do GitHub:**
   - Clique em **Issues → New Issue → Submit Community Theme**, cole o conteúdo do seu `theme.ini` e anexe uma captura de tela (`F9`).

---

## 🇺🇸 Quick Summary (English) / 🇪🇸 Resumen Rápido (Español)

- **EN:** Place custom themes in `modules\LiveRoundGoals\themes\<theme_name>\theme.ini`. Supports hex ARGB/RGB colors, `corner_radius`, `border_width`, `opacity`, any Windows font (`family=`) or local `.ttf`/`.otf` file (`file=`), and customizable 3D ball transition (`mode=ball3d|ball3d_bounce|slide|zoom`, `ball_primary`, `ball_secondary`, `ball_accent`, `ball_spins`). Press **`F7`** in-game to cycle themes and **`F11`** to cycle 3D transition modes. Submit community themes via GitHub PR or Issue!
- **ES:** Coloca temas personalizados en `modules\LiveRoundGoals\themes\<nombre>\theme.ini`. Soporta colores ARGB/RGB, `corner_radius`, `border_width`, `opacity`, fuentes de Windows (`family=`) o archivos `.ttf`/`.otf` locales (`file=`), y transición 3D del balón (`mode=ball3d|ball3d_bounce|slide|zoom`). Pulsa **`F7`** para cambiar de tema y **`F11`** para cambiar la transición 3D. Comparte tus temas en GitHub mediante PR o Issue!
