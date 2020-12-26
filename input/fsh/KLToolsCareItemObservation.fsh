Profile: KLToolsCareItemObservation
Parent: KLCommonCareSocialObservation
Title: "Care item observation"
Description: "Care item observations, from questionnaires, as performed in Danish municipalities"
* code from KLToolsItemObservationCodes
* derivedFrom 1..1
* derivedFrom only Reference(KLToolsQuestionnaireResponse) //på sigt reference til profileret spørgeskemasvar - men måske ikke, vil vi også kunne referere spørgeskemaer som ikke er native for kommuner?
* method 0..1
* method from KLtechniquesCodes (required)
* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 0..*
