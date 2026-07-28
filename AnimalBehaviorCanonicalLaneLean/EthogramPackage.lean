import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure EthogramPackage where
  behavioralCatalog : Type u
  discreteBehaviorCategories : List String
  timeBudget : Prop
  sequenceStructure : Prop
  contextDependence : Prop

structure EthogramEvidence (E : EthogramPackage) where
  behavioralCatalogClosed : E.behavioralCatalog = E.behavioralCatalog
  discreteBehaviorCategoriesClosed : E.discreteBehaviorCategories.length > 0
  timeBudgetClosed : E.timeBudget
  sequenceStructureClosed : E.sequenceStructure
  contextDependenceClosed : E.contextDependence

def EthogramClosed (E : EthogramPackage) : Prop :=
  E.timeBudget ∧ E.sequenceStructure ∧ E.contextDependence

theorem ethogram_closed_from_evidence (E : EthogramPackage) (ev : EthogramEvidence E) : EthogramClosed E := by
  exact And.intro ev.timeBudgetClosed (And.intro ev.sequenceStructureClosed ev.contextDependenceClosed)

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse