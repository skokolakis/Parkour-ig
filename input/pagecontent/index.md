### Scope

The Parkour Implementation Guide describes how to record **parkour training** with HL7 FHIR R4:

* who trains (the **athlete**, called an *athlete*) and who coaches them,
* **where** they train (the **training spot** and its surfaces),
* **when** they train (the **training session**),
* **how well** a movement went (distance, height, attempts and successes),
* and any **injury** that happened along the way.

It reuses existing FHIR resources wherever possible and adds a small, purpose-built vocabulary of parkour movements and surfaces.

### Overview

<figure>
  <img src="parkour-data-model.svg" alt="Data model: a Training Session links an Athlete, a Coach and a Training Spot; Movement Performances and Injuries point to the Athlete and the Session" style="max-width:100%"/>
  <figcaption>How the six profiles reference each other. See <a href="data-model.html">Data Model</a> for details.</figcaption>
</figure>

| Concept | Profile | Based on | Key points |
|---|---|---|---|
| Athlete | [Athlete](StructureDefinition-Athlete.html) | Patient | Name and birth date required; start date and dominant take-off leg as extensions |
| Coach | [Coach](StructureDefinition-Coach.html) | Practitioner | At least one coaching qualification |
| Training place | [Training Spot](StructureDefinition-training-spot.html) | Location | Name, coordinates and surface types |
| Training session | [Training Session](StructureDefinition-training-session.html) | Encounter | Class `FLD` (field); athlete, coach, spot and period |
| Movement result | [Movement Performance](StructureDefinition-movement-performance.html) | Observation | Movement code plus distance, height, attempts and successes components |
| Injury | [Parkour Injury](StructureDefinition-parkour-injury.html) | Condition | Linked to the session and to the movement that caused it |
{:.grid}

### How to read this guide

* **[Data Model](data-model.html)**: how the resources fit together, with a worked example.
* **[Parkour Movements](movements.html)**: the movement vocabulary and the performance metrics.
* **[Artifacts](artifacts.html)**: every profile, extension, code system, value set and example.
* **[Downloads](downloads.html)**: the FHIR package and definitions for tools and validators.

### Worked example

The examples follow one Saturday morning at the harbour:

1. [Aggelos](Patient-Athlete-Aggelos.html), an athlete, trains with [Coach Telis](Practitioner-Coach-Telis.html) at [Harbor Steps](Location-spot-harbor-steps.html).
2. The [Saturday Training Session](Encounter-session-2026-11-14.html) records the two hours they spent there.
3. Aggelos lands [7 out of 10 precision jumps of 2.5 m](Observation-precision-jump-aggelos.html).
4. Later in the session, an [ankle sprain](Condition-ankle-sprain-aggelos.html) caused by a precision jump is recorded.

### Dependencies

{% include dependency-table.xhtml %}

### Global profiles

{% include globals-table.xhtml %}

### Cross-version analysis

{% include cross-version-analysis.xhtml %}

### Intellectual property

{% include ip-statements.xhtml %}
