Instance: KLToolsCareEQ5D
InstanceOf: KLToolsQuestionnaire
Usage: #definition
Title: "EQ-5D questionnaire"
* status = #draft
* publisher = "Kommunernes Landsforening"
* description = "Ikke-sygdomsspecifikt spørgeskema til at vurdere helbredsrelateret livskvalitet. Tidsrammen for borgers vurdering er borgers aktuelle tilstand (i dag)."
* name = "EQ-5D (EQ-5D-3L)"
* code = SCT#1144655003 //|EuroQol five dimension three level index value (observable entity)|
* item[0].type = #choice
* item[0].text = "Bevægelighed"
* item[0].linkId = "mobility"
* item[0].answerValueSet = "http://kl.dk/fhir/tools/care/ValueSet/EQ5Dmobility"
* item[0].code =  SCT#301438001 //|Ability to mobilize (observable entity)|
* item[0].repeats = false

* item[1].type = #choice
* item[1].text = "Personlig pleje"
* item[1].linkId = "hygiene"
* item[1].answerValueSet = "http://kl.dk/fhir/tools/care/ValueSet/EQ5Dhygiene"
* item[1].code =  SCT#284773001 //|Ability to perform personal care activity (observable entity)|
* item[1].repeats = false

* item[2].type = #choice
* item[2].text = "Sædvanlige aktiviteter (fx arbejde, studie, husarbejde, familie- eller fritidsaktiviteter)"
* item[2].linkId = "activity"
* item[2].answerValueSet = "http://kl.dk/fhir/tools/care/ValueSet/EQ5Dactivity"
* item[2].code =  SCT#284545001 //|Ability to perform activities of everyday life (observable entity)|
* item[2].repeats = false

* item[3].type = #choice
* item[3].text = "Smerter/ubehag"
* item[3].linkId = "pain"
* item[3].answerValueSet = "http://kl.dk/fhir/tools/care/ValueSet/EQ5Dpain"
* item[3].code =  SCT#364624006 //|Pain / sensation observable (observable entity)|
* item[3].repeats = false

* item[4].type = #choice
* item[4].text = "Angst/Depression"
* item[4].linkId = "anxiety"
* item[4].answerValueSet = "http://kl.dk/fhir/tools/care/ValueSet/EQ5Danxiety"
* item[4].code =  SCT#285854004 //|Emotion (observable entity)|
* item[4].repeats = false

* item[5].type = #integer
* item[5].text = "EQ-VAS-score"
* item[5].linkId = "vas"
* item[5].code =  SCT#736535009 //|EuroQol visual analogue score (observable entity)|
* item[5].repeats = false
* item[5].extension[maxValue].valueInteger = 100
* item[5].extension[minValue].valueInteger = 0

* item[6].type = #text
* item[6].text = "Kommentar til EQ-5D"
* item[6].linkId = "eq5dcomment"
* item[6].repeats = false