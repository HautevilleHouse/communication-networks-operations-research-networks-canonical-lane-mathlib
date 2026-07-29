import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure GraphSpectralPackage where
  adjacencyMatrix : Type
  laplacianMatrix : Type
  eigenvalueSpectrum : Type
  spectralRadius : Prop
  algebraicConnectivity : Prop
  eigenvalueGap : Prop
  spectralClustering : Prop

def GraphSpectraClosed (G : GraphSpectralPackage) : Prop :=
  G.spectralRadius ∧ G.algebraicConnectivity ∧ G.eigenvalueGap ∧ G.spectralClustering

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse
