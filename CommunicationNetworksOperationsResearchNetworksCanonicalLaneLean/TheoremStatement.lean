import CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworks

structure NetworkSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NetworkAdmittedObject where
  space : NetworkSpace
  connectedGraph : Prop
  smallWorldProperty : Prop
  percolationThreshold : Prop
  spectrumProperty : Prop
  conclusion : spectrumProperty

def NetworkWitnessClosed (O : NetworkAdmittedObject) : Prop :=
  O.spectrumProperty

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  networkConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceRepository : String := "communication-networks-operations-research-networks-canonical-lane"
def sourceDescription : String := "Network theory: graph spectra, percolation, small-world networks, random graphs"

end CommunicationNetworksOperationsResearchNetworks
end HautevilleHouse
