import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure SmallWorldPackage (N : NetworkGraphObject) where
  clusteringCoefficient : ℝ
  averagePathLength : ℝ
  rewiringProbability : ℝ
  smallWorldProperty : Prop
  degreeDistribution : List ℕ

structure SmallWorldEvidence (P : SmallWorldPackage) where
  clusteringCoefficientClosed : 0 ≤ P.clusteringCoefficient ∧ P.clusteringCoefficient ≤ 1
  averagePathLengthClosed : P.averagePathLength ≥ 1
  rewiringProbabilityClosed : 0 ≤ P.rewiringProbability ∧ P.rewiringProbability ≤ 1
  smallWorldPropertyClosed : P.smallWorldProperty
  degreeDistributionClosed : P.degreeDistribution.length > 0

def SmallWorldClosed (P : SmallWorldPackage) : Prop :=
  (0 ≤ P.clusteringCoefficient ∧ P.clusteringCoefficient ≤ 1) ∧
  P.averagePathLength ≥ 1 ∧
  (0 ≤ P.rewiringProbability ∧ P.rewiringProbability ≤ 1) ∧
  P.smallWorldProperty ∧
  P.degreeDistribution.length > 0

theorem small_world_closed_from_evidence (P : SmallWorldPackage) (E : SmallWorldEvidence P) : SmallWorldClosed P := by
  exact And.intro E.clusteringCoefficientClosed (And.intro E.averagePathLengthClosed (And.intro E.rewiringProbabilityClosed (And.intro E.smallWorldPropertyClosed E.degreeDistributionClosed)))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse