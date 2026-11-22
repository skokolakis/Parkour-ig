### How the resources connect

<figure>
  <img src="parkour-data-model.svg" alt="Data model: a Training Session links an Athlete, a Coach and a Training Spot; Movement Performances and Injuries point to the Athlete and the Session" style="max-width:100%"/>
  <figcaption>Arrows are FHIR References, labelled with the element that holds them.</figcaption>
</figure>

A **Training Session** (Encounter) links an **Athlete** to a **Training Spot**
and, optionally, a **Coach**. Each **Movement Performance** (Observation)
points to the traceur and to the session. A **Parkour Injury** (Condition)
points to the traceur, the session and the movement that caused it.

### Choosing the FHIR resources

The golden rule is *reuse before you invent*: every concept maps onto an existing FHIR resource.

| Parkour concept | Profile | Base resource | Why this resource |
|---|---|---|---|
| Traceur | [Athlete](StructureDefinition-Athlete.html) | Patient | FHIR has no "athlete" resource; Patient is the person the data is about, also in wellness and fitness |
| Coach | [Coach](StructureDefinition-Coach.html) | Practitioner | A person providing a service, with qualifications |
| Training spot | [Training Spot](StructureDefinition-training-spot.html) | Location | A physical place with coordinates |
| Training session | [Training Session](StructureDefinition-training-session.html) | Encounter | An interaction at a place and time; class `FLD` (field) |
| How a movement went | [Movement Performance](StructureDefinition-movement-performance.html) | Observation | Measurements and simple assertions are Observations |
| Injury | [Parkour Injury](StructureDefinition-parkour-injury.html) | Condition | A problem linked to a person |
{:.grid}

### Extensions

Where base FHIR has no element for a parkour detail, the guide adds an extension:

| Extension | Used on | Meaning |
|---|---|---|
| [Parkour Start Date](StructureDefinition-parkour-start-date.html) | Athlete | When the person started practising parkour |
| [Dominant Take-off Leg](StructureDefinition-dominant-takeoff-leg.html) | Athlete | Preferred take-off leg (left, right or both) |
| [Surface Type](StructureDefinition-surface-type.html) | Training Spot, Movement Performance | Surface of the spot or of the obstacle used |
| [Related Movement](StructureDefinition-related-movement.html) | Parkour Injury | The movement being performed when the injury happened |
{:.grid}

### Rules worth knowing

* A Movement Performance **must** have the category `activity` and a movement code from the [Parkour Movements Value Set](ValueSet-parkour-movement-vs.html) (required binding).
* Its results go in `component` slices: `distance` and `height` (in metres), `attempts` and `successes` (integers).
* Invariant **mp-1**: the number of successes **SHALL NOT** exceed the number of attempts.
* A Training Session always has `class = FLD`, a subject (the Athlete), at least one location (a Training Spot) and a start time.

### Must Support

Elements flagged **Must Support (S)** in the profiles are the ones a system that records parkour training is expected to populate when it has the data, and a receiving system is expected to store and display.

### Example walk-through

See the [Saturday Training Session](Encounter-session-2026-11-14.html) example and the
resources that reference it: the [precision jump performance](Observation-precision-jump-aggelos.html)
and the [ankle sprain](Condition-ankle-sprain-aggelos.html).
