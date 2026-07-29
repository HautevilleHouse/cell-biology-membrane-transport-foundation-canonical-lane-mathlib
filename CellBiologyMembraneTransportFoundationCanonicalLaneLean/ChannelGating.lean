import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure ChannelGatingPackage where
  voltageSensor : Prop
  ligandBinding : Prop
  activationThreshold : ℝ
  inactivationDynamics : Prop
  selectivityFilter : Prop
  conductance : Prop
  gatingKinetics : Prop

channel_gating_closed (C : ChannelGatingPackage) : Prop :=
  C.voltageSensor ∧ C.ligandBinding ∧ C.selectivityFilter ∧
  C.conductance ∧ C.gatingKinetics

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse
