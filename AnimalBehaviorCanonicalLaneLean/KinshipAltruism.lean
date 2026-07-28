import AnimalBehaviorCanonicalLaneLean.CommunicationSignals

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure KinshipAltruismPackage {F : ForagingBehaviorPackage}
    {S : SocialLearningPackage F} {M : MatingSystemsPackage S}
    {C : CommunicationSignalsPackage M} where
  inclusiveFitness : Prop
  hamiltonRule : Prop
  kinRecognition : Prop
  nepotism : Prop
  reciprocity : Prop

structure KinshipAltruismEvidence {F : ForagingBehaviorPackage}
    {S : SocialLearningPackage F} {M : MatingSystemsPackage S}
    {C : CommunicationSignalsPackage M} (K : KinshipAltruismPackage C) where
  inclusiveFitnessClosed : K.inclusiveFitness
  hamiltonRuleClosed : K.hamiltonRule
  kinRecognitionClosed : K.kinRecognition
  nepotismClosed : K.nepotism
  reciprocityClosed : K.reciprocity

def KinshipAltruismClosed {F : ForagingBehaviorPackage}
    {S : SocialLearningPackage F} {M : MatingSystemsPackage S}
    {C : CommunicationSignalsPackage M} (K : KinshipAltruismPackage C) : Prop :=
  K.inclusiveFitness ∧ K.hamiltonRule ∧
  K.kinRecognition ∧ K.nepotism ∧ K.reciprocity

theorem kinship_altruism_closed_from_evidence
    {F : ForagingBehaviorPackage} {S : SocialLearningPackage F}
    {M : MatingSystemsPackage S} {C : CommunicationSignalsPackage M}
    (K : KinshipAltruismPackage C) (E : KinshipAltruismEvidence K) :
    KinshipAltruismClosed K := by
  exact And.intro E.inclusiveFitnessClosed
    (And.intro E.hamiltonRuleClosed
      (And.intro E.kinRecognitionClosed
        (And.intro E.nepotismClosed E.reciprocityClosed)))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse