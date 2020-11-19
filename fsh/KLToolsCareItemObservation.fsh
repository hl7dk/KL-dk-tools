Profile: KLToolsCareItemObservation
Parent: KLCommonCareSocialObservation
Title: "KLToolsCareWHO5observation"
Description: "WHO5 observations, as performed in Danish municipalities"
* code from KLToolsItemObservationCodes
* derivedFrom 1..1
* derivedFrom only Reference(QuestionnaireResponse) //på sigt reference til profileret spørgeskemasvar - men måske ikke, vil vi også kunne referere spørgeskemaer som ikke er native for kommuner?
* method 1..1
* method from KLtechniquesCodes (required)
* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 0..*
