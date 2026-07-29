import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure SmallWorldPercolation where
  networkSize : ℕ
  rewiringProbability : ℚ
  clusteringCoefficient : Prop
  averagePathLength : Prop
  percolationThreshold : Prop
  giantComponentSize : Prop

structure SmallWorldPercolationEvidence (S : SmallWorldPercolation) where
  clusteringCoefficientClosed : S.clusteringCoefficient
  averagePathLengthClosed : S.averagePathLength
  percolationThresholdClosed : S.percolationThreshold
  giantComponentSizeClosed : S.giantComponentSize

def SmallWorldPercolationClosed (S : SmallWorldPercolation) : Prop :=
  S.clusteringCoefficient ∧ S.averagePathLength ∧ S.percolationThreshold ∧ S.giantComponentSize

theorem small_world_percolation_closed_from_evidence
    (S : SmallWorldPercolation) (E : SmallWorldPercolationEvidence S) : SmallWorldPercolationClosed S := by
  exact And.intro E.clusteringCoefficientClosed
    (And.intro E.averagePathLengthClosed
      (And.intro E.percolationThresholdClosed E.giantComponentSizeClosed))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse
