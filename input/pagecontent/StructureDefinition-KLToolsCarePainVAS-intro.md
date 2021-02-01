## Scope and usage
PainVAS is an observation of pain intensity using a visual scale. Please note that this implementation guide also include a verbal rating scale for pain, and use the two profiles according the context.

#### Test-setup
The visual scale is 100mm long without subdivisions. The starting point is marked with "no pain" and the end point is marked with "Worst imaginable/unbearable pain"
The score is meassured as the distance in mm from the starting point, to the mark set by the citizen.

#### Citizen performance
The citizen sets a mark on the line. Encouragement from the perfomer is fine. Influences from other persons e.g. next-of-kin placing the mark or saying where to place the mark, is not. For citizens with hand mobility problems, physical assistance with placing the mark according to the the wishes of the citizen is acceptable. 

#### Using the model
The Observation.code is fixed to the SNOMED CT code 443394008 'Visual analog scale pain score'.

Observation.value[x] is of type integer, and should be a number between 0 and 100.

Observation.method holds information about whether the "Test-setup" and "Citizen performance" have met the procedure-standards as described by KL, which are summarized above in English. In addition, use the SNOMED CT code 761996005 'Estimation technique (qualifier value)' if the procedure standard has not been followed, and 272391002' Measurement technique (qualifier value)' otherwise.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code SCT#22253000 'Pain (finding)'.

Observation.note.text may be used to hold remarks about the observation. Observation.status is typically 'final'.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|SmerteVASKode|Klasse som udtrykker, at der observeres på borgers Smerte målt vha. VAS.|Observation.code|
|SmerteVASResultat|Heltal, der udtrykker, SmerteVAS scoren. |Observation.valueQuantity.value|
|SmerteVASSubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|SmerteVASKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|SmerteVASAnsvarlig|Den fagperson, der er ansvarlig for observationen.|Observation.performer|
|SmerteVASProcedure|Information vedr. den procedure, der er brugt ifm. udførelsen ift. om test-setup og borgers udførelse har været i overensstemmelse med det beskrevne.|Observation.method|
|SmerteVASTid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|SmerteVASAssocieretTilstand|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|SmerteVASBemærkning|Bemærkning vedr. observationen|Observation.note.text|
|SmerteVASStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|