import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure BehavioralEndocrinologyPackage where
  hormoneBehaviorLink : Prop
  stressResponse : Prop
  reproductiveHormones : Prop
  aggressionModel : Prop
  socialBuffering : Prop

structure BehavioralEndocrinologyEvidence (B : BehavioralEndocrinologyPackage) where
  hormoneBehaviorLinkClosed : B.hormoneBehaviorLink
  stressResponseClosed : B.stressResponse
  reproductiveHormonesClosed : B.reproductiveHormones
  aggressionModelClosed : B.aggressionModel
  socialBufferingClosed : B.socialBuffering

def BehavioralEndocrinologyClosed (B : BehavioralEndocrinologyPackage) : Prop :=
  B.hormoneBehaviorLink ∧ B.stressResponse ∧ B.reproductiveHormones ∧ B.aggressionModel ∧ B.socialBuffering

theorem behavioral_endocrinology_closed_from_evidence (B : BehavioralEndocrinologyPackage) (ev : BehavioralEndocrinologyEvidence B) : BehavioralEndocrinologyClosed B := by
  exact And.intro ev.hormoneBehaviorLinkClosed
    (And.intro ev.stressResponseClosed
      (And.intro ev.reproductiveHormonesClosed
        (And.intro ev.aggressionModelClosed ev.socialBufferingClosed)))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse