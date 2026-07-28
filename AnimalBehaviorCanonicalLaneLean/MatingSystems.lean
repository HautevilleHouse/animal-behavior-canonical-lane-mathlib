import AnimalBehaviorCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure MatingSystemsPackage where
  sexualSelection : Prop
  mateChoice : Prop
  parentalInvestment : Prop
  matingSystemDiversity : Prop

structure MatingSystemsEvidence (P : MatingSystemsPackage) where
  sexualSelectionClosed : P.sexualSelection
  mateChoiceClosed : P.mateChoice
  parentalInvestmentClosed : P.parentalInvestment
  matingSystemDiversityClosed : P.matingSystemDiversity

def MatingSystemsClosed (P : MatingSystemsPackage) : Prop :=
  P.sexualSelection ∧ P.mateChoice ∧ P.parentalInvestment ∧ P.matingSystemDiversity

theorem mating_systems_closed_from_evidence (P : MatingSystemsPackage) (E : MatingSystemsEvidence P) : MatingSystemsClosed P := by
  exact And.intro E.sexualSelectionClosed (And.intro E.mateChoiceClosed (And.intro E.parentalInvestmentClosed E.matingSystemDiversityClosed))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse