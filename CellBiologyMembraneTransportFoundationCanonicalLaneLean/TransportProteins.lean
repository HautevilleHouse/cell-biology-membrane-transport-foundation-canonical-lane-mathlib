import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure TransportProteinPackage where
  carrierType : Type u
  membraneEmbedding : Prop
  conformationalState : Type v
  substrateBinding : Prop
  transportRate : Prop
  energyCoupling : Prop
  openCloseCycle : Prop

transport_protein_closed (T : TransportProteinPackage) : Prop :=
  T.membraneEmbedding ∧ T.substrateBinding ∧ T.transportRate ∧
  T.energyCoupling ∧ T.openCloseCycle

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse
