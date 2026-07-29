import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure QueueingTheoryNetworksPackage where
  arrivalProcess : Type u
  serviceProcess : Type v
  queueLengthDistribution : Prop
  waitingTimeDistribution : Prop
  networkStability : Prop
  jacksonNetwork : Prop

structure QueueingTheoryNetworksEvidence (Q : QueueingTheoryNetworksPackage) where
  queueLengthDistributionClosed : Q.queueLengthDistribution
  waitingTimeDistributionClosed : Q.waitingTimeDistribution
  networkStabilityClosed : Q.networkStability
  jacksonNetworkClosed : Q.jacksonNetwork

def QueueingTheoryNetworksClosed (Q : QueueingTheoryNetworksPackage) : Prop :=
  Q.queueLengthDistribution ∧ Q.waitingTimeDistribution ∧ Q.networkStability ∧ Q.jacksonNetwork

theorem queueing_theory_networks_closed_from_evidence (Q : QueueingTheoryNetworksPackage)
    (E : QueueingTheoryNetworksEvidence Q) : QueueingTheoryNetworksClosed Q := by
  exact And.intro E.queueLengthDistributionClosed
    (And.intro E.waitingTimeDistributionClosed
      (And.intro E.networkStabilityClosed E.jacksonNetworkClosed))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse