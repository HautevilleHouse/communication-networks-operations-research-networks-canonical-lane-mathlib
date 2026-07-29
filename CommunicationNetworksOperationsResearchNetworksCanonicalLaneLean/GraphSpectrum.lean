import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure GraphSpectrumPackage where
  adjacencyEigenvalues : List ℝ
  laplacianEigenvalues : List ℝ
  spectralRadius : ℝ
  algebraicConnectivity : ℝ
  expanderMixing : Prop

structure GraphSpectrumEvidence (G : GraphSpectrumPackage) where
  adjacencyEigenvaluesClosed : G.adjacencyEigenvalues ≠ []
  laplacianEigenvaluesClosed : G.laplacianEigenvalues ≠ []
  spectralRadiusClosed : G.spectralRadius ≥ 0
  algebraicConnectivityClosed : G.algebraicConnectivity ≥ 0
  expanderMixingClosed : G.expanderMixing

def GraphSpectrumClosed (G : GraphSpectrumPackage) : Prop :=
  G.adjacencyEigenvalues ≠ [] ∧ G.laplacianEigenvalues ≠ [] ∧
  G.spectralRadius ≥ 0 ∧ G.algebraicConnectivity ≥ 0 ∧ G.expanderMixing

theorem graph_spectrum_closed_from_evidence (G : GraphSpectrumPackage) (E : GraphSpectrumEvidence G) :
    GraphSpectrumClosed G := by
  exact And.intro E.adjacencyEigenvaluesClosed
    (And.intro E.laplacianEigenvaluesClosed
      (And.intro E.spectralRadiusClosed
        (And.intro E.algebraicConnectivityClosed E.expanderMixingClosed)))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse