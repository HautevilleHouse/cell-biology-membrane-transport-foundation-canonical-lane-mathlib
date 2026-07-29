import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure MembraneTransportAdmittedObject where
  carrier : Type
  membraneTransportProperty : Prop
  conclusion : membraneTransportProperty

def MembraneTransportWitnessClosed (O : MembraneTransportAdmittedObject) : Prop :=
  O.membraneTransportProperty

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse
