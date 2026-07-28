import canonicalLaneMathlib.AdmissibleClass
import AnimalBehaviorCanonicalLaneLean.AnimalBehaviorObjects

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

def bridgeClosed (A : AnimalBehaviorObject) : Prop :=
  A.behavioralClosed

theorem bridge_from_admissible_class (A : AnimalBehaviorObject) : bridgeClosed A :=
  A.behavioralClosed

def gateClosed (A : AnimalBehaviorObject) : Prop :=
  A.behavioralClosed ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AnimalBehaviorObject) : gateClosed A :=
  A.gateWitness

def ConstrainedEthologyClosure (A : AnimalBehaviorObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ethology_endgame (A : AnimalBehaviorObject) : ConstrainedEthologyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse