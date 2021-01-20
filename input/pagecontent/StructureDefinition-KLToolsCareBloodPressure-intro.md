## Scope and usage
KLToolsCareBloodPressure is an observation of blood pressure. Its intended use is Danish municipalities.

#### Test-setup
The blood pressure of the citizen is meassured using an appropriate device (typically but not always meassuring the pressure in a. brachialis in the upper arm).

#### Citizen performance
The citizen is standing, sitting or lying still, and is calm throughout the meassurement.

#### Using the model
The Observation.code is fixed to a single LOINC code 85354-9 'Blood pressure panel with all children optional' and a SNOMED CT code for Blood pressure 75367002 'Blood pressure (observable entity)'.

The result of the blood pressure observation is a systolic and diastolic blood pressure. They are each represented as an Observation.component.

The systolic blood pressure component have an observation code: Observation.component.code. This code is bound to the Loinc code: 8480-6 'Systolic blood pressure' and a ValueSet with different SNOMED CT codes for systolic blood pressure. The SNOMED CT code 271649006 'Systolic blood pressure' is appropriate for most use cases. However, the precision of the data can be improved by choosing one of the SNOMED CT codes that specify the position of the subject. The result of a systolic blood pressure meassurement is represented in Observation.component.valueQuantity. It should contain a positive decimal, and use the UCUM unit for mmHg.

The diastolic blood pressure component have an observation code: Observation.component.code. This code is bound to the Loinc code: 8462-4 'Diastolic blood pressure' and a ValueSet with different SNOMED CT codes for diastolic blood pressure. The SNOMED CT code 271650006 'Diastolic blood pressure' is appropriate for most use cases. However, the precision of the data can be improved by choosing one of the SNOMED CT codes that specify the position of the subject. The result of a diastolic blood pressure meassurement is represented in Observation.component.valueQuantity. It should contain a positive decimal, and use the UCUM unit for mmHg.

Observation.method holds information about whether the "Test-setup" and "Citizen performance" have met the procedure-standards as described by KL, which are summarized above in English. In addition, use the SNOMED CT code 761996005 'Estimation technique (qualifier value)' if the procedure standard has not been followed, and 272391002' Measurement technique (qualifier value)' otherwise.

Observation:extension.associatedCondition holds a reference to related municipality conditions. This is relevant when presenting observation results in municipality systems. In this profile, Observation.extension:associatedCondition is fixed to the SNOMED CT code 106063007 'Cardiovascular finding'.

Observation.note.text may be used to hold remarks about the observation.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i værktøjsprojektet og den fælleskommunale informationsmodel, og definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Informationsmodel      | Definition        | FHIR  |
| ------------- |-------------| -----|
|BlodtryksKode|Klasse som udtrykker, at der observeres på borgers blodtryk.|Observation.code|
|SystoliskBlodtrykKode|Klasse som udtrykker, at der observeres på borgers systoliske blodtryk.|Observation.component[SystolicBP].code|
|SystoliskBlodtrykResultat|Decimaltal, der udtrykker blodtrykket i mmHg|Observation.component[SystolicBP].valueQuantity.value|
|SystoliskBlodtrykEnhed|Klasse, der udtrykker, at den enhed der anvendes er mmHg.|Observation.component[SystolicBP].code and Observation.component[SystolicBP].system|
|DiastoliskBlodtrykKode|Klasse som udtrykker, at der observeres på borgers diastoliske blodtryk.|Observation.component[DiastolicBP].code|
|DiastoliskBlodtrykResultat|Decimaltal, der udtrykker blodtrykket i mmHg- |Observation.component[DiastolicBP].valueQuantity.value|
|DiastoliskBlodtrykEnhed|Klasse, der udtrykker at den enhed der anvendes er mmHg. |Observation.component[DiastolicBP].code and Observation.component[DiastolicBP].system|
|BlodtryksSubjekt|Den borger, som er genstand for observationen.|Observation.subject|
|BlodtryksKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|BlodtryksAnsvarlig|Den fagperson, der er ansvarlig for observationen.|Observation.performer|
|BlodtryksProcedure|Information vedr. den procedure, der er brugt ifm. udførelsen ift. om test-setup og borgers udførelse har været i overensstemmelse med det beskrevne.|Observation.method|
|BlodtryksTid|Tidspunkt for observationen.|Observation.effectiveDateTime|
|BlodtryksAssocieretTilstand|Klasse, der udtrykker, hvilken kommunal tilstand denne observation er associeret med.|Observation:extension.associatedCondition|
|BlodtryksBemærkning|Bemærkning vedr. observationen|Observation.note.text|
|BlodtryksStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|