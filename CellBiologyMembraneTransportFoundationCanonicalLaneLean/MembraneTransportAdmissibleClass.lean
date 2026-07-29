import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure TransportObject where
  carrier : Type
  topology : TopologicalSpace carrier
  lipidBilayer : Prop
  membraneProtein : Prop
  transportFunction : carrier → carrier
  selectiveTransport : Prop
  conclusion : selectiveTransport

structure AdmissibleClass where
  object : TransportObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TransportWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def TransportWitnessClosed (O : TransportObject) : Prop :=
  O.selectiveTransport

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse