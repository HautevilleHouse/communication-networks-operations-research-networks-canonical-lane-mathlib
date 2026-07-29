import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure SmallWorldNetworkPackage where
  graph : Type u
  vertexCount : ℕ
  edgeCount : ℕ
  clusteringCoefficient : ℝ
  averagePathLength : ℝ
  rewiringProbability : ℝ
  highClustering : Prop
  shortPaths : Prop

structure SmallWorldNetworkEvidence (S : SmallWorldNetworkPackage) where
  clusteringCoefficientComputed : S.clusteringCoefficient > 0.5
  averagePathLengthComputed : S.averagePathLength < 10
  highClusteringClosed : S.highClustering
  shortPathsClosed : S.shortPaths

def SmallWorldNetworkClosed (S : SmallWorldNetworkPackage) : Prop :=
  S.highClustering ∧ S.shortPaths

theorem small_world_network_closed_from_evidence (S : SmallWorldNetworkPackage) (E : SmallWorldNetworkEvidence S) : SmallWorldNetworkClosed S :=
  And.intro E.highClusteringClosed E.shortPathsClosed

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse