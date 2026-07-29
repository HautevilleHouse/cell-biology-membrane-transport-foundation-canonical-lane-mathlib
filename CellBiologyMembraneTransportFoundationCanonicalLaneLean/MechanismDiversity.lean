import CellBiologyMembraneTransportFoundationCanonicalLaneLean.MembranePermeability

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure SimpleDiffusionConditions where
  magnitudeConcentrationDifference : Prop
  membranePermeability : Prop

def simpleDiffusionClosed (S : SimpleDiffusionConditions) : Prop :=
  S.magnitudeConcentrationDifference ∧ S.membranePermeability

theorem simple_diffusion_closed (S : SimpleDiffusionConditions) : simpleDiffusionClosed S := by
  exact And.intro S.magnitudeConcentrationDifference S.membranePermeability

structure CarrierMediatedTransport where
  bindingAffinity : Prop
  conformationalChange : Prop
  saturationKinetics : Prop

def carrierMediatedClosed (C : CarrierMediatedTransport) : Prop :=
  C.bindingAffinity ∧ C.conformationalChange ∧ C.saturationKinetics

theorem carrier_mediated_closed (C : CarrierMediatedTransport) : carrierMediatedClosed C := by
  exact And.intro C.bindingAffinity (And.intro C.conformationalChange C.saturationKinetics)

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse