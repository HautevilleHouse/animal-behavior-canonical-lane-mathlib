import canonicalLaneMathlib.AdmissibleClass
import AnimalBehaviorCanonicalLaneLean.AdmissibleClass
import AnimalBehaviorCanonicalLaneLean.BridgeLemmas
import AnimalBehaviorCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

def ConstrainedAnimalBehaviorThesis (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_animal_behavior_thesis (A : AdmissibleClass) :
    ConstrainedAnimalBehaviorThesis A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse