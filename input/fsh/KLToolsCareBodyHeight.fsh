Profile: KLToolsCareBodyHeight
Parent: http://hl7.org/fhir/StructureDefinition/bodyheight
Title: "Body height"
Description: "Body height profile used in Danish Municipalities, derived from HL7 standard profile"
//SNOMED on FHIR recommendation
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from BodyheightSCTobservables (extensible)
* code.coding[snomedSlice].system = SCT

//KL extensions "kilde", associeret tilstand, procedure fulgt/teknik
* method 1..1
* method.coding ^slicing.discriminator.type = #value
* method.coding ^slicing.discriminator.path = "system"
* method.coding ^slicing.rules = #open
* method.coding contains
   KLCode 1..1 and SCTCode 0..1
* method.coding[KLCode] from KLtechniquesCodes (required)
* method.coding[KLCode].system = KLToolsCodeSystem
* method.coding[SCTCode] from TechniqesSCTCodes (required)
* method.coding[SCTCode].system = SCT

* code ^short = "[DK] HøjdeKode"
* valueQuantity.value ^short = "[DK] HøjdeResultat"
* valueQuantity.code ^short = "[DK] HøjdeEnhed"
* valueQuantity.system ^short = "[DK] HøjdeEnhed"
* subject ^short = "[DK] Højdesubjekt"
* encounter ^short = "[DK] Højdekontakt"
* performer ^short = "[DK] Højdeansvarlig"
* method ^short = "[DK] HøjdeProcedure"
* effectiveDateTime ^short = "[DK] Højdetid"
* note.text ^short = "[DK] HøjdeBemærkning"
* status ^short = "[DK] HøjdeStatus"

Instance: HeleneBodyHeight
InstanceOf: KLToolsCareBodyHeight
Usage: #example
Title: "HeleneBodyHeight"
Description: "Helenes kropshøjde"
* subject = Reference(Helene)
* code.coding[snomedSlice] = SCT#165263003
* code.coding[BodyHeightCode] = LOINC#8302-2
* valueQuantity.value = 1.69
* valueQuantity.unit = "m"
* valueQuantity.system = UCUM
* valueQuantity.code = #m
* method.coding[KLCode] = KLToolsCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja //"Ingen problemer med test-setup og borgers udførelse"
* method.coding[SCTCode] = SCT#272391002 //|Measurement technique (qualifier value)|
* status = #final
* effectiveDateTime = 2019-01-09T17:45:00.000Z