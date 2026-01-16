# Linux – Git – LaTeX Project

## Cel projektu
Celem projektu jest praktyczne zastosowanie wiedzy z zakresu systemu Linux,
systemu kontroli wersji Git oraz składu dokumentów w LaTeX.
Projekt realizowany jest w oparciu o repozytorium GitHub i pracę z gałęziami
zgodnie z dobrymi praktykami.

---

## Struktura repozytorium

### 📁 bash/
Katalog zawiera skrypty napisane w Bashu:
- `classification/` – skrypt sortujący pliki do odpowiednich katalogów,
- `duplicates/` – skrypt wyszukujący i obsługujący duplikaty plików.

Skrypty umożliwiają automatyzację pracy z plikami w systemie Linux.

---

### 📁 latex/
Katalog zawiera dokumentację projektu w LaTeX.

#### 📂 latex/script/
Zawiera połączony skrypt dydaktyczny:
- `parts/` – pliki `.tex` z materiałami z laboratoriów,
- `main.tex` – główny plik łączący dokument,
- `script_wdk.pdf` – skompilowany dokument PDF.

#### 📂 latex/instruction/
Zawiera instrukcję techniczną:
- `main.tex` – źródło instrukcji w LaTeX,
- `instruction.pdf` – skompilowana instrukcja,
- `screenshots/` – zrzuty ekranu ilustrujące pracę z GitHub Desktop.

---

## Jak korzystać z projektu

### Uruchamianie skryptów Bash
1. Przejdź do katalogu `bash/`.
2. Nadaj prawa do wykonania (jeśli potrzeba):
   ```bash
   chmod +x nazwa_skryptu.sh

3. Uruchom skrypt
   ```bash
./nazwa_skryptu.sh

Kompilowanie dokumentów LaTeX

Aby skompilować dokument LaTeX lokalnie:

pdflatex main.tex


Polecenie należy wykonać w katalogu zawierającym plik main.tex
(np. latex/script/ lub latex/instruction/).

Workflow Git

Projekt realizowany był z użyciem dwóch głównych gałęzi:

main – stabilna wersja projektu,

develop – gałąź robocza.

Zmiany były wprowadzane na gałęzi develop i integrowane z main
za pomocą Pull Requestów.

Autor

Aleksandra Snopek
