import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure SmallWorldPackage where
  clusteringCoefficient : ℝ
  averagePathLength : ℝ
  rewirProbability : ℝ
  smallWorldProperty : Prop

structure SmallWorldEvidence (S : SmallWorldPackage) where
  clusteringCoefficientClosed : S.clusteringCoefficient > 0
  averagePathLengthClosed : S.averagePathLength > 0
  rewirProbabilityClosed : S.rewirProbability ≥ 0 ∧ S.rewirProbability ≤ 1
  smallWorldPropertyClosed : S.smallWorldProperty

def SmallWorldClosed (S : SmallWorldPackage) : Prop :=
  S.clusteringCoefficient > 0 ∧ S.averagePathLength > 0 ∧
  (S.rewirProbability ≥ 0 ∧ S.rewirProbability ≤ 1) ∧ S.smallWorldProperty

theorem small_world_closed_from_evidence (S : SmallWorldPackage) (E : SmallWorldEvidence S) :
    SmallWorldClosed S := by
  exact And.intro E.clusteringCoefficientClosed
    (And.intro E.averagePathLengthClosed
      (And.intro E.rewirProbabilityClosed E.smallWorldPropertyClosed))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse