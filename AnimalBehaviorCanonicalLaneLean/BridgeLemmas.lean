import AnimalBehaviorCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.observationProposition ∧ A.object.hypothesisProposition

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse