import canonicalLaneMathlib.AdmissibleClass
import AnimalBehaviorCanonicalLaneLean.BehaviorStability

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure StabilityAnalyticCertificate (P : StabilityPackage S) where
  environmentalRobustness : Prop
  behavioralPersistence : Prop
  perturbationBound : Prop
  recoveryRate : Prop
  environmentalRobustnessClosed : environmentalRobustness
  behavioralPersistenceClosed : behavioralPersistence
  perturbationBoundClosed : perturbationBound
  recoveryRateClosed : recoveryRate
  stabilityEvidence : StabilityEvidence P

def StabilityAnalyticCertificateClosed (C : StabilityAnalyticCertificate P) : Prop :=
  C.environmentalRobustness ∧ C.behavioralPersistence ∧
  C.perturbationBound ∧ C.recoveryRate ∧ StabilityClosed P

theorem stability_analytic_certificate_closed
    (C : StabilityAnalyticCertificate P) : StabilityAnalyticCertificateClosed C :=
  And.intro C.environmentalRobustnessClosed
    (And.intro C.behavioralPersistenceClosed
      (And.intro C.perturbationBoundClosed
        (And.intro C.recoveryRateClosed
          (stability_closed_from_evidence P C.stabilityEvidence))))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse