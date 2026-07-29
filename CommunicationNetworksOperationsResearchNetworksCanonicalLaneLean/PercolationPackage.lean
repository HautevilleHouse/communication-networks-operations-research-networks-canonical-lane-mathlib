import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure PercolationPackage (N : NetworkGraphObject) where
  percolationThreshold : ℝ
  giantComponentExists : Prop
  clusterDistribution : List ℕ
  criticalExponents : List ℝ
  universalityClass : String

structure PercolationEvidence (P : PercolationPackage) where
  percolationThresholdClosed : 0 < P.percolationThreshold ∧ P.percolationThreshold < 1
  giantComponentExistsClosed : P.giantComponentExists
  clusterDistributionClosed : P.clusterDistribution.length > 0
  criticalExponentsClosed : P.criticalExponents.length > 0
  universalityClassClosed : P.universalityClass ≠ ""

def PercolationClosed (P : PercolationPackage) : Prop :=
  (0 < P.percolationThreshold ∧ P.percolationThreshold < 1) ∧
  P.giantComponentExists ∧
  P.clusterDistribution.length > 0 ∧
  P.criticalExponents.length > 0 ∧
  P.universalityClass ≠ ""

theorem percolation_closed_from_evidence (P : PercolationPackage) (E : PercolationEvidence P) : PercolationClosed P := by
  exact And.intro E.percolationThresholdClosed (And.intro E.giantComponentExistsClosed (And.intro E.clusterDistributionClosed (And.intro E.criticalExponentsClosed E.universalityClassClosed)))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse