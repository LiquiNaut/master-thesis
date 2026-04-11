# Analýza Projektu: FinanceGPT Master Thesis

**Generovaná:** 3. apríl 2026  
**Obsah:** Komprehenzívna analýza pre AI systémy (text completion, prompts
optimization)

---

## 1. ZÁKLADNÉ INFORMÁCIE O PROJEKTE

### Typ projektu

- **Formát:** LaTeX diplomová práca (Master's thesis)
- **Šablóna:** FEIstyle (uprávená verzia pre STU v Bratislave)
- **Jazyk:** Slovenština (primárny), Angličtina (podľa typu - tituly, kľúčové
  slová)
- **Kódovanie:** UTF-8
- **Výstup:** PDF (cez latexmk/pdflatex pipeline)

### Akademické Metadáta

- **Autor:** Bc. Boris Gašparovič
- **Registračné číslo:** FEI-16607-97779
- **Fakulta:** Fakulta elektrotechniky a informatiky (FIIT)
- **Umiestnenie:** SKU v Bratislave
- **Program:** Aplikovaná informatika
- **Odborný vedúci:** Ing. Erich Stark, PhD.

---

## 2. TEMATIKA A OBSAH

### Primárna Téma

**Návrh a implementácia inteligentného finančného asistenta FinanceGPT s
využitím LLM pre spracovanie dotazov v prirodzenom jazyku**

**Anglický ekvivalent:**  
"Design and implementation of intelligent financial assistant FinanceGPT using
LLM for natural language query processing"

### Hlavné Koncepčné Oblasti

1. **Finančné technológie (FinTech)**
   - Automatizácia a digitalizácia finančných procesov
   - Správa faktúr a finančných dokumentov
   - Zjednotovanie tradičných a elektronických procesov

2. **Spracovanie Prirodzeného Jazyka (NLP)**
   - Large Language Models (LLM) - GPT-4, GPT-o1
   - Kontextové porozumenie textu
   - Generovanie konverzačných odpovedí

3. **Technologický Stack**
   - Ruby on Rails (backend aplikácie)
   - LLM integrácia (rozhrania OpenAI, podobne)
   - Web aplikácia pre fakturáciu
   - API integrácie

4. **Finančné Procesy**
   - Fakturácia a správa faktúr
   - Reportovanie a analytika
   - Riadenie finančných tokov (SME fokus)
   - Bezpečnosť a ochrana finančných údajov

### Kľúčové Slová

**SK:** inteligentný finančný asistent, fakturácia, spracovanie prirodzeného
jazyka, LLM, GPT, faktúry, vizualizácia dát, integrácia API, Ruby on Rails,
umelá inteligencia, NLP

**EN:** intelligent financial assistant, invoicing, natural language processing,
LLM, GPT, invoices, data visualization, API integration, Ruby on Rails,
artificial intelligence, NLP

---

## 3. ŠTRUKTÚRA PRÁCE

### Sekcie Dokumentu

```
Frontmatter:
├── Obálka a titulná strana
├── Abstrakt (SK + EN)
├── Vyhlasenie o autorskom vlastníctve
└── Poďakovanie

Mainmatter:
├── Úvod (introduction.tex)
│   ├── Úvod do problematiky finTech
│   ├── Trendy vo finančných technológiách
│   ├── Výzvy pri správe finančných dokumentov
│   ├── Vývoj v oblasti NLP/LLM
│   └── Potenciál LLM v bankovníctve
├── Jadro práce (core.tex)
│   └── [Obsahuje analýzu, návrh a implementáciu]
└── Záver (conclusion.tex)

Backmatter:
├── Bibliografia (bibliography.bib)
├── Príloha A - Štruktúra elektronického nosiča
├── Príloha B - Algoritmes
└── Príloha C - Sublime výpisy

Pomocné prvky:
├── Zoznam obrázkov
├── Zoznam tabuliek
├── Glossary (skratky a definície)
└── Zoznam listingov (kód)
```

### Obsah Jadra Práce (core.tex)

Začína s: **"Úvod do problematiky"**

**Logická Štruktúra:**

1. Problém - Tradičné fakturačné systémy sú zložité a časovo náročné
2. Riešenie - Integrácia LLM pre spracovanie prirodzeného jazyka
3. Výzva - Správna integrácia LLM s existujúcimi systémami
4. Cieľ - FinanceGPT: intuitívna interakcia s finančnými údajmi

---

## 4. ŠTÝL A FORMÁTOVANIE

### Jazykový Štýl

- **Úroveň:** Akademická (diplomová práca)
- **Tón:** Formálny, objektívny, vedecký
- **Struktura:** Logické argumentácie s odkazmi na zdroje a trendy
- **Tempo:** Detaily v uvádení problémov, postupný vývoj myšlienkových línií

### Špecifické Jazykové Konvencie

1. **Odborná Terminológia**
   - Anglické skratky používané aj v SK texte: NLP, LLM, FinTech, SME, API, GPT
   - In-context vysvetľovanie: "Large Language Models (LLM)"
   - Slovenské ekvivalenty sa používajú paralelne

2. **Citovanie a Odkazy**
   - Standard: ISO-690 (vyžadovaný FEI)
   - Formát: biblatex-iso690 s biber procesorom
   - Style: Komentára `// https://...` v texte pre inšpiráciu

3. \*\*Formátovanie Text
   - Paragrafové odsadenie prvej riadky (`indentfirst` balík)
   - Zoznamová štruktúra pre prehľadnosť
   - Poddieľikázaň: `\subsection{Téma}`
   - Zvýraznenie: dôraz na "výzve", "trendy", "šance"

### LaTeX Špecifiká

- **Grafika:** Umiestnenie v `img/` priečinku
- **Código listingy:** `listings` balík, Sublime syntax fajly
- **Tabuľky a obrázky:** `float` balík pre fixné umiestnenie
- **Multi-kolumnárny text:** Voliteľne s `multicol`
- **Enumerácia:** `enumitem` balík na prispôsobenie

---

## 5. TERMINOLOGICKÁ SKRATKA

### FinTech Domény

| Termín                             | Vysvetlenie                  | Kontext           |
| ---------------------------------- | ---------------------------- | ----------------- |
| Fakturácia                         | Vystavovanie a správa faktúr | Primárny use-case |
| Elektronická faktúra (e-invoicing) | Digitalizovaný proces faktúr | EU normy          |
| Riadenie finančných tokov          | Správa príjmov/výdavkov      | Analýza           |
| Automatizácia procesov             | Redukcia manuálnych úkonov   | Cieľ              |

### NLP Domény

| Termín                            | Vysvetlenie                           | Kontext               |
| --------------------------------- | ------------------------------------- | --------------------- |
| LLM (Large Language Model)        | Veľké jazykové modely                 | Hlavná technológia    |
| NLP (Natural Language Processing) | Spracovanie prirodzeného jazyka       | Technologický základ  |
| BERT                              | Bidirectional Encoder Representations | Príklad staršieho NLP |
| GPT-4, GPT-o1                     | OpenAI modely                         | Moderné LLM           |
| Kontextuálne spracovanie          | Porozumenie textu v kontexte          | NLP mechanizmus       |

### IT Domény

| Termín            | Vysvetlenie                  | Kontext           |
| ----------------- | ---------------------------- | ----------------- |
| Ruby on Rails     | Web framework                | Backend platforma |
| API integrácia    | Integrácia externých služieb | OpenAI API, atď.  |
| Chatbot           | Konverzačný robot            | Interakčný spôsob |
| Backend aplikácia | Serverová aplikácia          | Infraštruktúra    |

---

## 6. ŠTANDARDNÝ OBSAH A OČAKÁVANÉ BODY

### Minimálne Mestnosti v Úvode

1. Identifikácia problému (tradičné systémy sú zložité)
2. Existujúce riešenia (QuickBooks, Xero, FreshBooks)
3. Moderné technológie (LLM, AI)
4. Súčasné trendy (automatizácia, digitalizácia)
5. Cieľ práce (FinanceGPT - čo to je a čo robí)

### Príklady Štandardných Frází

- "V oblasti finančných technológií dochádza..."
- "Jednou z výziev pri implementácii..."
- "Kľúčovým faktorem je..."
- "Cieľom tejto diplomovej práce je..."
- "Analýza existujúcich riešení na trhu"
- "Návrh architektúry systému"
- "Výber vhodného LLM modelu"
- "Integrácia do fakturačnej aplikácie"

---

## 7. TECHNICKÉ ASPEKTY - BUILD PROCESS

### Kompilácia

```bash
make              # Skompiluje LaTeX (build v .build)
make clean        # Vyčisti auxiliary súbory
make refresh      # Čisté prekompilovanie
```

### Pipeline

1. `pdflatex` - Počiatočný pass
2. `biber` - Bibliography processing (ISO-690)
3. `makeglossaries` - Glossary processing
4. `pdflatex` - Ďalšie passey (spolu 2x)

### Generované Súbory na Ignorovanie

ac\*, acr, alg, aux, bbl, bcf, blg, fdb_latexmk, fls, glg, glo, gls, ist, lof,
lol, lot, pri, run.xml

---

## 8. VONKAJŠIE ZDROJE A KONTAKTY

### Referenčné Zdroje V Texte

1. **KPMG** - "The Pulse of Fintech H1 2021"
   - Inovácií platobných systémov, blockchain, AI
2. **Európska komisia** - eInvoicing Report
   - Výhody elektronickej faktúry, úspory nákladov

3. **OpenAI** - GPT-4 papier
   - Technické pozadie LLM kapacít

4. **Xero, QuickBooks, FreshBooks**
   - Príklady existujúcich riešení s AI funkciami

### Skratky a Definície (Glossary)

- Súbor: `includes/glossary.tex` - Formalizované definície skratiek

---

## 9. ODPORÚČANIA PRE AI TEXT COMPLETION

### Pre Lepšie Prompty:

1. **Context Awareness**
   - Systém by mal vedieť, či hovoríme o finTech, NLP alebo technickom aspekte
   - Závislosť na sekcie (Úvod se píše diskurzívne, Metódy sa píšu presnejšie)

2. **Terminológia**
   - Preferovať kombinované SK + EN skratky (NLP, LLM, API)
   - Formálny tón, akademická úroveň

3. **Logická Štruktúra**
   - Problémy → Riešenia → Implementácia
   - Citovanie a referenčné materiály

4. **Špecifické Frázy na Auto-Completion**
   - Začať s "V oblasti", "Jednou z výziev", "Kľúčom je"
   - Zakončiť s "Táto diplomová práca sa zaoberá"

5. **Formátovanie v LaTeX**
   - Paragrafy 5-8 riadkov
   - Subsekcie jasne členej
   - Zoznamové štruktúry pre prehľadnosť

6. **Faktuálna Presnosť**
   - Dodržať interné konzistencie (FEI, STU Bratislava)
   - Čísla a štatistiky v kontexte FinTech

---

## 10. PRÍKLAD ŠTANDARDNÉHO PARAGRAFU

```latex
\subsection{Výzvy pri správe finančných dokumentov}

Jedným z tradičných problémov finančných oddelení a účtovných spoločností je manuálna
správa faktúr a ďalších finančných dokumentov. Často ide o časovo náročné
aktivity zahŕňajúce vyhľadávanie faktúr v archívoch, manuálne kopírovanie údajov a
zisťovanie stavu úhrad. Európska komisia vo svojej správe k elektronickej
fakturácii (eInvoicing) uvádza, že zefektívnenie týchto procesov môže viesť k výrazným
úsporám nákladov, skráteniu času spracovania faktúr a zníženiu miery chýb.

Ďalšou výzvou je vhodná organizácia a archivácia elektronických dokumentov. Pri rýchlej
expanzii digitálnych nástrojov môže vznikať problém s integritou dát alebo s ich redundanciou.
```

---

## SÚHRN PRE AI SYSTÉMY

**Typ dokumentu:** Akademická diplomová práca (vysoká úroveň formality)  
**Jazyk:** Primárne slovenčina s anglickými termínmi  
**Doména:** FinTech + NLP/LLM + Ruby on Rails  
**Štýl:** Zrozumiteľný, vedecký, venovaný čitateľovi s IT vzdelaním  
**Cieľ:** Presvedčiť komisiu o nutnosti a prínosnosti FinanceGPT riešenia

**Pre optimálne doplnenie textu AI by mala:**

1. Sledovať akademický tón
2. Kombinovať SK a EN terminológiu
3. Poskytnúť logický priebehu idey
4. Referencovať existujúce trendy a riešenia
5. Pôsobiť presvedčivo bez fantázie

---

_Analýza vytvorená: 3. apríl 2026_  
_Typ: Komprehenzívny projekt overview_
