import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure NetworkGraphSpectraPackage where
  adjacencyMatrix : Type u
  laplacianMatrix : Type v
  eigenvalues : Type w
  spectralGap : Prop
  expanderMixing : Prop
  networkConnectivity : Prop

structure NetworkGraphSpectraEvidence (G : NetworkGraphSpectraPackage) where
  spectralGapClosed : G.spectralGap
  expanderMixingClosed : G.expanderMixing
  networkConnectivityClosed : G.networkConnectivity

def NetworkGraphSpectraClosed (G : NetworkGraphSpectraPackage) : Prop :=
  G.spectralGap ∧ G.expanderMixing ∧ G.networkConnectivity

theorem network_graph_spectra_closed_from_evidence (G : NetworkGraphSpectraPackage)
    (E : NetworkGraphSpectraEvidence G) : NetworkGraphSpectraClosed G := by
  exact And.intro E.spectralGapClosed (And.intro E.expanderMixingClosed E.networkConnectivityClosed)

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse