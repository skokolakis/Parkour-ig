### The movement vocabulary

All movements live in the [Parkour Movements](CodeSystem-Parkour-Movement.html)
code system. Codes are arranged in an *is-a* hierarchy, so a Kong Vault
**is a** Vault.

| Family | Code | Movement |
|---|---|---|
| **Jump** | `jump` | Any movement in which the athlete leaves the ground propelled by the legs |
| | `precision-jump` | Lands precisely on a small target such as a rail or wall top |
| | `running-jump` | A jump from a run-up, usually for distance |
| | `cat-leap` | A jump to a wall, landing hanging from the top edge (arm jump) |
| **Vault** | `vault` | Passes over an obstacle using the hands for support |
| | `safety-vault` | One hand and one foot on the obstacle |
| | `speed-vault` | Sideways, one hand, keeping running speed |
| | `lazy-vault` | Legs pass over at an angle, swapping hands |
| | `kong-vault` | Hands-first dive over the obstacle, tucking the legs through |
| **Wall run** | `wall-run` | Running up a vertical wall to grab the top edge |
| | `tic-tac` | Pushing off a wall with one foot to change direction or gain height |
| **Landing** | `landing` | Techniques for absorbing impact |
| | `drop` | Jumping down from a height and absorbing the landing |
| | `roll` | A diagonal shoulder roll that spreads the impact after a drop |
| **Climb** | `climb-up` | Pulling oneself up onto a ledge or wall |
{:.grid}

### Value sets

* [Parkour Movements Value Set](ValueSet-parkour-movement-vs.html): every movement. Bound (required) to `MovementPerformance.code`.
* [Vaults Value Set](ValueSet-vault-vs.html): only the vaults, built with a `descendent-of #vault` filter.

### Performance metrics

A [Movement Performance](StructureDefinition-movement-performance.html) records results as components coded from the
[Parkour Performance Metrics](CodeSystem-parkour-metric.html) code system:

| Metric | Code | Value type | Unit |
|---|---|---|---|
| Distance | `distance` | Quantity | m |
| Height | `height` | Quantity | m |
| Attempts | `attempts` | integer | |
| Successful attempts | `successes` | integer | |
{:.grid}

### Other vocabularies

* [Surface Types](CodeSystem-surface-type.html): concrete, stone, brick, metal, wood, grass
* [Dominant Leg](CodeSystem-dominant-leg.html): left, right, both
* [Parkour Coach Qualifications](CodeSystem-coach-qualification.html): assistant coach, level 1, level 2
