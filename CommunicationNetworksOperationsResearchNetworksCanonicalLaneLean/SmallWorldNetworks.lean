import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure SmallWorldNetworksPackage where
  clusteringCoefficient : Type u
  averagePathLength : Type v
  wattsStrogatzModel : Prop
  rewiringProbability : Prop
  smallWorldPhenomenon : Prop

structure SmallWorldNetworksEvidence (S : SmallWorldNetworksPackage) where
  clusteringCoefficientClosed : S.clusteringCoefficient
  averagePathLengthClosed : S.averagePathLength
  wattsStrogatzModelClosed : S.wattsStrogatzModel
  rewiringProbabilityClosed : S.rewiringProbability
  smallWorldPhenomenonClosed : S.smallWorldPhenomenon

def SmallWorldNetworksClosed (S : SmallWorldNetworksPackage) : Prop :=
  S.clusteringCoefficient ∧ S.averagePathLength ∧ S.wattsStrogatzModel ∧ S.rewiringProbability ∧ S.smallWorldPhenomenon

theorem small_world_networks_closed_from_evidence (S : SmallWorldNetworksPackage)
    (E : SmallWorldNetworksEvidence S) : SmallWorldNetworksClosed S := by
  exact And.intro E.clusteringCoefficientClosed
    (And.intro E.averagePathLengthClosed
      (And.intro E.wattsStrogatzModelClosed
        (And.intro E.rewiringProbabilityClosed E.smallWorldPhenomenonClosed)))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse