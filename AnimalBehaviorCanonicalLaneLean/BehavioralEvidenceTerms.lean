import canonicalLaneMathlib.AdmissibleClass
import AnimalBehaviorCanonicalLaneLean.BehaviorStability

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure StabilityEvidenceTerms {S : AnimalBehaviorObject} {P : StabilityPackage S}
    (C : StabilityAnalyticCertificate P) where
  environmentalRobustnessTerm : C.environmentalRobustness
  behavioralPersistenceTerm : C.behavioralPersistence
  perturbationBoundTerm : C.perturbationBound
  recoveryRateTerm : C.recoveryRate
  stabilityClosed : StabilityClosed P

def StabilityAnalyticCertificate.evidenceTerms
    {S : AnimalBehaviorObject} {P : StabilityPackage S}
    (C : StabilityAnalyticCertificate P) : StabilityEvidenceTerms C :=
  {
    environmentalRobustnessTerm := C.environmentalRobustnessClosed
    behavioralPersistenceTerm := C.behavioralPersistenceClosed
    perturbationBoundTerm := C.perturbationBoundClosed
    recoveryRateTerm := C.recoveryRateClosed
    stabilityClosed := stability_closed_from_evidence P C.stabilityEvidence
  }

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse