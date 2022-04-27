# Regional-Media-Coverage-and-Election-Results

## Abstract
This paper studies the impact of media coverage on voting behavior by measuring the sentiment of different media outlets during German Bundestag elections in 2002 and 2005. We therefore create a unique data set containing media distribution and votes on administrative district level. We show that there is a positive relationship between media coverage and voting outcomes and how media sentiment plays a crucial role. Moreover, our results suggest two different effects that impacted the elections. First, a strong short-term effect and second a long-term opinion building effect. As media and politics are interdependent with each other, we use an instrument variable approach to control for endogeneity.


## Datenaufbereitung


Zusammenführung und Aufbereitung der einzelnen Datensätze wurde in [Alteryx](https://www.alteryx.com/de/) durchgeführt.

"Media Distribution Gesamt" (MDG) und "Election Result Kreis Gesamt" (ERKG) müssen über die Gemeindekennziffer (GKZ) verbunden werden. 
MDG: Jahresspalten müssen angeglichen werden, da MDG im Zweijahresrhytmus und ERKG im Jahresrhytmus. Hier wird jeweils der Mittelwert genommen. 
GKZ wird angeglichen und mit dem Datum als ID benutzt um Datensätze zu joinen. Anschließend werden die Name der einzelnen Medien angeglichen und wiederum mit den Sentiment-Daten,über Datum, Partei und Medium bzw. Belegungseinheit gejoint. Die Sentiment-Daten wurde zuvor schon aufbereitet, so wurde die Tonalität berechnet und einzelnen Datensätze zusammengeführt, Datumsfelder erstellt, etc..
Es folgen Schritte zur Berechnung der Standortauflage pro 100 Anwohner, Dummy-Daten zur VGR, zum Arbeitsmarkt und zur Migration werden gejoint und angepasst. Daten werden auf Wahlmonate (200209, 200509) gefiltert.

## Do-Files
### Aktuell
Enthält sämtliche OLS-Schätzungen die im Laufe des Papers ausprobiert wurden.
### Aktuell_Instrument
Enthält sämtliche Instrument-Schätzungen die im Laufe des Papers ausprobiert wurden. Das Instrument variiert dabei.
### Aktuell_Kurzfassung:
Enthält nur den Code des zuletzt im Paper verwendeten OLS-Schätzungen. 
### Aktuell_Instrument_Kurzfassung:
Enthält nur den Code des zuletzt im Paper verwendeten Instrument-Schätzungen. Das Instrument setzt sich jeweils aus 20 zufälligen Kreisen (10 konservative und 10 linke nach PCI) zusammen. Schätzungen werden jeweils mit "2sls" und "ivreg2" durchgeführt.
