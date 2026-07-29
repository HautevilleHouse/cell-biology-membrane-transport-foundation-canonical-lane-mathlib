import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure MembraneTransportSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MembraneTransportAdmittedObject where
  space : MembraneTransportSpace
  membraneStructure : Prop
  transportMechanism : Prop
  conclusion : transportMechanism

def membraneTransportWitnessClosed (O : MembraneTransportAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse