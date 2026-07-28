import AnimalBehaviorCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure ForagingOptimalityPackage where
  optimalDiet : Prop
  patchChoice : Prop
  marginalValueTheorem : Prop
  riskSensitivity : Prop

structure ForagingOptimalityEvidence (P : ForagingOptimalityPackage) where
  optimalDietClosed : P.optimalDiet
  patchChoiceClosed : P.patchChoice
  marginalValueTheoremClosed : P.marginalValueTheorem
  riskSensitivityClosed : P.riskSensitivity

def ForagingOptimalityClosed (P : ForagingOptimalityPackage) : Prop :=
  P.optimalDiet ∧ P.patchChoice ∧ P.marginalValueTheorem ∧ P.riskSensitivity

theorem foraging_optimality_closed_from_evidence (P : ForagingOptimalityPackage) (E : ForagingOptimalityEvidence P) : ForagingOptimalityClosed P := by
  exact And.intro E.optimalDietClosed (And.intro E.patchChoiceClosed (And.intro E.marginalValueTheoremClosed E.riskSensitivityClosed))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse