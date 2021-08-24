### Scope and Usage
WHO-5 Rested is used to represent the result of the fifth question about being interested in an WHO-5 questionnaire.

Observation.code is fixed to a SNOMED CT code.

the value[x] is a valueCodeableConcept, which is bound to the answers from the questionaire, and a more generalized SNOMED CT ValueSet. The latter coding is included to allow for better data extraction.

To make explicite, who answered the questionnaire, a finding informer extension with a required value set is included.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 365462008 'Finding of level of interest (finding)'

Observations.derivedFrom has a mandatory reference to the questionnaire response, that produced this observation.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|WHO5InteresseretKode|Klasse som udtrykker, at der observeres på borgers interesse ifølge WHO-5.|Observation.code|
|WHO5InteresseretResultat|Klasse, der udtrykker, svaret på spørgsmålet |Observation.valueCodeableConcept.coding|
|WHO5InteresseretSubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|WHO5Interesseretkontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|WHO5InteresseretAnsvarlig|Den fagperson der er ansvarlig for observationen.|Observation.performer|
|WHO5InteresseretKilde|Den person der er kilde til resultatet|Observation:extension.findingInformer|
|WHO5InteresseretAssocieretFund|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|WHO5Interesserettid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|WHO5InteresseretStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|