import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure AnimalBehaviorAdmittedObject where
  species : String
  habitat : String
  observationProposition : Prop
  hypothesisProposition : Prop
  conclusion : observationProposition ∧ hypothesisProposition

structure AdmissibleClass where
  object : AnimalBehaviorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.observationProposition ∧ A.object.hypothesisProposition) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse