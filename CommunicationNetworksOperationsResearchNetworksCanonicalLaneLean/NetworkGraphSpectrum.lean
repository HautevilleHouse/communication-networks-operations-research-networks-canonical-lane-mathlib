import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure NetworkGraphSpectrumPackage where
  adjacencyMatrix : Matrix ℕ ℕ ℕ
  eigenvalues : List ℝ
  spectralRadius : ℝ
  algebraicConnectivity : ℝ
  adjacencyMatrixSymmetric : Prop
  eigenvaluesComputed : Prop
  spectralRadiusNonnegative : Prop
  algebraicConnectivityNonnegative : Prop

structure NetworkGraphSpectrumEvidence (G : NetworkGraphSpectrumPackage) where
  adjacencyMatrixSymmetricClosed : G.adjacencyMatrixSymmetric
  eigenvaluesComputedClosed : G.eigenvaluesComputed
  spectralRadiusNonnegativeClosed : G.spectralRadiusNonnegative
  algebraicConnectivityNonnegativeClosed : G.algebraicConnectivityNonnegative

def NetworkGraphSpectrumClosed (G : NetworkGraphSpectrumPackage) : Prop :=
  G.adjacencyMatrixSymmetric ∧ G.eigenvaluesComputed ∧ G.spectralRadiusNonnegative ∧ G.algebraicConnectivityNonnegative

theorem network_graph_spectrum_closed_from_evidence (G : NetworkGraphSpectrumPackage) (E : NetworkGraphSpectrumEvidence G) : NetworkGraphSpectrumClosed G :=
  And.intro E.adjacencyMatrixSymmetricClosed (And.intro E.eigenvaluesComputedClosed (And.intro E.spectralRadiusNonnegativeClosed E.algebraicConnectivityNonnegativeClosed))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse