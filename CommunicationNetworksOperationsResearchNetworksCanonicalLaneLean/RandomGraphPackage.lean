import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure RandomGraphPackage (N : NetworkGraphObject) where
  modelType : String
  edgeProbability : ℝ
  expectedDegree : ℕ
  phaseTransitionThreshold : ℝ
  giantComponentProbability : ℝ

structure RandomGraphEvidence (P : RandomGraphPackage) where
  modelTypeClosed : P.modelType ∈ {"Erdos-Renyi", "Configuration", "Stochastic Block"}
  edgeProbabilityClosed : 0 ≤ P.edgeProbability ∧ P.edgeProbability ≤ 1
  expectedDegreeClosed : P.expectedDegree ≥ 0
  phaseTransitionThresholdClosed : 0 < P.phaseTransitionThreshold ∧ P.phaseTransitionThreshold < 1
  giantComponentProbabilityClosed : 0 ≤ P.giantComponentProbability ∧ P.giantComponentProbability ≤ 1

def RandomGraphClosed (P : RandomGraphPackage) : Prop :=
  P.modelType ∈ {"Erdos-Renyi", "Configuration", "Stochastic Block"} ∧
  (0 ≤ P.edgeProbability ∧ P.edgeProbability ≤ 1) ∧
  P.expectedDegree ≥ 0 ∧
  (0 < P.phaseTransitionThreshold ∧ P.phaseTransitionThreshold < 1) ∧
  (0 ≤ P.giantComponentProbability ∧ P.giantComponentProbability ≤ 1)

theorem random_graph_closed_from_evidence (P : RandomGraphPackage) (E : RandomGraphEvidence P) : RandomGraphClosed P := by
  exact And.intro E.modelTypeClosed (And.intro E.edgeProbabilityClosed (And.intro E.expectedDegreeClosed (And.intro E.phaseTransitionThresholdClosed E.giantComponentProbabilityClosed)))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse