import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

def ConstrainedNetworkClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_network_endgame (A : AdmissibleClass) :
    ConstrainedNetworkClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse