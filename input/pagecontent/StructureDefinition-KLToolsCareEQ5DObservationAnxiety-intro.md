### Scope and Usage
EQ-5D anxiety is used to represent the result of the question about anxiety and depression in an EQ-5D questionnaire.

Observation.code is fixed to the SNOMED CT code 285854004 'Emotion (observable entity)'

the value[x] is a valueCodeableConcept, which is bound to the answers from the questionaire, and a more generalized SNOMED CT ValueSet. The latter is included to allow for better data extraction.

To make explicite, who answered the questionnaire, a finding informer extension with a required value set is included.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 106126000 'Emotional state finding (finding)'.

Observations.derivedFrom has a mandatory reference to the questionnaire response, that produced this observation.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|EQ5DAngstKode|Klasse som udtrykker, at der observeres på borgers EQ-5D Angst.|Observation.code|
|EQ5DAngstResultat|Klasse, der udtrykker, svaret på spørgsmålet vedrørende angst |Observation.valueQuantity.value|
|EQ5DAngstsubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|EQ5DAngstkontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|EQ5DAngstansvarlig|Den fagperson der er ansvarlig for observationen.|Observation.performer|
|EQ5DAngstKilde|Den person der er kilde til resultatet|Observation:extension.findingInformer|
|EQ5DAngstAssocieretFund|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|EQ5DAngsttid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|EQ5DAngstStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|