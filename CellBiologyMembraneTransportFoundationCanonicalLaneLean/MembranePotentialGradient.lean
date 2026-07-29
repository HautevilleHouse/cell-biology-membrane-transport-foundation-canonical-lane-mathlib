import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure MembranePotentialGradientPackage where
  ionConcentrationInside : ℝ
  ionConcentrationOutside : ℝ
  membranePotential : ℝ
  nernstPotential : ℝ
  gradientDirection : Prop
  potentialEquilibrium : Prop
  gradientActiveMaintenance : Prop

membrane_potential_gradient_closed (M : MembranePotentialGradientPackage) : Prop :=
  M.gradientDirection ∧ M.potentialEquilibrium ∧ M.gradientActiveMaintenance

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse
