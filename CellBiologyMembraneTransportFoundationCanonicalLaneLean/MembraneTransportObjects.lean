import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure CellMembraneSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TransportAdmittedObject where
  space : CellMembraneSpace
  lipidBilayer : Prop
  transportProteins : Prop
  ionGradient : Prop
  transportFunction : Prop
  conclusion : transportFunction

structure TransportEndgameState where
  object : TransportAdmittedObject

def TransportWitnessClosed (O : TransportAdmittedObject) : Prop :=
  O.transportFunction

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse