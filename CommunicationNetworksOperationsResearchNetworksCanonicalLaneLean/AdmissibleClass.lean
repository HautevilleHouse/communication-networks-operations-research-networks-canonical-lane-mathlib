import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure AdmissibleClass where
  object : NetworkGraphObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NetworkWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse