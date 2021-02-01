### Scope and Usage
EQ-5D pain is used to represent the result of the question about pain in an EQ-5D questionnaire.

Observation.code is fixed to the SNOMED CT code 364624006 'Pain / sensation observable (observable entity)'

the value[x] is a valueCodeableConcept, which is bound to the answers from the questionaire, and a more generalized SNOMED CT ValueSet. The latter coding is included to allow for better data extraction.

To make explicite, who answered the questionnaire, a finding informer extension with a required value set is included.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 106147001 'Sensory nervous system finding (finding)'.

Observations.derivedFrom has a mandatory reference to the questionnaire response, that produced this observation.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|EQ5DSmerteKode|Klasse som udtrykker, at der observeres på borgers EQ-5D Smerte.|Observation.code|
|EQ5DSmerteResultat|Klasse, der udtrykker, svaret på spørgsmålet vedrørende Smerte |Observation.valueQuantity.value|
|EQ5DSmertesubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|EQ5DSmertekontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|EQ5DSmerteansvarlig|Den fagperson der er ansvarlig for observationen.|Observation.performer|
|EQ5DSmerteKilde|Den person der er kilde til resultatet|Observation:extension.findingInformer|
|EQ5DSmerteAssocieretFund|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|EQ5DSmertetid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|EQ5DSmerteStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|

