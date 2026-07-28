import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BehaviorSubject where
  species : Type
  ethogram : Type  -- repertoire of behaviors
  environment : Type
  behaviorSpace : Type
  topology : TopologicalSpace behaviorSpace
  adaptiveTrait : Prop
  conclusion : adaptiveTrait

structure AnimalBehaviorObject where
  subject : BehaviorSubject
  behavioralClosed : Prop
  remainderRecorded : Prop
  gateWitness : behavioralClosed ∨ remainderRecorded

def admittedClosure (A : AnimalBehaviorObject) : Prop :=
  A.behavioralClosed ∧ (A.behavioralClosed ∨ A.remainderRecorded)

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse