
### Scope and Usage
EQ-5D activity is used to represent the result of the question about activity in an EQ-5D questionnaire.

Observation.code is fixed to the SNOMED CT code 284545001 'Ability to perform activities of everyday life (observable entity)'

the value[x] is a valueCodeableConcept, which is bound to the answers from the questionaire, and a more generalized SNOMED CT ValueSet. The latter coding is included to allow for better data extraction.

To make explicite, who answered the questionnaire, a finding informer extension with a required value set is included.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 118233009 'Finding of activity of daily living (finding)'.

Observations.derivedFrom has a mandatory reference to the questionnaire response, that produced this observation.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|EQ5DAktivitetKode|Klasse som udtrykker, at der observeres på borgers EQ-5D Aktivitet.|Observation.code|
|EQ5DAktivitetResultat|Klasse, der udtrykker, svaret på spørgsmålet vedrørende Aktivitet |Observation.valueQuantity.value|
|EQ5DAktivitetsubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|EQ5DAktivitetkontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|EQ5DAktivitetansvarlig|Den fagperson der er ansvarlig for observationen.|Observation.performer|
|EQ5DAktivitetKilde|Den person der er kilde til resultatet|Observation:extension.findingInformer|
|EQ5DAktivitetAssocieretFund|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|EQ5DAktivitettid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|EQ5DAktivitetStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|

