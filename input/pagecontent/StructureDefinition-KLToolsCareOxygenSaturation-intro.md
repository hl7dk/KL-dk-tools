## Scope and usage
KLToolsCareOxygenSaturation is an observation of oxygen saturation. Its intended use is Danish municipalities.

#### Test-setup
The oxygen saturation of the citizen is meassured using an appropriate device, and a prope appropriate for the place where the oxygen saturation is meassured. The device is not subjected to bright light e.g. direct sunlight during the meassurment. The place of meassurment have no articifial colouring i.e. nail polish, henna or tatoos.  

#### Citizen performance
The citizen is at rest, and holds steady. 

#### Using the model
The Observation.code is fixed to a single LOINC code 2708-6 'Oxygen saturation in Arterial blood' and a ValueSet with a single SNOMED CT codes for oxygen saturation: 431314004 |Peripheral oxygen saturation (observable entity)|, which is appropriate for all use cases.

Observation.value[x] is of type Observation.valueQuantity. It should contain a positive decimal in Observation.valueQuantity.value, and use the UCUM unit for percent.

Observation.method holds information about whether the "Test-setup" and "Citizen performance" have met the procedure-standards as described by KL, which are summarized above in English. In addition, use the SNOMED CT code 761996005 'Estimation technique (qualifier value)' if the procedure standard has not been followed, and 272391002' Measurement technique (qualifier value)' otherwise.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 106048009 "Respiratory finding (finding)".

Observation.note.text may be used to hold remarks about the observation. Observation.status is typically 'final'.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|IltmætningKode|Klasse som udtrykker, at der observeres på borgers iltmætning.|Observation.code|
|IltmætningResultat|Decimaltal, der udtrykker, iltmætningen procentvis. |Observation.valueQuantity.value|
|IltmætningEnhed|Klasse, der udtrykker, at den enhed der anvendes er /min.|Observation.valueQuantity.system and Observation.valueQuantity.code|
|IltmætningSubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|IltmætningKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|IltmætningAnsvarlig|Den fagperson, der er ansvarlig for observationen.|Observation.performer|
|IltmætningProcedure|Information vedr. den procedure, der er brugt ifm. udførelsen ift. om test-setup og borgers udførelse har været i overensstemmelse med det beskrevne.|Observation.method|
|IltmætningTid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|IltmætningAssocieretTilstand|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|IltmætningBemærkning|Bemærkning vedr. observationen|Observation.note.text|
|IltmætningStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|