import CellBiologyMembraneTransportFoundationCanonicalLaneLean.MembraneTransportDomain

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure MembranePermeabilityEvidence where
  lipidBilayerInsolublePolarSolutes : Prop
  concentrationGradientDrivesDiffusion : Prop
  facilitatedTransportMediatedByCarriers : Prop
  activeTransportAgainstGradient : Prop

def MembranePermeabilityClosed (E : MembranePermeabilityEvidence) : Prop :=
  E.lipidBilayerInsolublePolarSolutes ∧ E.concentrationGradientDrivesDiffusion ∧
  E.facilitatedTransportMediatedByCarriers ∧ E.activeTransportAgainstGradient

theorem membrane_permeability_closed_from_evidence
    (E : MembranePermeabilityEvidence) : MembranePermeabilityClosed E := by
  exact And.intro E.lipidBilayerInsolublePolarSolutes
    (And.intro E.concentrationGradientDrivesDiffusion
      (And.intro E.facilitatedTransportMediatedByCarriers E.activeTransportAgainstGradient))

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse