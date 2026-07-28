import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure ForagingTheoryPackage where
  patchResidenceTime : Prop
  preyChoiceRule : Prop
  marginalValueTheorem : Prop
  riskSensitivity : Prop
  learningIntegration : Prop

structure ForagingTheoryEvidence (F : ForagingTheoryPackage) where
  patchResidenceTimeClosed : F.patchResidenceTime
  preyChoiceRuleClosed : F.preyChoiceRule
  marginalValueTheoremClosed : F.marginalValueTheorem
  riskSensitivityClosed : F.riskSensitivity
  learningIntegrationClosed : F.learningIntegration

def ForagingTheoryClosed (F : ForagingTheoryPackage) : Prop :=
  F.patchResidenceTime ∧ F.preyChoiceRule ∧ F.marginalValueTheorem ∧ F.riskSensitivity ∧ F.learningIntegration

theorem foraging_theory_closed_from_evidence (F : ForagingTheoryPackage) (ev : ForagingTheoryEvidence F) : ForagingTheoryClosed F := by
  exact And.intro ev.patchResidenceTimeClosed
    (And.intro ev.preyChoiceRuleClosed
      (And.intro ev.marginalValueTheoremClosed
        (And.intro ev.riskSensitivityClosed ev.learningIntegrationClosed)))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse