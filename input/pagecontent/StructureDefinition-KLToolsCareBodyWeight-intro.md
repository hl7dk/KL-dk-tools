## Scope and usage
KLToolsCareBodyWeight is an observation of body weight. Its intended use is Danish municipalities.

#### Test-setup
The weight of the citizen's body is meassured using an appropriate device.

#### Citizen performance
The citizen is steady, and do not rest any bodyparts on furniture or walking aids.

#### Using the model
The Observation.code is fixed to a single LOINC code 29463-7 'Body weight' and a ValueSet with different SNOMED CT codes for weight. The SNOMED CT code 27113001	'Body weight' is appropriate for most use cases.

Observation.value[x] is of type Observation.valueQuantity. It should contain a positive decimal in Observation.valueQuantity.value, and use the UCUM unit for kilogram (kg) or gram (g).

Observation.method holds information about whether the "Test-setup" and "Citizen performance" have met the procedure-standards as described by KL, which are summarized above in English. The SNOMED CT code is 761996005 'Estimation technique (qualifier value)' if the procedure standard has not been followed, and 272391002' Measurement technique (qualifier value)' otherwise. However, if the weight is obtained, by asking the citizen about their weight, Observation.method should be set to FFInst: 6713249a-433e-4b93-8975-0214a47 Afvigelse i borgers udførelse og test-setup, and SNOMED CT: 733985002|Reported (qualifier value)|.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 107647005 'Weight finding (finding)'.

Observation.note.text may be used to hold remarks about the observation. Observation.status is typically 'final'.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|VægtKode|Klasse som udtrykker, at der observeres på borgers vægt.|Observation.code|
|VægtResultat|Decimaltal, der udtrykker, antallet af kilo eller gram, borgeren vejer. |Observation.valueQuantity.value|
|VægtEnhed|Klasse, der udtrykker, at den enhed der anvendes er kilo eller gram.|Observation.valueQuantity.system and Observation.valueQuantity.code|
|Vægtsubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|Vægtkontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|Vægtansvarlig|Den fagperson, der er ansvarlig for observationen.|Observation.performer|
|VægtProcedure|Information vedr. den procedure, der er brugt ifm. udførelsen ift. om test-setup og borgers udførelse har været i overensstemmelse med det beskrevne.|Observation.method|
|Vægttid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|VægtAssocieretTilstand|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med|Observation:extension.associatedCondition|
|VægtBemærkning|Bemærkning vedr. observationen|Observation.note.text|
|VægtStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|