Instance: KLToolsCareWHO5
InstanceOf: KLToolsQuestionnaire
Usage: #definition
Title: "WHO-5 questionnaire"
* status = #draft
* publisher = "Kommunernes Landsforening"
* description = "Instrument til at måle graden af positive oplevelser, og som kan anvendes som et mål for personers generelle trivsel eller velbefindende. Tidsrammen er de seneste to uger."
* name = "KLToolsCareWHO5"
* code = SCT#1144665009
* item[0].type = #choice
* item[0].text = "I de sidste 2 uger har jeg været glad og i godt humør"
* item[0].linkId = "happy"
* item[0].answerValueSet = "http://fhir.kl.dk/ffinst/ValueSet/WHO5AnswerCodesHappy"
* item[0].code =  SCT#285854004 //|Emotion (observable entity)|
* item[0].repeats = false

* item[1].type = #choice
* item[1].text = "I de sidste 2 uger har jeg følt mig rolig og afslappet"
* item[1].linkId = "calm"
* item[1].answerValueSet = "http://fhir.kl.dk/ffinst/ValueSet/WHO5AnswerCodesCalm"
* item[1].code = SCT#285854004 //|Emotion (observable entity)|
* item[1].repeats = false

* item[2].type = #choice
* item[2].text = "I de sidste 2 uger har jeg følt mig aktiv og energisk"
* item[2].linkId = "active"
* item[2].answerValueSet = "http://fhir.kl.dk/ffinst/ValueSet/WHO5AnswerCodesActive"
* item[2].code =  SCT#406202006 //"Træk vedr. energi"
* item[2].repeats = false

* item[3].type = #choice
* item[3].text = "I de sidste 2 uger er jeg vågnet frisk og udhvilet"
* item[3].linkId = "rested"
* item[3].answerValueSet = "http://fhir.kl.dk/ffinst/ValueSet/WHO5AnswerCodesRested"
* item[3].code =  SCT#404949004 //"Hvilemønster"
* item[3].repeats = false

* item[4].type = #choice
* item[4].text = "I de sidste 2 uger har min dagligdag været fyldt med ting der interesserer mig"
* item[4].linkId = "interest"
* item[4].answerValueSet = "http://fhir.kl.dk/ffinst/ValueSet/WHO5AnswerCodesInterest"
* item[4].code =  SCT#247752005 //"Interesseniveau"
* item[4].repeats = false

* item[5].type = #text
* item[5].text = "Kommentar til WHO5"
* item[5].linkId = "who5comment"
* item[5].repeats = false

Instance: WHO-5AnswerMark
InstanceOf: KLToolsQuestionnaireResponse
Usage: #example
Title: "WHO-5AnswersMark"
Description: "WHO-5 besvarelse Mark"
* questionnaire = "http://fhir.kl.dk/ffinst/Questionnaire/KLToolsCareWHO5"
* status = #completed
* subject = Reference(Mark)
* author = Reference(AbrahamFraAkutSygeplejen)
* source = Reference(Mark)
* extension[techniqe].valueCodeableConcept = KLToolsCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja "Ingen problemer med test-setup og borgers udførelse"
* extension[findingInformer].valueCodeableConcept = KLToolsCodes#a3d30bf2-4a3c-4c49-9001-5363ae11681c "Borger"

* item[0].linkId = "happy"
* item[0].answer.valueCoding = KLToolsCodes#0e5aa952-d470-4219-b275-5e8204d96987 "WHO-5 Hele tiden - 5 (glad)"

* item[1].linkId = "calm"
* item[1].answer.valueCoding = KLToolsCodes#1ab11c78-6258-4069-9065-0f076833b133 "WHO-5 Lidt mere end halvdelen af tiden - 3 (rolig)"

* item[2].linkId = "active"
* item[2].answer.valueCoding = KLToolsCodes#3d3c13a6-befa-4a52-aef0-7e775ca11fdd "WHO-5 Hele tiden - 5 (aktiv)"

* item[3].linkId = "rested"
* item[3].answer.valueCoding = KLToolsCodes#7aaccc2e-ead3-41f0-a9ba-091f2e539753 "WHO-5 Hele tiden - 5 (frisk)" 

* item[4].linkId = "interest"
* item[4].answer.valueCoding = KLToolsCodes#2ca88533-c048-4b2a-9ac2-2206b63a25ac "WHO-5 Hele tiden - 5 (interesseret)" 