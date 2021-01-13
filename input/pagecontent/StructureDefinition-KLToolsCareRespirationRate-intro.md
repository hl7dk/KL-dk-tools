## Scope and usage
KLToolsCareRespirationRate is an observation of rate of respiration. Its intended use is Danish municipalities.

#### Test-setup
The respiration rate of the citizen is meassured by counting number of breaths in a whole minute, while the citizen is at rest, or by using an appropriate device.

#### Citizen performance
The citizen is sitting or lying still, and is calm throughout the meassurement.

#### Using the model
The Observation.code is fixed to a single LOINC code 9279-1 'Respiratory rate' and a ValueSet with different SNOMED CT codes for respiratory rate. The SNOMED CT code 86290005 'Respiratory rate (observable entity)' is appropriate for most use cases.

Observation.value[x] is of type Observation.valueQuantity. It should contain a positive decimal in Observation.valueQuantity.value, and use the UCUM unit for 'per minute'.

Observation.method holds information about whether the "Test-setup" and "Citizen performance" have met the procedure-standards as described by KL, which are summarized above in English. In addition, use the SNOMED CT code 761996005 'Estimation technique (qualifier value)' if the procedure standard has not been followed, and 272391002' Measurement technique (qualifier value)' otherwise.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 106048009 'Respiratory finding (finding)'.

Observation.note.text may be used to hold remarks about the observation. Observation.status is typically 'final'.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|RespirationsfrekvensKode|Klasse som udtrykker, at der observeres på borgers respirationsfrekvens.|Observation.code|
|RespirationsfrekvensResultat|Decimaltal, der udtrykker, antallet af vejrtrækninger pr minut. |Observation.valueQuantity.value|
|RespirationsfrekvensEnhed|Klasse, der udtrykker, at den enhed der anvendes er /min.|Observation.valueQuantity.system and Observation.valueQuantity.code|
|RespirationsfrekvensSubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|RespirationsfrekvensKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|RespirationsfrekvensAnsvarlig|Den fagperson, der er ansvarlig for observationen.|Observation.performer|
|RespirationsfrekvensProcedure|Information vedr. den procedure, der er brugt ifm. udførelsen ift. om test-setup og borgers udførelse har været i overensstemmelse med det beskrevne.|Observation.method|
|RespirationsfrekvensTid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|RespirationsfrekvensAssocieretTilstand|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|RespirationsfrekvensBemærkning|Bemærkning vedr. observationen|Observation.note.text|
|RespirationsfrekvensStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|