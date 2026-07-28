import AnimalBehaviorCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure ForagingBehaviorPackage where
  optimalDietModel : Prop
  patchDepartureRule : Prop
  riskSensitivity : Prop
  socialInformationUse : Prop

structure ForagingBehaviorEvidence (F : ForagingBehaviorPackage) where
  optimalDietModelClosed : F.optimalDietModel
  patchDepartureRuleClosed : F.patchDepartureRule
  riskSensitivityClosed : F.riskSensitivity
  socialInformationUseClosed : F.socialInformationUse

def ForagingBehaviorClosed (F : ForagingBehaviorPackage) : Prop :=
  F.optimalDietModel ∧ F.patchDepartureRule ∧ F.riskSensitivity ∧ F.socialInformationUse

theorem foraging_behavior_closed_from_evidence
    (F : ForagingBehaviorPackage) (E : ForagingBehaviorEvidence F) :
    ForagingBehaviorClosed F := by
  exact And.intro E.optimalDietModelClosed
    (And.intro E.patchDepartureRuleClosed
      (And.intro E.riskSensitivityClosed E.socialInformationUseClosed))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse