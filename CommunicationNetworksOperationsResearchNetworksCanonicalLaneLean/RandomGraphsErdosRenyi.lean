import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure RandomGraphsErdosRenyiPackage where
  gnpModel : Type u
  giantComponentThreshold : Prop
  degreeDistribution : Prop
  connectivityThreshold : Prop
  phaseTransition : Prop

structure RandomGraphsErdosRenyiEvidence (R : RandomGraphsErdosRenyiPackage) where
  giantComponentThresholdClosed : R.giantComponentThreshold
  degreeDistributionClosed : R.degreeDistribution
  connectivityThresholdClosed : R.connectivityThreshold
  phaseTransitionClosed : R.phaseTransition

def RandomGraphsErdosRenyiClosed (R : RandomGraphsErdosRenyiPackage) : Prop :=
  R.giantComponentThreshold ∧ R.degreeDistribution ∧ R.connectivityThreshold ∧ R.phaseTransition

theorem random_graphs_erdos_renyi_closed_from_evidence (R : RandomGraphsErdosRenyiPackage)
    (E : RandomGraphsErdosRenyiEvidence R) : RandomGraphsErdosRenyiClosed R := by
  exact And.intro E.giantComponentThresholdClosed
    (And.intro E.degreeDistributionClosed
      (And.intro E.connectivityThresholdClosed E.phaseTransitionClosed))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse