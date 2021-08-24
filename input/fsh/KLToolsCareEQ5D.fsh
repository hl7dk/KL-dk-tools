Instance: KLToolsCareEQ5D
InstanceOf: KLToolsQuestionnaire
Usage: #definition
Title: "EQ-5D questionnaire"
* status = #draft
* publisher = "Kommunernes Landsforening"
* description = "Ikke-sygdomsspecifikt spørgeskema til at vurdere helbredsrelateret livskvalitet. Tidsrammen for borgers vurdering er borgers aktuelle tilstand (i dag)."
* name = "KLToolsCareEQ5D"
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

Instance: EQ5DAnswerHelene
InstanceOf: KLToolsQuestionnaireResponse
Usage: #example
Title: "EQ5DAnswersHelene"
Description: "EQ5D BesvarelseHelene"
* questionnaire = "http://kl.dk/fhir/tools/care/Questionnaire/KLToolsCareEQ5D"
* status = #completed
* subject = Reference(Helene)
* author = Reference(AbrahamFraAkutSygeplejen)
* source = Reference(Helene)
* extension[techniqe].valueCodeableConcept = KLToolsCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja "Ingen problemer med test-setup og borgers udførelse"
* extension[findingInformer].valueCodeableConcept = KLToolsCodes#a3d30bf2-4a3c-4c49-9001-5363ae11681c "Borger"
//Hertil fejl OBS!
* item[0].linkId = "mobility"
* item[0].answer.valueCoding = KLToolsCodes#95be0ff6-ab05-4918-be8e-6dbb820366bb "Jeg har nogle problemer med at gå omkring (2)"

* item[1].linkId = "hygiene"
* item[1].answer.valueCoding = KLToolsCodes#0f33b1ee-a26b-47b0-ab99-0a67494656e3 "Jeg har ingen problemer med min personlige pleje (1)"

* item[2].linkId = "activity"
* item[2].answer.valueCoding = KLToolsCodes#815b8b40-e2f6-4f55-a328-17c886e41490 "Jeg har ingen problemer med at udføre mine sædvanlige aktiviteter (1)"

* item[3].linkId = "pain"
* item[3].answer.valueCoding = KLToolsCodes#3616b50a-440a-4268-9c8a-660123526540 "Jeg har moderate smerter eller ubehag (2)"

* item[4].linkId = "anxiety"
* item[4].answer.valueCoding = KLToolsCodes#841deb88-b0b1-4f3b-9101-98da06870088 "Jeg er ikke ængstelig eller deprimeret (1)"

* item[5].linkId = "vas"
* item[5].answer.valueInteger = 70