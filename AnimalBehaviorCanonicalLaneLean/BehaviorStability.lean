import canonicalLaneMathlib.AdmissibleClass
import AnimalBehaviorCanonicalLaneLean.AnimalBehaviorObjects

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure StabilityPackage (S : AnimalBehaviorObject) where
  environmentalRobustness : Prop
  behavioralPersistence : Prop
  perturbationBound : Prop
  recoveryRate : Prop

structure StabilityEvidence {S : AnimalBehaviorObject} (P : StabilityPackage S) where
  environmentalRobustnessClosed : P.environmentalRobustness
  behavioralPersistenceClosed : P.behavioralPersistence
  perturbationBoundClosed : P.perturbationBound
  recoveryRateClosed : P.recoveryRate

def StabilityClosed {S : AnimalBehaviorObject} (P : StabilityPackage S) : Prop :=
  P.environmentalRobustness ∧ P.behavioralPersistence ∧ P.perturbationBound ∧ P.recoveryRate

theorem stability_closed_from_evidence
    {S : AnimalBehaviorObject} (P : StabilityPackage S) (E : StabilityEvidence P) :
    StabilityClosed P :=
  And.intro E.environmentalRobustnessClosed
    (And.intro E.behavioralPersistenceClosed
      (And.intro E.perturbationBoundClosed E.recoveryRateClosed))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse