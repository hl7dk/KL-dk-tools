### Scope and usage
Questionnnaire for meassuring the health related life quality. The Questionnnaire consist of a descriptive part with five questions and a visual analog scale for overall health condition.

### Explaination of the questionnaire
Each of the questions, the visual-analog scale and the comment has its own item.

Each of the five questions have the item.type 'choice', a linkId that relates to the content of the question e.g. "mobility" and "hygiene", and a SNOMED CT observation code that points to the semantic content of the question e.g. 301438001 'Ability to mobilize (observable entity)' for the first question and  284773001 'Ability to perform personal care activity (observable entity)' for the second. Each have an answer value set, consisting of the appropiate values for EQ-5D-L3 i.e. three levels for each questions. However, the codes are local codes, since no overall international or Danish standard exist.

The visual-analog scale has the item.type 'integer', linkId "vas" and a SNOMED CT item.code 736535009 'EuroQol visual analogue score (observable entity)' It has a max value of 100 and a min value of 0.

The comment has the linkId "eq5dcomment"

### Using the questionnaire
When instantiating this questionnaire, please use the KLToolsQuestionnaireResponse, and remember to explicitely state the findingInformer as required by KL.

When using this questionnaire in a municipality setting, where the answers can be re-used in rutine documentation e.g. the mobility question says something about the home care area "Mobility", please represent these re-usable items as Observations to get maximum re-usability. For this questionnaire five reusable observations have been identified:

* EQ-5D mobility
* EQ-5D hygiene
* EQ-5D activity
* EQ-5D pain
* EQ-5D anxiety

Note that the overall index is not represented in the questionnaire and neither as an Observation. In this implementation guide, it has been chosen to focus on primary data only. However, if a score is needed, we recommend instantiating a KLCommonCareSocialObservation, using 736534008 'EuroQol five dimension five level index value (observable entity)' as observation code, and representing the index as a decimal in Observation.valueQuantity. Link to the QuestionnaireResponse in Observation.derivedFrom
