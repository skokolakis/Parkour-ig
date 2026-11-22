//rulesets.fsh - reusable rulesets

RuleSet: Metadata
* ^experimental = true
* ^contact.name = "Stratos Kokolakis"

// A parameterised RuleSet: {slice} and {unit} are replaced on insert
RuleSet: QuantityComponent(slice, unit)
* component[{slice}].code = ParkourMetricCS#{slice}
* component[{slice}].value[x] only Quantity
* component[{slice}].valueQuantity = $UCUM#{unit}
