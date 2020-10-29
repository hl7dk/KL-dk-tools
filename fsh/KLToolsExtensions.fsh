Extension: FindingInformer
Title: "FindingInformer"
Description: "Extension for pointing to who the source of information is"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from FindingInformerCodes

Extension: AssociatedConditions
Title: "AssociatedConditions"
Description: "Extension for pointing to Condition codes, for which the observation might be usefull"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from SCTConditionCodes