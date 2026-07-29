import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure NetworkFlowPackage where
  source : ℕ
  sink : ℕ
  capacity : ℝ
  flowValue : ℝ
  maxFlowMinCut : Prop
  integrality : Prop

structure NetworkFlowEvidence (N : NetworkFlowPackage) where
  sourceClosed : N.source ≠ N.sink
  sinkClosed : N.sink ≠ N.source
  capacityClosed : N.capacity ≥ 0
  flowValueClosed : N.flowValue ≥ 0
  maxFlowMinCutClosed : N.maxFlowMinCut
  integralityClosed : N.integrality

def NetworkFlowClosed (N : NetworkFlowPackage) : Prop :=
  N.source ≠ N.sink ∧ N.sink ≠ N.source ∧ N.capacity ≥ 0 ∧ N.flowValue ≥ 0 ∧
  N.maxFlowMinCut ∧ N.integrality

theorem network_flow_closed_from_evidence (N : NetworkFlowPackage) (E : NetworkFlowEvidence N) :
    NetworkFlowClosed N := by
  exact And.intro E.sourceClosed
    (And.intro E.sinkClosed
      (And.intro E.capacityClosed
        (And.intro E.flowValueClosed
          (And.intro E.maxFlowMinCutClosed E.integralityClosed))))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse