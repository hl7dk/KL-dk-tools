### Scope and usage
KLToolsCare6minwalk is an Observation that holds the results of a Six-Minute Walk Test (6MWT). Its intended use is Danish municipalities. A Six-Minute Walk Test is used to evaluate the fuctional ability, which meassure how many meters a person can walk in 6 minutes.

#### Test-setup
The citizen walks on a surface with a length of 20-50meters 

#### Citizen performance
The citizen has performed the test without the use af walking aids or other physical support.

#### Using the model
The Observation.code is fixed to the SNOMED CT code 165263003 "Walking distance (observable entity)"
and the more precise LOINC code 64098-7 "Walking distance 6 minutes"

Observation.value[x] is of type Observation.valueQuantity. It should contain a positive decimal in Observation.valueQuantity.value, and use the UCUM unit for meter.

Observation.method holds information about whether the "Test-setup" and "Citizen performance" have met the procedure-standards as described by KL, which are summarized above in English. In addition, use the SNOMED CT code 761996005 'Estimation technique (qualifier value)' if the procedure standard has not been followed, and 272391002 'Measurement technique (qualifier value)' otherwise.

Observation.note.text may be used to hold remarks about the observation. Observation.status is typically 'final'.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|6MinutterGangKode|Klasse som udtrykker, at der observeres på borgers evne til at gå i 6 minutter.|Observation.code|
|6MinutterGangResultat|Decimaltal, der udtrykker, antallet af meter, borgeren kunne gå. |Observation.valueQuantity.value|
|6MinutterGangEnhed|Klasse, der udtrykker, at den enhed der anvendes er meter.|Observation.valueQuantity.system and Observation.valueQuantity.code|
|6MinutterGangsubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|6MinutterGangkontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|6MinutterGangansvarlig|Den fagperson der er ansvarlig for observationen.|Observation.performer|
|6MinutterGangprocedure|Information vedr. den procedure, der er brugt ifm. udførelsen ift. om test-setup og borgers udførelse har været i overensstemmelse med det beskrevne.|Observation.method|
|6MinutterGangtid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|6MinutterGangbemærkning|Bemærkning vedr. observationen|Observation.note.text|
|6MinutterGangstatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|