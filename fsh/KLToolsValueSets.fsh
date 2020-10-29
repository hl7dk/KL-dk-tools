CodeSystem: KLToolsCodes
Title: "Codes associated with KLTools, which is not part of KLCommonCareSocial, or international terminologoies"
Description: "Administrative/technical codes, not defined elsewhere, associated with KLTools"
* #0e5aa952-d470-4219-b275-5e8204d96987 "WHO-5 Hele tiden (5)"
* #9fd3c658-d0b7-4018-84e9-8588be7de478 "WHO-5 Det meste af tiden (4)"
* #a3779fc5-d7b3-4d03-bdaf-5ae5a40b0899 "WHO-5 Lidt mere end halvdelen af tiden (3)"
* #228ee58f-5785-4364-a99c-8ba99943f510 "WHO-5 Lidt mindre end halvdelen af tiden (2)"
* #c4002c8a-91c5-4737-bba6-ce364e83fd28 "WHO-5 Lidt af tiden (1)"
* #d092cdf0-e4e0-4cf6-a506-0adf95f56a8d "WHO-5 På intet tidspunkt (0)"
* #4a069078-c3c3-4c67-899d-4e8876026f48Ja "Proceduren fulgt" "Proceduren for observationen, som beskrevet af KL, er fulgt"
* #17772b27-bc9d-4d62-9515-d268a98a3a27 "Proceduren ikke fulgt pga. delvis besvarelse/udførelse" "Proceduren for observationen, som beskrevet af KL, er ikke fulgt pga. delvis besvarelse/udførelse"
* #a3231c9a-5569-49c4-8760-4fffbf0b2b80 "Proceduren ikke fulgt pga. afvigelse i test-setup/omgivelser" "Proceduren for observationen, som beskrevet af KL, er ikke fulgt pga. afvigelse i test-setup/omgivelser"


ValueSet: WHO5AnswerCodes
Title: "WHO5AnswerCodes"
Description: "Codes used to specify WHO-5 answers"
* KLToolsCodes#0e5aa952-d470-4219-b275-5e8204d96987 "WHO-5 Hele tiden (5)"
* KLToolsCodes#9fd3c658-d0b7-4018-84e9-8588be7de478 "WHO-5 Det meste af tiden (4)"
* KLToolsCodes#a3779fc5-d7b3-4d03-bdaf-5ae5a40b0899 "WHO-5 Lidt mere end halvdelen af tiden (3)"
* KLToolsCodes#228ee58f-5785-4364-a99c-8ba99943f510 "WHO-5 Lidt mindre end halvdelen af tiden (2)"
* KLToolsCodes#c4002c8a-91c5-4737-bba6-ce364e83fd28 "WHO-5 Lidt af tiden (1)"
* KLToolsCodes#d092cdf0-e4e0-4cf6-a506-0adf95f56a8d "WHO-5 På intet tidspunkt (0)"

ValueSet: WHO5ItemObservationCodes
Title: "WHO5ItemObservationCodes"
Description: "Observation codes used to specify each item in a WHO-5 questionaire"
* SCT#85256008 "Sindsstemning"
* SCT#404949004 "Hvilemønster"
* SCT#406202006 "Træk vedr. energi"
* SCT#247752005 "Interesseniveau"

ValueSet: WHO5SCTfindings
Title: "WHO5SCTfindings"
Description: "SNOMED CT findings when conducting WHO-5 questionaires"
* SCT#160245001  "No current problems or disability"
* SCT#420038007 "Feeling unhappy"
* SCT#49971008 "ængstelse"
* SCT#248274002 "manglende energi"
* SCT#267032009 "træt altid"
* SCT#20602000 "Ligegyldighed"

ValueSet: KLtechniquesCodes
Title: "KLtechniquesCodes"
Description: "Codes for the techniqe used when obtaining an observation"
* KLToolsCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja "Proceduren fulgt"
* KLToolsCodes#17772b27-bc9d-4d62-9515-d268a98a3a27 "Proceduren ikke fulgt pga. delvis besvarelse/udførelse" //761996005 |Estimation technique (qualifier value)| //733985002 |Reported (qualifier value)|
* KLToolsCodes#a3231c9a-5569-49c4-8760-4fffbf0b2b80 "Proceduren ikke fulgt pga. afvigelse i test-setup/omgivelser"

ValueSet: FindingInformerCodes 
Title: "FindingInformerCodes"
Description: "Codes for who informed the findings"