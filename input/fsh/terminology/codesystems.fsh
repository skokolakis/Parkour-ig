CodeSystem: ParkourMovementCS
Id: Parkour-Movement
Title: "Parkour Movements"
Description: "Fundamental movements of parkour, organised as a simple is-a hierarchy."
* insert Metadata
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #jump "Jump" "Any movement in which the athlete leaves the ground propelled by the legs."
  * #precision-jump "Precision Jump" "A jump that lands precisely on a small target such as a rail or wall top."
  * #running-jump "Running Jump" "A jump from a run-up, usually for distance."
  * #cat-leap "Cat Leap" "A jump to a vertical wall, landing hanging from the top edge with the feet on the wall. Also called an arm jump."
* #vault "Vault" "A movement that passes over an obstacle using the hands for support."
  * #safety-vault "Safety Vault" "A vault using one hand and one foot on the obstacle."
  * #speed-vault "Speed Vault" "A sideways vault using one hand, keeping running speed."
  * #lazy-vault "Lazy Vault" "A vault passing the legs over the obstacle at an angle, swapping hands."
  * #kong-vault "Kong Vault" "A hands-first dive over an obstacle, pushing off and tucking the legs through."
* #wall-run "Wall Run" "Running up a vertical wall to grab the top edge."
  * #tic-tac "Tic-Tac" "Pushing off a wall with one foot to change direction or gain height."
* #landing "Landing" "Techniques for absorbing impact."
  * #drop "Drop" "Jumping down from a height and absorbing the landing."
  * #roll "Roll" "A diagonal shoulder roll that spreads the impact after a drop."
* #climb-up "Climb Up" "Pulling oneself up onto a ledge or wall."


CodeSystem: ParkourMetricCS
Id: parkour-metric
Title: "Parkour Performance Metrics"
Description: "What was measured when a movement was performed."
* insert Metadata
* ^caseSensitive = true
* #distance "Distance" "Horizontal distance covered."
* #height "Height" "Vertical height reached or dropped."
* #attempts "Attempts" "Total number of attempts."
* #successes "Successful attempts" "Number of attempts completed cleanly."
 
CodeSystem: SurfaceTypeCS
Id: surface-type
Title: "Surface Types"
Description: "Surfaces found at training spots."
* insert Metadata
* ^caseSensitive = true
* #concrete "Concrete" "Poured concrete."
* #stone "Stone" "Natural or cut stone."
* #brick "Brick" "Brick wall or paving."
* #metal "Metal" "Metal rails, bars or scaffolding."
* #wood "Wood" "Wooden boxes, benches or structures."
* #grass "Grass" "Grass or turf."
 
CodeSystem: DominantLegCS
Id: dominant-leg
Title: "Dominant Leg"
Description: "Preferred take-off leg."
* insert Metadata
* ^caseSensitive = true
* #left "Left" "Prefers to take off from the left leg."
* #right "Right" "Prefers to take off from the right leg."
* #both "Both" "No clear preference."
 
CodeSystem: CoachQualificationCS
Id: coach-qualification
Title: "Parkour Coach Qualifications"
Description: "Simplified coaching levels for this hobby IG."
* insert Metadata
* ^caseSensitive = true
* #assistant-coach "Assistant Coach" "Can assist a qualified coach."
* #coach-level-1 "Coach Level 1" "Can coach beginners independently."
* #coach-level-2 "Coach Level 2" "Can coach all levels and design programmes."