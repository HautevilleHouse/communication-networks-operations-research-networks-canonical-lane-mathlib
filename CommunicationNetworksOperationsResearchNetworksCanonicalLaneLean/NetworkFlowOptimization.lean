import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure NetworkFlowOptimizationPackage where
  maxFlowMinCut : Type u
  capacityScaling : Prop
  shortestPath : Prop
  congestionControl : Prop
  routingProtocol : Prop

structure NetworkFlowOptimizationEvidence (N : NetworkFlowOptimizationPackage) where
  maxFlowMinCutClosed : N.maxFlowMinCut
  capacityScalingClosed : N.capacityScaling
  shortestPathClosed : N.shortestPath
  congestionControlClosed : N.congestionControl
  routingProtocolClosed : N.routingProtocol

def NetworkFlowOptimizationClosed (N : NetworkFlowOptimizationPackage) : Prop :=
  N.maxFlowMinCut ∧ N.capacityScaling ∧ N.shortestPath ∧ N.congestionControl ∧ N.routingProtocol

theorem network_flow_optimization_closed_from_evidence (N : NetworkFlowOptimizationPackage)
    (E : NetworkFlowOptimizationEvidence N) : NetworkFlowOptimizationClosed N := by
  exact And.intro E.maxFlowMinCutClosed
    (And.intro E.capacityScalingClosed
      (And.intro E.shortestPathClosed
        (And.intro E.congestionControlClosed E.routingProtocolClosed)))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse