import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure LearningPlasticityPackage where
  habituationRule : Prop
  classicalConditioning : Prop
  operantConditioning : Prop
  spatialLearning : Prop
  socialLearning : Prop
  plasticityMechanisms : Prop

structure LearningPlasticityEvidence (L : LearningPlasticityPackage) where
  habituationRuleClosed : L.habituationRule
  classicalConditioningClosed : L.classicalConditioning
  operantConditioningClosed : L.operantConditioning
  spatialLearningClosed : L.spatialLearning
  socialLearningClosed : L.socialLearning
  plasticityMechanismsClosed : L.plasticityMechanisms

def LearningPlasticityClosed (L : LearningPlasticityPackage) : Prop :=
  L.habituationRule ∧ L.classicalConditioning ∧ L.operantConditioning ∧ L.spatialLearning ∧ L.socialLearning ∧ L.plasticityMechanisms

theorem learning_plasticity_closed_from_evidence (L : LearningPlasticityPackage) (ev : LearningPlasticityEvidence L) : LearningPlasticityClosed L := by
  exact And.intro ev.habituationRuleClosed
    (And.intro ev.classicalConditioningClosed
      (And.intro ev.operantConditioningClosed
        (And.intro ev.spatialLearningClosed
          (And.intro ev.socialLearningClosed ev.plasticityMechanismsClosed))))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse