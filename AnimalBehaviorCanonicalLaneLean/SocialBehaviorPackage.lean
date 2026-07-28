import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure SocialBehaviorPackage where
  dominanceHierarchy : Prop
  cooperationModel : Prop
  communicationSignals : Prop
  matingSystem : Prop
  parentalInvestment : Prop
  groupLiving : Prop

structure SocialBehaviorEvidence (S : SocialBehaviorPackage) where
  dominanceHierarchyClosed : S.dominanceHierarchy
  cooperationModelClosed : S.cooperationModel
  communicationSignalsClosed : S.communicationSignals
  matingSystemClosed : S.matingSystem
  parentalInvestmentClosed : S.parentalInvestment
  groupLivingClosed : S.groupLiving

def SocialBehaviorClosed (S : SocialBehaviorPackage) : Prop :=
  S.dominanceHierarchy ∧ S.cooperationModel ∧ S.communicationSignals ∧ S.matingSystem ∧ S.parentalInvestment ∧ S.groupLiving

theorem social_behavior_closed_from_evidence (S : SocialBehaviorPackage) (ev : SocialBehaviorEvidence S) : SocialBehaviorClosed S := by
  exact And.intro ev.dominanceHierarchyClosed
    (And.intro ev.cooperationModelClosed
      (And.intro ev.communicationSignalsClosed
        (And.intro ev.matingSystemClosed
          (And.intro ev.parentalInvestmentClosed ev.groupLivingClosed))))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse