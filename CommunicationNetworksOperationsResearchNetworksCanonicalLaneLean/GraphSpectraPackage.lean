import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure GraphSpectraPackage (N : NetworkGraphObject) where
  adjacencyEigenvalues : List ℝ
  laplacianEigenvalues : List ℝ
  spectralRadius : ℝ
  algebraicConnectivity : ℝ
  eigenvalueGap : ℝ
  spectralClustering : Prop

structure GraphSpectraEvidence (P : GraphSpectraPackage) where
  adjacencyEigenvaluesClosed : P.adjacencyEigenvalues.length > 0
  laplacianEigenvaluesClosed : P.laplacianEigenvalues.length > 0
  spectralRadiusClosed : P.spectralRadius ≥ 0
  algebraicConnectivityClosed : P.algebraicConnectivity ≥ 0
  eigenvalueGapClosed : P.eigenvalueGap ≥ 0
  spectralClusteringClosed : P.spectralClustering

def GraphSpectraClosed (P : GraphSpectraPackage) : Prop :=
  P.adjacencyEigenvalues.length > 0 ∧
  P.laplacianEigenvalues.length > 0 ∧
  P.spectralRadius ≥ 0 ∧
  P.algebraicConnectivity ≥ 0 ∧
  P.eigenvalueGap ≥ 0 ∧
  P.spectralClustering

theorem graph_spectra_closed_from_evidence (P : GraphSpectraPackage) (E : GraphSpectraEvidence P) : GraphSpectraClosed P := by
  exact And.intro E.adjacencyEigenvaluesClosed (And.intro E.laplacianEigenvaluesClosed (And.intro E.spectralRadiusClosed (And.intro E.algebraicConnectivityClosed (And.intro E.eigenvalueGapClosed E.spectralClusteringClosed))))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse