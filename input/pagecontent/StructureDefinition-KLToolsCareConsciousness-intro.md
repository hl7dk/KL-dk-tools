## Scope and usage
KLToolsCareConciousness is a structured assessment of conciousness, as defined by TOBS. Its intended use is Danish municipalities.

#### Test-setup
The observation is performed at a time of day, where the citizen is normally awake. 

#### Citizen performance
The result is based on the performer's clinical observation of the citizen, at the observation-time. I.e. the result is not obscured by next-of-kin or other employees, that tries to report another finding, than what the perfomer is observing. 

#### Using the model
The Observation.code is fixed to a SNOMED CT code 444714004 'Assessment of consciousness level (procedure)'.

Observation.value[x] is of type Observation.valueCodeableConcept. Both a municipality TOBS-specific ValueSet and a SNOMED CT ValueSet define the valid values. 

Observation.method holds information about whether the "Test-setup" and "Citizen performance" have met the procedure-standards as described by KL, which are summarized above in English.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 106167005 |Consciousness related finding (finding)|.

Observation.note.text may be used to hold remarks about the observation. Observation.status is typically 'final'.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|BevidsthedKode|Klasse som udtrykker, at borgers bevidsthed vurderes.|Observation.code|
|BevidsthedResultat|Klasse, der udtrykker borgers bevidsthedsniveau.|Observation.valueCodeableConcept|
|BevidsthedSubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|BevidsthedKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|BevidsthedAnsvarlig|Den fagperson, der er ansvarlig for observationen af bevidsthed.|Observation.performer|
|BevidsthedProcedure|Information vedr. den procedure, der er brugt ifm. udførelsen ift. om test-setup og borgers udførelse har været i overensstemmelse med det beskrevne.|Observation.method|
|BevidsthedTid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|BevidsthedAssocieretTilstand|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med|Observation:extension.associatedCondition|
|BevidsthedBemærkning|Bemærkning vedr. observationen|Observation.note.text|
|BevidsthedStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|