### Scope and Usage
WHO-5 Rested is used to represent the result of the fourth question about being rested in an WHO-5 questionnaire.

Observation.code is fixed to a SNOMED CT code.

the value[x] is a valueCodeableConcept, which is bound to the answers from the questionaire, and a more generalized SNOMED CT ValueSet. The latter coding is included to allow for better data extraction.

To make explicite, who answered the questionnaire, a finding informer extension with a required value set is included.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 106168000 'Finding related to sleep (finding)'

Observations.derivedFrom has a mandatory reference to the questionnaire response, that produced this observation.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|WHO5UdhviletKode|Klasse som udtrykker, at der observeres på borgers Udhvilethed ifølge WHO-5.|Observation.code|
|WHO5UdhviletResultat|Klasse, der udtrykker, svaret på spørgsmålet |Observation.valueCodeableConcept.coding|
|WHO5UdhviletSubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|WHO5Udhviletkontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|WHO5UdhviletAnsvarlig|Den fagperson der er ansvarlig for observationen.|Observation.performer|
|WHO5UdhviletKilde|Den person der er kilde til resultatet|Observation:extension.findingInformer|
|WHO5UdhviletAssocieretFund|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|WHO5Udhvilettid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|WHO5UdhviletStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|