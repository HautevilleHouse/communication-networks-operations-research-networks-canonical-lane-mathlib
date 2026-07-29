import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure RandomGraphErdosRenyiPackage where
  n : ℕ
  p : ℝ
  edgeProbability : Prop
  degreeDistribution : Prop
  connectivityThreshold : ℝ

structure RandomGraphErdosRenyiEvidence (R : RandomGraphErdosRenyiPackage) where
  nClosed : R.n > 0
  pClosed : R.p > 0 ∧ R.p < 1
  edgeProbabilityClosed : R.edgeProbability
  degreeDistributionClosed : R.degreeDistribution
  connectivityThresholdClosed : R.connectivityThreshold = (Real.log (R.n : ℝ)) / (R.n : ℝ)

def RandomGraphErdosRenyiClosed (R : RandomGraphErdosRenyiPackage) : Prop :=
  R.n > 0 ∧ (R.p > 0 ∧ R.p < 1) ∧ R.edgeProbability ∧ R.degreeDistribution ∧
  R.connectivityThreshold = (Real.log (R.n : ℝ)) / (R.n : ℝ)

theorem random_graph_erdos_renyi_closed_from_evidence (R : RandomGraphErdosRenyiPackage) (E : RandomGraphErdosRenyiEvidence R) :
    RandomGraphErdosRenyiClosed R := by
  exact And.intro E.nClosed
    (And.intro E.pClosed
      (And.intro E.edgeProbabilityClosed
        (And.intro E.degreeDistributionClosed E.connectivityThresholdClosed)))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse