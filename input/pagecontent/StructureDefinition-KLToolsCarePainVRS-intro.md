## Scope and usage
PainVAS is an observation of pain intensity using a verbal rating scale. Please note that this implementation guide also include a visual rating scale for pain, and use the two profiles according the context.

#### Using the model
The Observation.code is fixed to the SNOMED CT code 225908003 'Pain score (observable entity'

Observation.value[x] is a valueCodeableConcept, which is bound to a five-level rating scale for pain. The rating scale is expressed using the Danish original rating scale with local codes, and with an equivalent SNOMED CT ValueSet.

To make explicite, who answered the questionnaire, a finding informer extension with a required value set is included.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code SCT#22253000 'Pain (finding)'.

Observation.note.text may be used to hold remarks about the observation. Observation.status is typically 'final'.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|SmerteVRSKode|Klasse som udtrykker, at der observeres på borgers Smerte målt vha. VRS.|Observation.code|
|SmerteVRSResultat|Klasse som udtrykker smerteintensiteten|Observation.value[x]|
|SmerteVRSSubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|SmerteVRSKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|SmerteVRSAnsvarlig|Den fagperson, der er ansvarlig for observationen.|Observation.performer|
|SmerteVRSKilde|Den person der er kilde til resultatet|Observation:extension.findingInformer|
|SmerteVRSTid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|SmerteVRSAssocieretTilstand|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|SmerteVRSBemærkning|Bemærkning vedr. observationen|Observation.note.text|
|SmerteVRSStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|