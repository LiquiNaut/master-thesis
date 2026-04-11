# AI Integration Guide - Optimalizácia automatického doplnenia

**Dokument:** Praktický sprievodca pre AI systémy  
**Cieľ:** Maximalizácia kvality auto-completion v texte diplomovej práce  
**Formát:** LaTeX (pdflatex + biber + makeglossaries)

---

## 1. ZÁKLADNÝ KONTEXT PRE AI MODELY

### Klúčové Charakteristiky Zdrojového Textu

```yaml
Projekt: Master Thesis - FinanceGPT
Jazyk: Slovenčina (UTF-8)
Akademická Úroveň: Vysoká (diplomová práca)
Odborné Pole: FinTech + NLP/LLM + Software Engineering
Počet Autorov: 1 (Bc. Boris Gašparovič)
Vedúci: Ing. Erich Stark, PhD.
Inštitúcia: STU FEI Bratislava

Formát:
  - LaTeX (FEIstyle šablóna)
  - PDF výstup (pdflatex pipeline)
  - Bibliography: ISO-690 (biber)
  - Glossaries: makeglossaries

Súbory:
  - Primárny: example_paper.tex
  - Includes: core.tex, introduction.tex, conclusion.tex, abstract.tex (SK+EN)
  - Metadata: Autor, Vedúci, Fakulta, Program
  - Prílohy: attachmentA.tex (elektronický nosič), attachmentB, attachmentC
```

### Cieľový Obsah Práce

```
Primárna Téma:
  → FinanceGPT = Inteligentný finančný asistent
  → Technológia: LLM + NLP + Ruby on Rails
  → Aplikácia: Fakturácia, reportovanie, analýza dát

Sekcie:
  1. ÚVOD - Problém, trendy, riešenie, cieľ
  2. JADRO - Analýza, návrh, implementácia
  3. ZÁVER - Výsledky, prínosy, budúci smer
```

---

## 2. PROMPT ENGINEERING - BEST PRACTICES

### Vzor 1: Kontext-Vedený Prompt

```
KONTEXT:
- Sekcia: [Úvod do problematiky]
- Podtéma: [Trendy vo finančných technológiách]
- Predchádzajúci Text: [Posledný paragraf - copy-paste]
- Požadovaná Dĺžka: [3-4 paragrafy]

POKYN:
Pokračuj v texte o trendoch v FinTech, s ohľadom na:
1. Spomínané trendy: automatizácia, digitalizácia, bezpečnosť
2. Cieľová skupina: malé a stredné podniky (SME)
3. Akademický tón, formálna reč
4. Dodaj konkrétne príklady, ale bez zmyslených čísiel
5. Logický priebehu od problému k riešeniu
```

### Vzor 2: Štruktúrovaný Prompt (Sekcia-Špecifický)

```
KONTEXT:
- Časť práce: JADRO (Implementácia)
- Trenutný Odstavec: [Popis architektúry]
- Cieľ Príslušného: Vysvetliť, ako sa LLM integruje s Rails aplikáciou

FORMÁT OČEKÁVANÝ:
- Štýl: Technický, ale zrozumiteľný
- Dĺžka: 2-3 paragrafy
- Elementy: Komponent, rozhranie, komunikácia, bezpečnosť
- Jazyk: Slovenčina s anglickými termínmi (NLP, API, etc.)

KVALITA:
- Presnosť pred kvietnnosťou
- Stav-of-the-art technológie (GPT-4, GPT-o1)
- Praktické príklady bez autentifikačných údajov
- Konzistencia s predchádzajúcim textom
```

### Vzor 3: Completion-Based (Pokračovanie aktuálneho riadka)

```
AKTUÁLNY TEXT:
"Jednou z výziev pri implementácií LLM modelov je..."

POKRAČUJ:
- Cieľ: Doplniť vetu logicky a akademicky
- Prvok: Špecifikácia výzvy (integrácia, presnosť, bezpečnosť, atď.)
- Jazyk Štýl: Formálny, s možnosťou počítačových prípadov
- Maximálna Dĺžka: Jeden až dva vety

PRÍKLADY:
✓ "...je správna integrácia s existujúcimi dátovými zdrojmi, kde je potrebné zabezpečiť konzistentnú a centralizovanú správu údajov."
✓ "...je výber vhodného modelu, ktorý vyvažuje medzi presnosťou a výpočetnou efektívnosťou."
✓ "...je zabezpečenie bezpečnosti a dodržiavanie regulácií pri práci s finančnými údajmi."
```

---

## 3. DOMÉNOVÁ ŠPECIFIKÁ - LEXIKON PRE AI

### Finančné/FinTech Kontext

| Koncepty                           | Kontextové Použitie  | Príklady Viet                                                                             |
| ---------------------------------- | -------------------- | ----------------------------------------------------------------------------------------- |
| Fakturácia                         | Primárna aplikácia   | "Fakturácia a správa finančných dokumentov patria medzi kľúčové oblasti..."               |
| Elektronická faktúra (e-invoicing) | Technologický pokrok | "Európska komisia zdôrazňuje výhody elektronickej faktúry..."                             |
| SME (Small and Medium Enterprises) | Cieľová skupina      | "V kontexte malých a stredných podnikov sa FinTech technológie sústreďujú..."             |
| Finančné toky                      | Správa dát           | "Zjednodušenie riadenia finančných tokov môže viesť k výrazným úsporám..."                |
| Automatizácia procesov             | Cieľ práce           | "Integrácia LLM umožňuje automatizáciu opakovaných úkonov..."                             |
| Bezpečnosť údajov                  | Regulácia            | "V oblasti financií sa narába s citlivými informáciami, preto je bezpečnosť prioritou..." |

### NLP/LLM Kontext

| Koncept                           | Definícia                       | Kontextové Použitie                                                          |
| --------------------------------- | ------------------------------- | ---------------------------------------------------------------------------- |
| Natural Language Processing (NLP) | Spracovanie prirodzeného jazyka | "Technológie spracovania prirodzeného jazyka umožňujú..."                    |
| Large Language Model (LLM)        | Veľký jazykový model            | "S príchodom LLM modelov ako GPT-4 sa otvorili nové možnosti..."             |
| BERT                              | Enkodér Transformer modelu      | "Medzi prelomové práce patrí BERT vyvinutý v Google..."                      |
| Transformers                      | Architekúra hlbokého učenia     | "Moderné NLP modely využívajú Transformer architektúru..."                   |
| Kontextuálne spracovanie          | Pochopenie vety v kontexte      | "Vďaka kontextuálnemu spracovaniu slov poskytujú lepšie výsledky..."         |
| GPT-4, GPT-o1                     | Konkrétne modely                | "Modely ako GPT-4 demonštrujú schopnosti pracovať s rozsiahlym kontextom..." |
| Prompt Engineering                | Ofináistika otázok              | "Správny prompt engineering umožňuje lepšie výsledky..."                     |

### Software Engineering Kontext

| Technológia    | Úloha v Projekte        | Kontextové Použitie                                                           |
| -------------- | ----------------------- | ----------------------------------------------------------------------------- |
| Ruby on Rails  | Backend framework       | "Aplikácia bude vytvorená v Ruby on Rails..."                                 |
| API integrácia | Komunikácia s LLM       | "Integrácia cez OpenAI API umožňuje použitie najnovších modelov..."           |
| Database       | Uloženie finančných dát | "Bezpečné uloženie finančných údajov v databáze..."                           |
| Backend        | Serverová logika        | "Backend aplikácia spracúva požiadavky od nfrontend rozhrania..."             |
| Frontend       | Používateľské rozhranie | "Intuitívne frontend rozhranie umožňuje používateľom ľahko zadávať dotazy..." |

---

## 4. KONTROĽNÝ ZOZNAM PRE AI-GENEROVANÝ TEXT

### Jazykový Štandard

- [ ] Text je v SlovENčine (nie v Czech/Polish/Other)
- [ ] ASCII znaky sú normalizované (UTF-8)
- [ ] Cudzojačné slová sú v kurzíve: _natural language processing_, _Large
      Language Models_
- [ ] Skratky sú vysvetlené pri prvom výskyte: NLP (Natural Language Processing)
- [ ] Nehodí sa konverzačný tón, stále je akademický
- [ ] AKO "mi" → neznalá forma sa nepoužíva

### Akademická Kvalita

- [ ] Text referencuje existujúce zdroje alebo trendy (bez vymyslených)
- [ ] Logická štruktúra: Problém → Riešenie → Možnosti
- [ ] Výroky sú zovšeobecnené (nie príliš špecifické bez podloženia)
- [ ] Tón je objektívny a vedecký
- [ ] Vety sú 15-25 slov (nie preriadi ani príliš krátke)

### Tematická Relevancia

- [ ] Text sa týka FinTech/NLP/Ruby on Rails
- [ ] Neobsahuje irelevantné detaily (napr. história telekomunikácií)
- [ ] Logicky nadväzuje na predchádzajúci paragraf
- [ ] Pripravuje čitateľa na nasledujúcu radu

### Formátovanie

- [ ] Bez LaTeX chýb (správne `\textbf{}`, `\textit{}`, atď.)
- [ ] Bez nesprávneho escapovania znakov
- [ ] Bez príliš dlhých riadkov (max 80 znakov v zdrojovom kóde)
- [ ] Paragrafy sú oddelené prázdnym riadkom

---

## 5. PRÍKLADY GENERÁTORSKÝCH PROMPTOV

### Príklad A: Doplnenie Skôšenej Vety

```
INPUT (poskytnutý text):
"Spracovanie prirodzeného jazyka (NLP) prešlo dlhým vývojom, od štatistických
metód a jednoduchých pravidlových systémov..."

POKYN AI:
Pokračuj jednou vetou, ktorá by logicky vysvetľovala vývoj NLP.
Použij paralelnú štruktúru. Zvýrazni inovačný moment.

OČAKÁVANÝ VÝSTUP:
"...k sofistikovaným modelom využívajúcim hlboké neurónové siete."
alebo
"...na komplexné neurónnové siete využívajúce kontextuálne spracovanie."
```

### Príklad B: Nový Paragraf po Existujúcej Sekcii

```
INPUT (poskytnutá predchádzajúca sékvencia):
[PREDCHÁDZAJÚCI PARAGRAF]:
"Oblasť finančných technológií (FinTech) zaznamenala v posledných rokoch
výrazný rast, čo dokladujú viaceré správy renomovaných spoločností. KPMG
vo svojej analýze The Pulse of Fintech H1 2021 zdôrazňuje...
[NASLEDUJÚCI PARAGRAF - CHÝBA - VYPLNIŤ]:"

POKYN AI:
Napísať nasledujúci paragraf (150-200 slov), ktorý:
- Pokračuje v diskusii o FinTech trendoch
- Spomína konkrétnu cieľovú skupinu (SME)
- Predstavuje nový aspekt (bezpečnosť/compliance)
- Formátuje sa ako prirodzený pokračovanie
- Súvisí s finančnými procesmi

OČAKÁVANÝ OBSAH PARAGRÁFU:
- Tematická kontinuita
- Specifická zmienka o SME
- Prirodzené retorickej vzor
- Akademický tón
```

### Príklad C: Finalizovacia Veta v Sekcii

```
INPUT (zvyšok paragrafu):
[...text sa končí vetou...]
"...čo umožňuje lepšie porozumenie textu a schopnosti riešiť komplexnú problematiku."

POKYN AI:
Pridaj krátku finalizačnú vetu (10-15 slov), ktorá:
- Uzatvára danú myšlienkovú líniu
- Je branou k ďalšej sekcii alebo téme
- Neobsahuje nové informácie (iba zhrnutie)

PRÍKLAD VÝSTUPU:
"V praxi to znamená, že moderné LLM modely poskytujú nožnosti na automatizáciu finančných procesov."
alebo
"Tieto schopnosti sú práve tým, čo potrebujú moderne finančné systémy."
```

---

## 6. MECHANIKA CHATBOT/LLM INTEGRÁCIA

### Vzor Interakcie s AI Model (napr. GPT-4)

```python
# Pseudokód
system_prompt = """
Ste odborný autor diplomovej práce o finančných technológiách.
Vaša úloha je generovať kvalitný akademický text v slovenčine
pre master thesis na tému FinanceGPT.

Charakteristiky textu:
- Jazyk: Slovenčina (UTF-8)
- Akademická úroveň: Vysoká (diplomová práca STU FEI)
- Domény: FinTech, NLP, LLM, Ruby on Rails
- Štýl: Formálny, vedecký, bez konverzačného tónu
- Referenčné: Reálne existujúce technológie a spoločnosti

Vyhýbajte sa:
- Vymýšľaným číslam a štatistikám
- Konverzačnému tónu ("ako viete", "určite")
- Špecifickým interným detailom bez podloženia
- Nesprávnemu LaTeX formátovaniu
"""

user_prompt = """
KONTEXT:
- Sekcia: Úvod do problematiky
- Podtéma: Vývoj v oblasti spracovania prirodzeného jazyka (NLP)
- Predchádzajúci text: [POSKYTNUTÝ TEXT]

POKYN:
Napíš paragraf (200-250 slov), ktorý pokračuje v opise histórie NLP
a jeho modernho vývoja. Zahrň:
1. Prelomové momenty v NLP (BERT, Transformers, atď.)
2. Moderné LLM modely (GPT-4)
3. Praktické aplikácie v oblasti finančných služieb
4. Prechod k FinanceGPT ako riešeniu

Formátovanie: Plain text (bez LaTeX príkazov)
Jazyk: Slovenčina
Tón: Akademický, formal
"""

response = gpt4_model.generate(system_prompt, user_prompt)
```

### Python Integrácia - Príklad Kódu

```python
from openai import OpenAI

class FinanceGPTTextCompletion:
    def __init__(self, api_key):
        self.client = OpenAI(api_key=api_key)
        self.model = "gpt-4"
        self.language = "sk_SK"  # Slovak

    def generate_section_continuation(self,
                                      previous_text: str,
                                      section_title: str,
                                      continuation_type: str = "paragraph",
                                      word_count: int = 200):
        """
        Generate text continuation for diploma thesis

        Args:
            previous_text: Last paragraph to continue from
            section_title: Section name (e.g. "Introduction")
            continuation_type: "paragraph", "sentence", "section"
            word_count: Expected word count
        """

        system_message = self._get_system_prompt()
        user_message = self._build_user_prompt(previous_text,
                                               section_title,
                                               word_count,
                                               continuation_type)

        response = self.client.chat.completions.create(
            model=self.model,
            messages=[
                {"role": "system", "content": system_message},
                {"role": "user", "content": user_message}
            ],
            temperature=0.7,  # Some creativity, but not too much
            max_tokens=word_count + 100,  # Buffer
            language="sk"  # Hint for Slovak language
        )

        return response.choices[0].message.content

    def _get_system_prompt(self) -> str:
        return """Ste odborný autor diplomovej práce na fakulte FEI STU v Bratislave.
Vytvárate text v slovenčine o finančných technológiách a umelej inteligencii.
Formálny akademický tón. Presnosť pred fantáziou."""

    def _build_user_prompt(self, prev_text, section, words, type_) -> str:
        return f"""Pokračuj v texte nasledovne:
SEKCIA: {section}
TYP: {type_}
MAXIMÁLNE SLOVA: {words}

PREDCHÁDZAJÚCI TEXT:
{prev_text}

Pokračuj logicky, s akademickým tónom, v slovenčine."""

# Použitie
if __name__ == "__main__":
    completer = FinanceGPTTextCompletion(api_key="your-key")

    prev_para = "V oblasti finančných technológií..."

    next_para = completer.generate_section_continuation(
        previous_text=prev_para,
        section_title="Introduction",
        continuation_type="paragraph",
        word_count=250
    )

    print(next_para)
```

---

## 7. MONITOROVANIE KVALITY - KONTROLNÉ BODY

### Pred Publikovaním

```
Kvalita Kontrola:
1. Čítateľnosť: ✓ Hladký prechod medzi vetami?
2. Akademicita: ✓ Formálny tón bez konverzačnosti?
3. Relevancia: ✓ Súvisí s témou FinanceGPT?
4. Konzistencia: ✓ Logiek sa jedine s predchádzajúcim textom?
5. Faktovosť: ✓ Žiadne vymýšľané údaje?
6. LaTeX: ✓ Správne formátovanie, bez chýb?
7. Dĺžka: ✓ Zodpovedá očakávanej dĺžke?
8. Jazyk: ✓ Slovenčina bez gramatických chýb?
```

### Post-Generačná Editácia

- Skúmať generovaný text pre plagiátne stopy (cieľ: <5%)
- Overovať faktické tvrdenia zo zdrojov
- Doplniť referencie a citácie
- Vylepšiť prechody ak sú porušené

---

## 8. BEST PRACTICES PRE PROMPTS

### ✅ ROBÍ

```
✓ "Napíš paragraf o integrácií LLM v Ruby on Rails aplikácií..."
✓ "Pokračuj v texte o najnovších trendoch v FinTech..."
✓ "Preformátuj nasledujúcu vetu do akademického tónu..."
✓ "Dodaj definíciu sklonky term: NLP, LLM, API..."
```

### ❌ NEROBÍ

```
✗ "Napíš niečo o financiách" (príliš vágne)
✗ "Skopíruj text z Wikipedia" (plagiátum)
✗ "Naredy text ako kod" (nesprávne)
✗ "Napí sem to rýchlo bez ohľadu na kvalitu" (nízka kvalita)
```

---

## ZÁVER

**Tento dokument** poskytuje AI systémom všetky potrebné informácie na:

1. Pochopenie kontextu diplomovej práce
2. Generovanie relevantného akademického textu
3. Rozlišovanie medzi správnym a nesprávnym outputom
4. Optimalizácia promptov pre lepšie výsledky

**Odporúčanie:** Testuj jednotlivé prompty na malom vzorke textu pred hromadným
použitím.

---

_Dokument verzia: 1.0  
Vytvorené: 3. apríl 2026  
Pre: Master Thesis - FinanceGPT_
