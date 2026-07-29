import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure NetworkFlowCapacity where
  nodeCount : ℕ
  edgeList : List (ℕ × ℕ)
  capacityMatrix : Type u
  maxFlowValue : Prop
  minCutCapacity : Prop
  flowConservation : Prop
  integralityProperty : Prop

structure NetworkFlowCapacityEvidence (N : NetworkFlowCapacity) where
  maxFlowValueClosed : N.maxFlowValue
  minCutCapacityClosed : N.minCutCapacity
  flowConservationClosed : N.flowConservation
  integralityPropertyClosed : N.integralityProperty

def NetworkFlowCapacityClosed (N : NetworkFlowCapacity) : Prop :=
  N.maxFlowValue ∧ N.minCutCapacity ∧ N.flowConservation ∧ N.integralityProperty

theorem network_flow_capacity_closed_from_evidence
    (N : NetworkFlowCapacity) (E : NetworkFlowCapacityEvidence N) : NetworkFlowCapacityClosed N := by
  exact And.intro E.maxFlowValueClosed
    (And.intro E.minCutCapacityClosed
      (And.intro E.flowConservationClosed E.integralityPropertyClosed))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse
