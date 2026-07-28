import HautevilleHouse.AnimalBehaviorCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure KinSelectionPackage where
  inclusiveFitness : Prop
  altruism : Prop
  kinRecognition : Prop
  eusociality : Prop

structure KinSelectionEvidence (K : KinSelectionPackage) where
  inclusiveFitnessClosed : K.inclusiveFitness
  altruismClosed : K.altruism
  kinRecognitionClosed : K.kinRecognition
  eusocialityClosed : K.eusociality

def KinSelectionClosed (K : KinSelectionPackage) : Prop :=
  K.inclusiveFitness ∧ K.altruism ∧ K.kinRecognition ∧ K.eusociality

theorem kin_selection_closed_from_evidence (K : KinSelectionPackage)
    (E : KinSelectionEvidence K) : KinSelectionClosed K := by
  exact And.intro E.inclusiveFitnessClosed (And.intro E.altruismClosed
    (And.intro E.kinRecognitionClosed E.eusocialityClosed))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse
