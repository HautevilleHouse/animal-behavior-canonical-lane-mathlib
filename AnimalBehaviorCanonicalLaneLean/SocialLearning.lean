import AnimalBehaviorCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure SocialLearningPackage where
  observationalLearning : Prop
  imitation : Prop
  socialTransmission : Prop
  culture : Prop

structure SocialLearningEvidence (P : SocialLearningPackage) where
  observationalLearningClosed : P.observationalLearning
  imitationClosed : P.imitation
  socialTransmissionClosed : P.socialTransmission
  cultureClosed : P.culture

def SocialLearningClosed (P : SocialLearningPackage) : Prop :=
  P.observationalLearning ∧ P.imitation ∧ P.socialTransmission ∧ P.culture

theorem social_learning_closed_from_evidence (P : SocialLearningPackage) (E : SocialLearningEvidence P) : SocialLearningClosed P := by
  exact And.intro E.observationalLearningClosed (And.intro E.imitationClosed (And.intro E.socialTransmissionClosed E.cultureClosed))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse