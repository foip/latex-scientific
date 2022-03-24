# LaTeX-Vorlage für wissenschaftliches Arbeiten an der Fakultät Informatik der HFU

## Installation

Zur Verwendung der Vorlage müssen einige Softwarepakete auf dem System zur Verfügung stehen.
Diese können entweder mithilfe von Docker oder manuell installiert werden.

### Visual Studio Code + Docker

Diese Vorlage ist am einfachsten mithilfe von VS-Code und  Docker zu verwenden.
Voraussetzung sind folgende Programme:

* [VS-Code](https://code.visualstudio.com/docs/setup/setup-overview)
* [Docker Engine](https://docs.docker.com/engine/install/)

Zusätzlich wird folgende VS-Code Erweiterung benötigt:

* [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

Wird das Projekt in VS-Code geöffnet, erscheint die Benachrichtigung `"Folder contains a Dev Container configuration file [...]"`.
Die Benachrichtigung muss mit `"Reopen in Container"` bestätigt werden.
Alternativ befindet sich in der unteren linken Ecke des Fensters eine kleine, grüne Schaltfläche.
Beim Klick auf die Schaltfläche erscheint am oberen Fensterrand ebenfalls die Option `"Reopen in Container"`.

Das Öffnen des Projektes in einem Container kann beim ersten Mal einige Minuten dauern, da der Container zuerst gebaut werden muss.
Im Container werden benötigte Softwarepakete und VS-Code Erweiterungen installiert.

Wird die Datei `main.tex` im Editor geöffnet, sollte in der linken Leiste ein Reiter mit dem Titel "TeX" erscheinen.
Über den Befehl `"Build LaTeX Project"` bzw. `"Recipe: latexmk"` sollte sich das Projekt bauen lassen.

Alternativ kann über die Kommando-Palette von VS-Code ein integriertes Terminal öffnen. Der entsprechnde Befehl lautet `"Terminal: Create New Terminal"`.
Dort kann das Projekt mit dem Befehl `make` gebaut werden.
Die erzeugten temporären Dateien können mit `make clean` aufgeräumt werden.

## Manuelle Installation

Für die Manuelle Installation der Umgebung kann die Datei `.devcontainer/Dockerfile` als Referenz genommen werden.
Dort wird `texlive` als LaTeX-Distribution verwendet.
Jede andere Distribution sollte aber auch funktionieren (z.B. MikTeX unter Windows).
Als Backend für die Literaturverwaltung wird `biber` verwendet.
Dieses Programm muss manuell installiert werden, sofern es nicht in der LaTeX-Distribution enthalten ist.

Das Paket `python-pygments` wird für die Darstellung von Quellcode benötigt.
Für dieses Paket wird [Python](https://www.python.org/downloads/) benötigt.
Pygments kann von der Kommandozeile mit dem Befehl `pip install Pygments` installiert werden (siehe auch https://pygments.org/).
Pygments beinhaltet das Programm `pygmentize`.
Dieses sollte sich auf dem Pfad der `PATH` Umgebungsvariable befinden.

Zum Bauen des Projektes kann der Befehl aus der `Makefile` als Referenz verwendet werden.
Die Parameter sollten in der IDE konfigurierbar sein.
Wichtig ist hauptsächlich der Parameter `-shell-escape`.

## Struktur der Vorlage

Die Vorlage besteht aus vier Teilen:

* `main.tex`
* `meta`
* `content`
* `appendix`

In der Datei `main.tex` ist die Dokumentstruktur hinterlegt.
Im "Startteil" können je nach Bedarf einzelne Verzeichnisse auskommentiert werden.
Im "Hauptteil" werden mit `\include`-Befehlen die eigenen Kapitel eingefügt.
Im "Schlussteil" kann wahlweise ein Schlagwortverzeichnis eingebunden werden und Anhänge mit `\include` eingefügt werden.

Im `meta`-Verzeichnis befinden sich Dokumententeile, die nicht direkt zum Textkörper der Arbeit gehören:

* Titelblatt (`title.tex`)
* Eidesstattliche Erklärung (`affirmation.tex`)
* Präambel (`preamble.tex`)
* Abkürzungsdefinitionen (`glossary.tex`)
* Literatur (`literature.bib`)

Vom Benutzer sollten nur die Literatur und Abkürzungen verändert werden.
Die anderen Dokumente sollten nur abgeändert werden, wenn unbedingt notwendig.
In der Präambel sind sämtliche Pakete und Layouts definiert, wie sie in den "Richtlinien für wissenschaftliche Arbeiten" gefordert sind.
Sollten sich diese Anforderungen ändern, wäre das ein guter Grund für Änderungen der Präambel.

Im `content`-Verzeichnis wird der Text und Abbildungen für den Hauptteil der Arbeit verfasst bzw. hinterlegt.
Die Funktion sollte an der Beispieleinleitung zu erkennen sein.

Im `appendix`-Verzeichnis sind die Anhänge hinterlegt.
Auch diese sollten selbsterklärend sein.
Bei Bachelorarbeiten befinden sich hier auch die Monatsberichte.
Ein entsprechendes Berichtsformular ist hinterlegt.

## Verwendung

Die Verwendung einzelner Befehle, wie dem Einfügen von Bildern, sind entweder im gebauten Vorlagendokument selbst erklärt, oder können aus dem Quellcode entnommen werden.

## Lizenz

Da diese Vorlage nur für die Fakultät Informatik der HFU interessant ist, wird wahrscheinlich keine formale Lizenz benötigt.
Die Lizensierung wird dem überlassen, der diese Vorlage zuerst bekommt.

Autor: Marius Hirt \<hirtmari@hs-furtwangen.de\>
