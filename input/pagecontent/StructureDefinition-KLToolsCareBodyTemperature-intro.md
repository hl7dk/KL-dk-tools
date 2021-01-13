## Scope and usage
KLToolsCareBodyTemperature is an observation of core body temperature. Its intended use is Danish municipalities.

#### Test-setup
The citizen's temperature is meassured using an appropriate device.

#### Citizen performance
The citizen is steady enough for the meassurement to occur

#### Using the model
The Observation.code is fixed to a single LOINC code 8310-5 "Body temperature" and a ValueSet with different SNOMED CT codes for temperature. The SNOMED CT codes can be used to specify, where the temperature have been meassured, if it is of importance. Otherwise just use 276885007 'Core body temperature (observable entity)'.

Observation.value[x] is of type Observation.valueQuantity. It should contain a positive decimal in Observation.valueQuantity.value, and use the UCUM unit for degree Celcius.

Observation.method holds information about whether the "Test-setup" and "Citizen performance" have met the procedure-standards as described by KL, which are summarized above in English. The SNOMED CT code is 761996005 'Estimation technique (qualifier value)' if the procedure standard has not been followed, and 272391002' Measurement technique (qualifier value)' otherwise.

Observation.note.text is used to hold remarks about the observation. Observation.status is typically 'final'.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|TemperaturKode|Klasse som udtrykker, at der observeres på borgers temperatur.|Observation.code|
|TemperaturResultat|Decimaltal, der udtrykker, borgerens temperatur i grader.|Observation.valueQuantity.value|
|TemperaturEnhed|Klasse, der udtrykker, at den enhed der anvendes er grader Celcius.|Observation.valueQuantity.system and Observation.valueQuantity.code|
|Temperatursubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|Temperaturkontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|Temperaturansvarlig|Den fagperson der er ansvarlig for observationen.|Observation.performer|
|TemperaturProcedure|Information vedr. den procedure, der er brugt ifm. udførelsen ift. om test-setup og borgers udførelse har været i overensstemmelse med det beskrevne.|Observation.method|
|Temperaturtid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|TemperaturBemærkning|Bemærkning vedr. observationen|Observation.note.text|
|TemperaturStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|