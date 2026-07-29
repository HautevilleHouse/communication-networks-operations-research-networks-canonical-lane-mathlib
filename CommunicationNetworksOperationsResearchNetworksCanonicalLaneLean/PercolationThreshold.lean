import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure PercolationThresholdPackage where
  bondThreshold : ℝ
  siteThreshold : ℝ
  criticalExponent : ℝ
  infiniteClusterExists : Prop

structure PercolationThresholdEvidence (P : PercolationThresholdPackage) where
  bondThresholdClosed : P.bondThreshold > 0 ∧ P.bondThreshold < 1
  siteThresholdClosed : P.siteThreshold > 0 ∧ P.siteThreshold < 1
  criticalExponentClosed : P.criticalExponent > 0
  infiniteClusterExistsClosed : P.infiniteClusterExists

def PercolationThresholdClosed (P : PercolationThresholdPackage) : Prop :=
  (P.bondThreshold > 0 ∧ P.bondThreshold < 1) ∧
  (P.siteThreshold > 0 ∧ P.siteThreshold < 1) ∧
  P.criticalExponent > 0 ∧ P.infiniteClusterExists

theorem percolation_threshold_closed_from_evidence (P : PercolationThresholdPackage) (E : PercolationThresholdEvidence P) :
    PercolationThresholdClosed P := by
  exact And.intro E.bondThresholdClosed
    (And.intro E.siteThresholdClosed
      (And.intro E.criticalExponentClosed E.infiniteClusterExistsClosed))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse