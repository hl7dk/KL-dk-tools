### Scope and Usage
EQ-5D mobility is used to represent the result of the first question about mobility in an EQ-5D questionnaire.

Observation.code is fixed to the SNOMED CT code 301438001 'Ability to mobilize (observable entity)'

the value[x] is a valueCodeableConcept, which is bound to the answers from the questionaire, and a more generalized SNOMED CT ValueSet. The latter coding is included to allow for better data extraction.

To make explicite, who answered the questionnaire, a finding informer extension with a required value set is included.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 364832000 'Finding related to ability to perform gross motor function (finding)'.

Observations.derivedFrom has a mandatory reference to the questionnaire response, that produced this observation.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|EQ5DMobilitetKode|Klasse som udtrykker, at der observeres på borgers EQ-5D Mobilitet.|Observation.code|
|EQ5DMobilitetResultat|Klasse, der udtrykker, svaret på spørgsmålet vedrørende mobilitet |Observation.valueCodeableConcept.coding|
|EQ5DMobilitetsubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|EQ5DMobilitetkontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|EQ5DMobilitetansvarlig|Den fagperson der er ansvarlig for observationen.|Observation.performer|
|EQ5DMobilitetKilde|Den person der er kilde til resultatet|Observation:extension.findingInformer|
|EQ5DMobilitetAssocieretFund|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|EQ5DMobilitettid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|EQ5DMobilitetStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|