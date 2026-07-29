import HautevilleHouse.CellBiologyMembraneTransportFoundationCanonicalLaneLean.MembraneTransportAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure PassiveDiffusionPackage where
  concentrationGradient : Prop
  membranePermeable : Prop
  diffusionRate : Prop
  equilibriumReached : Prop

structure PassiveDiffusionEvidence (P : PassiveDiffusionPackage) where
  concentrationGradientClosed : P.concentrationGradient
  membranePermeableClosed : P.membranePermeable
  diffusionRateClosed : P.diffusionRate
  equilibriumReachedClosed : P.equilibriumReached

def PassiveDiffusionClosed (P : PassiveDiffusionPackage) : Prop :=
  P.concentrationGradient ∧ P.membranePermeable ∧ P.diffusionRate ∧ P.equilibriumReached

theorem passive_diffusion_closed_from_evidence (P : PassiveDiffusionPackage)
    (E : PassiveDiffusionEvidence P) : PassiveDiffusionClosed P := by
  exact And.intro E.concentrationGradientClosed
    (And.intro E.membranePermeableClosed
      (And.intro E.diffusionRateClosed E.equilibriumReachedClosed))

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse