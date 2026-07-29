import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure RandomGraphPackage where
  erdosRenyiModel : Prop
  barabasiAlbertModel : Prop
  degreeDistribution : Prop
  giantComponent : Prop
  phaseTransition : Prop
  connectivityThreshold : Prop

structure RandomGraphEvidence (R : RandomGraphPackage) where
  erdosRenyiModelClosed : R.erdosRenyiModel
  barabasiAlbertModelClosed : R.barabasiAlbertModel
  degreeDistributionClosed : R.degreeDistribution
  giantComponentClosed : R.giantComponent
  phaseTransitionClosed : R.phaseTransition
  connectivityThresholdClosed : R.connectivityThreshold

def RandomGraphClosed (R : RandomGraphPackage) : Prop :=
  R.erdosRenyiModel ∧ R.barabasiAlbertModel ∧ R.degreeDistribution ∧ R.giantComponent ∧ R.phaseTransition ∧ R.connectivityThreshold

theorem random_graph_closed_from_evidence (R : RandomGraphPackage)
    (E : RandomGraphEvidence R) : RandomGraphClosed R := by
  exact And.intro E.erdosRenyiModelClosed
    (And.intro E.barabasiAlbertModelClosed
      (And.intro E.degreeDistributionClosed
        (And.intro E.giantComponentClosed
          (And.intro E.phaseTransitionClosed E.connectivityThresholdClosed))))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse
