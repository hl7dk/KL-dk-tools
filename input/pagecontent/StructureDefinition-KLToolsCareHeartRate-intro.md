## Scope and usage
KLToolsCareHeartRate is an observation of heart rate. Its intended use is Danish municipalities.

#### Test-setup
The heart rate of the citizen is meassured using an appropriate device (typically but not always meassuring pulse in a. brachialis in the upper arm), or by palpation of arteria radialis (wrist), a. corotis communis (throat), a. temporalis superficialis (in front of the ear), a. femoralis (groin), a. tibialis posterior (ankel), or a. dorsalis pedis (dorsum of foot). 15 seconds is the minimal meassuring time if heart rate is meassured by palpation.

#### Citizen performance
The citizen is sitting or lying still, and is calm throughout the meassurement.

#### Using the model
The Observation.code is fixed to a single LOINC code 8867-4 'Heart rate' and a ValueSet with different SNOMED CT codes for heart rate. The SNOMED CT code 364075005 'Heart rate (observable entity)' is appropriate for most use cases. However, a pulse rate might be meassured in the foot, to obseve the status of the vascular system, and the risk of ulcers. If so, please use the appropriate SNOMED CT codes 429525003 'Heart rate measured at dorsalis pedis artery (observable entity)' or 429614003 'Heart rate measured at posterior tibial artery (observable entity)'. 

Observation.value[x] is of type Observation.valueQuantity. It should contain a positive decimal in Observation.valueQuantity.value, and use the UCUM unit for 'per minute'.

Observation.method holds information about whether the "Test-setup" and "Citizen performance" have met the procedure-standards as described by KL, which are summarized above in English. In addition, use the SNOMED CT code 761996005 'Estimation technique (qualifier value)' if the procedure standard has not been followed, and 272391002' Measurement technique (qualifier value)' otherwise.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 106063007 'Cardiovascular finding'.

Observation.note.text may be used to hold remarks about the observation. Ideally, pulse rythm and pulse volume (pulsens rytme og kvalitet) should not be recorded here. They are better recorded using separate observations. Observation.status is typically 'final'.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|HjertefrekvensKode|Klasse som udtrykker, at der observeres på borgers hjertefrekvens.|Observation.code|
|HjertefrekvensResultat|Decimaltal, der udtrykker, antallet af hjerteslag pr. minut. |Observation.valueQuantity.value|
|HjertefrekvensEnhed|Klasse, der udtrykker, at den enhed der anvendes er /min.|Observation.valueQuantity.system and Observation.valueQuantity.code|
|HjertefrekvensSubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|HjertefrekvensKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|HjertefrekvensAnsvarlig|Den fagperson, der er ansvarlig for observationen.|Observation.performer|
|HjertefrekvensProcedure|Information vedr. den procedure, der er brugt ifm. udførelsen ift. om test-setup og borgers udførelse har været i overensstemmelse med det beskrevne.|Observation.method|
|HjertefrekvensTid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|HjertefrekvensAssocieretTilstand|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|HjertefrekvensBemærkning|Bemærkning vedr. observationen|Observation.note.text|
|HjertefrekvensStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|