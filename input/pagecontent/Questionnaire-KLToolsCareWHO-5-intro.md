### Scope and usage
Questionnnaire for meassuring general well-being. The Questionnnaire consist of five questions, each to be scored on a six level scale. 

### Explaination of the questionnaire
Each of the questions and the comment has its own item.

Each of the five questions have the item.type 'choice', a linkId that relates to the content of the question e.g. "rested" and "calm", and a SNOMED CT observation code that points to the semantic content of the question e.g. 285854004 'Emotion (observable entity)' for the first question. Each have an answer value set, consisting of the appropiate values for WHO-5 i.e. six levels for each questions. However, the codes are local codes, since no overall international or Danish standard exist.

The comment has the linkId "who5comment"

### Using the questionnaire
When instantiating this questionnaire, please use the KLToolsQuestionnaireResponse, and remember to explicitely state the findingInformer as required by KL.

When using this questionnaire in a municipality setting, where the answers can be re-used in rutine documentation e.g. the mobility question says something about the home care area "Mobility", please represent these re-usable items as Observations to get maximum re-usability. For this questionnaire five reusable observations have been identified:

* [WHO-5 happy](StructureDefinition-KLToolsWHO5ObservationHappy1.html)
* [WHO-5 calm](StructureDefinition-KLToolsWHO5ObservationCalm2.html)
* [WHO-5 active](StructureDefinition-KLToolsWHO5ObservationActive3.html)
* [WHO-5 rested](StructureDefinition-KLToolsWHO5ObservationRested4.html)
* [WHO-5 interest](StructureDefinition-KLToolsWHO5ObservationInterest5.html)

Note that the overall index is not represented in the questionnaire and neither as an Observation. In this implementation guide, it has been chosen to focus on primary data only. However, if a score is needed, we recommend instantiating a KLCommonCareSocialObservation, using 1144665009 '5-item World Health Organization Well-being Index value (observable entity)' as observation code, and representing the index as a decimal in Observation.valueQuantity. Link to the QuestionnaireResponse in Observation.derivedFrom
