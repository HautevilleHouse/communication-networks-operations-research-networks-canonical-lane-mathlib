import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure RandomGraphSpectrum where
  n : ℕ
  p : ℚ
  adjacencyMatrixType : Type u
  eigenvalueDistribution : Type v
  spectralRadiusBound : Prop
  eigenvalueGapBound : Prop
  semicircleLawConvergence : Prop

structure RandomGraphSpectrumEvidence (G : RandomGraphSpectrum) where
  spectralRadiusBoundClosed : G.spectralRadiusBound
  eigenvalueGapBoundClosed : G.eigenvalueGapBound
  semicircleLawConvergenceClosed : G.semicircleLawConvergence

def RandomGraphSpectrumClosed (G : RandomGraphSpectrum) : Prop :=
  G.spectralRadiusBound ∧ G.eigenvalueGapBound ∧ G.semicircleLawConvergence

theorem random_graph_spectrum_closed_from_evidence
    (G : RandomGraphSpectrum) (E : RandomGraphSpectrumEvidence G) : RandomGraphSpectrumClosed G := by
  exact And.intro E.spectralRadiusBoundClosed
    (And.intro E.eigenvalueGapBoundClosed E.semicircleLawConvergenceClosed)

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse
