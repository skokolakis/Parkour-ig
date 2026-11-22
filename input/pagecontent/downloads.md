### Package

The computable content of this guide is published as an NPM-style FHIR package that validators, servers and other IGs can load:

* [package.tgz](package.tgz): the FHIR package (`example.fhir.parkour`)

### Definitions

* [Definitions (JSON)](definitions.json.zip)
* [Definitions (XML)](definitions.xml.zip)
* [Examples (JSON)](examples.json.zip)
* [Examples (XML)](examples.xml.zip)

### Full website

* [Full IG website (zip)](full-ig.zip): this whole guide, for offline viewing

### Validation

To validate your own resources against these profiles, download `package.tgz` and use the [FHIR Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator):

```
java -jar validator_cli.jar my-resource.json -version 4.0.1 -ig package.tgz
```
