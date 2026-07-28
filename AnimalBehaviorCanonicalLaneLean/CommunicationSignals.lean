import AnimalBehaviorCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure CommunicationSignalsPackage where
  signalHonesty : Prop
  receiverBias : Prop
  ritualization : Prop
  referentialSignals : Prop

structure CommunicationSignalsEvidence (P : CommunicationSignalsPackage) where
  signalHonestyClosed : P.signalHonesty
  receiverBiasClosed : P.receiverBias
  ritualizationClosed : P.ritualization
  referentialSignalsClosed : P.referentialSignals

def CommunicationSignalsClosed (P : CommunicationSignalsPackage) : Prop :=
  P.signalHonesty ∧ P.receiverBias ∧ P.ritualization ∧ P.referentialSignals

theorem communication_signals_closed_from_evidence (P : CommunicationSignalsPackage) (E : CommunicationSignalsEvidence P) : CommunicationSignalsClosed P := by
  exact And.intro E.signalHonestyClosed (And.intro E.receiverBiasClosed (And.intro E.ritualizationClosed E.referentialSignalsClosed))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse