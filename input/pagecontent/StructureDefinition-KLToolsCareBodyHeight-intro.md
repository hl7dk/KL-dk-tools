### Scope and usage
KLToolsCareBodyHeight is an observation of height. Its intended use is Danish municipalities.

#### Test-setup
The length of the citizens body is meassured standing or lying down.

#### Citizen performance
The citizen holds a steady lying or standing pose

#### Using the model
The Observation.code is fixed to a single LOINC code 8302-2 "Body height" and a ValueSet with different SNOMED CT codes for height. The SNOMED CT code 248334005 |Length of body (observable entity)| is appropriate for most use cases.

Observation.value[x] is of type Observation.valueQuantity. It should contain a positive decimal in Observation.valueQuantity.value, and use the UCUM unit for centimeter.

Observation.method holds information about whether the "Test-setup" and "Citizen performance" have met the procedure-standards as described by KL, which are summarized above in English. The SNOMED CT code is 761996005 'Estimation technique (qualifier value)' if the procedure standard has not been followed, and 272391002' Measurement technique (qualifier value)' otherwise. However, if the height is obtained, by asking the citizen about their height, Observation.method should be set to FFInst: 6713249a-433e-4b93-8975-0214a47 Afvigelse i borgers udførelse og test-setup, and SNOMED CT: 733985002|Reported (qualifier value)|.

Observation.note.text may be used to hold remarks about the observation. Observation.status is typically 'final'.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|HøjdeKode|Klasse som udtrykker, at der observeres på borgers højde.|Observation.code|
|HøjdeResultat|Decimaltal, der udtrykker, antallet af centimeter, borgeren er høj. |Observation.valueQuantity.value|
|HøjdeEnhed|Klasse, der udtrykker, at den enhed der anvendes er centimeter.|Observation.valueQuantity.system and Observation.valueQuantity.code|
|Højdesubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|Højdekontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|Højdeansvarlig|Den fagperson der er ansvarlig for observationen.|Observation.performer|
|HøjdeProcedure|Information vedr. den procedure, der er brugt ifm. udførelsen ift. om test-setup og borgers udførelse har været i overensstemmelse med det beskrevne.|Observation.method|
|Højdetid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|HøjdeBemærkning|Bemærkning vedr. observationen|Observation.note.text|
|HøjdeStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|