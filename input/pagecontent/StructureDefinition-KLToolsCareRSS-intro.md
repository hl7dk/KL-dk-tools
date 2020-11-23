### Scope and usage
KLToolsCareRSS is an Observation that holds the results of a thirty second stand test. Its intended use is Danish municipalities. A thirty second stand test is used to evaluate the fuctional ability, which meassure how many times a citizen may rise from a chair in 30 seconds. A thirty second stand test may be used and documented in this model without a special license.

#### Test-setup
The test is perfromed using a chair with a straight back without arm rests (højrygget stol) or a foldig chair. Seat should be 44-47cm high. If the citizen has risen more than half, when the 30seconds have passes, it counts as a rise.

#### Citizen performance
The citizen has been sitting in the middle of the chair, with a straight back, feets flat on the floor and have had arms crossed at the wrists and held the arms against the torso.

#### Using the model
The Observation.code is fixed to the SNOMED CT code 450738001 "Thirty second chair stand test score (observable entity)".

Observation.value[x] is of type Observation.valueInteger and should be a positive integer.

Observation.method holds information about whether the "Test-setup" and "Citizen performance" have met the procedure-standards as described by KL, which are summarized above in English.

Observation:extension.findingInformer holds information about whether the test have been informed by anyone else than the citizen. E.g. if the Observation.note holds information. Observation.note.text may be used to hold remarks about the observation.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|RSSkode|Klasse som udtrykker, at der observeres på borgers evne til at rejse og sætte sig.|Observation.code|
|RSSresultat|Heltal, der udtrykker, hvor mange gange borger kunne rejse og sætte sig. |Observation.valueInteger|
|observationssubjekt|Den borger, som er genstad for vurdering.|Observation.subject|
|observationskontakt|Den kontakt, hvor vurderingen er foretaget.|Observation.encounter|
|observationsansvarlig|Den fagperson der er ansvarlig for observationen.|Observation.performer|
|RSSprocedure|Information vedr. den procedure, der er brugt ifm. udførelsen ift. om test-setup og borgers udførelse har været i overensstemmelse med det beskrevne.|Observation.method|
|observationstid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|RSSkilde|Kilde til den information, der er dokumenteret i observationen|Observation:extension.findingInformer|
|RSSbemærkning|Bemærkning vedr. observationen|Observation.note.text|
