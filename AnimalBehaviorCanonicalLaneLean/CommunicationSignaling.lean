import HautevilleHouse.AnimalBehaviorCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure CommunicationSignalingPackage where
  honestSignaling : Prop
  signalCost : Prop
  receiverResponse : Prop
  evolutionaryStability : Prop

structure CommunicationSignalingEvidence (C : CommunicationSignalingPackage) where
  honestSignalingClosed : C.honestSignaling
  signalCostClosed : C.signalCost
  receiverResponseClosed : C.receiverResponse
  evolutionaryStabilityClosed : C.evolutionaryStability

def CommunicationSignalingClosed (C : CommunicationSignalingPackage) : Prop :=
  C.honestSignaling ∧ C.signalCost ∧ C.receiverResponse ∧ C.evolutionaryStability

theorem communication_signaling_closed_from_evidence
    (C : CommunicationSignalingPackage) (E : CommunicationSignalingEvidence C) :
    CommunicationSignalingClosed C := by
  exact And.intro E.honestSignalingClosed (And.intro E.signalCostClosed
    (And.intro E.receiverResponseClosed E.evolutionaryStabilityClosed))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse
