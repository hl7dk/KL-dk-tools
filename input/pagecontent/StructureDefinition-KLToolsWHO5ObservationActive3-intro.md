### Scope and Usage
WHO-5 active is used to represent the result of the third question about being activive in an WHO-5 questionnaire.

Observation.code is fixed to a SNOMED CT code.

the value[x] is a valueCodeableConcept, which is bound to the answers from the questionaire, and a more generalized SNOMED CT ValueSet. The latter coding is included to allow for better data extraction.

To make explicite, who answered the questionnaire, a finding informer extension with a required value set is included.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 301325005 'Finding of general energy (finding)'

Observations.derivedFrom has a mandatory reference to the questionnaire response, that produced this observation.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|WHO5AktivKode|Klasse som udtrykker, at der observeres på borgers aktivitet ifølge WHO-5.|Observation.code|
|WHO5AktivResultat|Klasse, der udtrykker, svaret på spørgsmålet.|Observation.valueCodeableConcept.coding|
|WHO5AktivSubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|WHO5Aktivkontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|WHO5AktivAnsvarlig|Den fagperson der er ansvarlig for observationen.|Observation.performer|
|WHO5AktivKilde|Den person der er kilde til resultatet|Observation:extension.findingInformer|
|WHO5AktivAssocieretFund|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|WHO5Aktivtid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|WHO5AktivStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|