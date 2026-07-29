import CellBiologyMembraneTransportFoundationCanonicalLaneLean.MembraneFinalTheorem

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure TransportModel where
  solute : Type
  concentrationGradient : Prop
  passiveDiffusion : Prop
  facilitatedDiffusion : Prop
  activeTransport : Prop
  carrierProtein : Prop

structure TransportModelEvidence (M : TransportModel) where
  concentrationGradientClosed : M.concentrationGradient
  passiveDiffusionClosed : M.passiveDiffusion
  facilitatedDiffusionClosed : M.facilitatedDiffusion
  activeTransportClosed : M.activeTransport

def TransportModelClosed (M : TransportModel) : Prop :=
  M.concentrationGradient ∧ M.passiveDiffusion ∧ M.facilitatedDiffusion ∧ M.activeTransport

theorem transport_model_closed_from_evidence (M : TransportModel) (E : TransportModelEvidence M) :
    TransportModelClosed M := by
  exact And.intro E.concentrationGradientClosed
    (And.intro E.passiveDiffusionClosed
      (And.intro E.facilitatedDiffusionClosed E.activeTransportClosed))

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse