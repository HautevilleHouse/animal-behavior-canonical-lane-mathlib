import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnimalBehaviorCanonicalLaneLean

structure PhylogeneticComparativePackage where
  phylogeneticSignal : Prop
  comparativeMethod : Prop
  ancestralStateReconstruction : Prop
  correlatedEvolution : Prop
  phylogeneticGeneralizedLeastSquares : Prop

structure PhylogeneticComparativeEvidence (P : PhylogeneticComparativePackage) where
  phylogeneticSignalClosed : P.phylogeneticSignal
  comparativeMethodClosed : P.comparativeMethod
  ancestralStateReconstructionClosed : P.ancestralStateReconstruction
  correlatedEvolutionClosed : P.correlatedEvolution
  phylogeneticGeneralizedLeastSquaresClosed : P.phylogeneticGeneralizedLeastSquares

def PhylogeneticComparativeClosed (P : PhylogeneticComparativePackage) : Prop :=
  P.phylogeneticSignal ∧ P.comparativeMethod ∧ P.ancestralStateReconstruction ∧ P.correlatedEvolution ∧ P.phylogeneticGeneralizedLeastSquares

theorem phylogenetic_comparative_closed_from_evidence (P : PhylogeneticComparativePackage) (ev : PhylogeneticComparativeEvidence P) : PhylogeneticComparativeClosed P := by
  exact And.intro ev.phylogeneticSignalClosed
    (And.intro ev.comparativeMethodClosed
      (And.intro ev.ancestralStateReconstructionClosed
        (And.intro ev.correlatedEvolutionClosed ev.phylogeneticGeneralizedLeastSquaresClosed)))

end AnimalBehaviorCanonicalLaneLean
end HautevilleHouse