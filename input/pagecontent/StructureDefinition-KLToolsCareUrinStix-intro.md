### Scope and usage
KLToolsCareUrinStix is an observation that holds the results of a urin dipstick meassurement. Each value requires an instance of this profile.  Its intended use is Danish municipalities.

#### Test-setup
Test is performed in urin which is no more than two hours old. The test-procedure for the dipstick, as descriped by the manufacturer, has been followed.

#### Citizen performance
No requirements 

#### Using the model
The Observation.code is bound to three to three different ValueSets in NPU, LOINC and SNOMED CT respectively. Always use a NPU code, since this is the standard in Denmark. Use the SNOMED CT code whenever possible, because this is most compatible with other data in the Danish municipalities. 

Observation.value[x] is of type string or quantity. If the result is a quantity, the unit should be expressed as a UCUM unit. Typical UCUM laboratory units are g/L, 10*12/L (or some other multiplum of ten) and %. Note that the unit has to be relevant for the observation code e.g. mass/volume can be meassured in g/L but not in %. 

Observation.method holds information about whether the "Test-setup" and "Citizen performance" have met the procedure-standards as described by KL, which are summarized above in English. Citizen performance does not have any remarks in this profile, so only use the codes 'Ingen problemer med test-setup og borgers udførelse' and 'Afvigelse i test-setup'.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 252041008 'Micturition finding (finding)'

Observation.note.text may be used to hold remarks about the observation. Observation.status is typically 'final'.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|UrinStixKode|Klasse som udtrykker, hvilken egenskab der er målt, for den urinstix der er udført på borgeren.|Observation.code|
|UrinStixResultat|Tal eller tekst der udtrykker, resultatet af urinstix-proceduren. |Observation.valueQuantity.value|
|UrinStixEnhed|Klasse, der udtrykker, hvilken enhed der anvendes, hvis resultatet er et tal.|Observation.valueQuantity.system and Observation.valueQuantity.code|
|UrinStixSubjekt|Den borger, hvis urin der undersøges.|Observation.subject|
|UrinStixKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|UrinStixAnsvarlig|Den fagperson, der er ansvarlig for observationen.|Observation.performer|
|UrinStixProcedure|Information vedr. den procedure, der er brugt ifm. udførelsen ift. om test-setup og borgers udførelse har været i overensstemmelse med det beskrevne.|Observation.method|
|UrinStixTid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|UrinStixAssocieretTilstand|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|UrinStixBemærkning|Bemærkning vedr. observationen|Observation.note.text|
|UrinStixStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|
