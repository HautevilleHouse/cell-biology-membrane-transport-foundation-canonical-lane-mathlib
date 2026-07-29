import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure MembranePotentialPackage where
  restingPotential : ℝ
  ionDistribution : Prop
  electrochemicalGradient : Prop
  actionPotential : Prop
  gatingDynamics : Prop

structure MembranePotentialEvidence (M : MembranePotentialPackage) where
  restingPotentialDefined : True
  ionDistributionClosed : M.ionDistribution
  electrochemicalGradientClosed : M.electrochemicalGradient
  actionPotentialClosed : M.actionPotential
  gatingDynamicsClosed : M.gatingDynamics

def MembranePotentialClosed (M : MembranePotentialPackage) : Prop :=
  M.ionDistribution ∧ M.electrochemicalGradient ∧ M.actionPotential ∧ M.gatingDynamics

theorem membrane_potential_closed_from_evidence (M : MembranePotentialPackage)
    (E : MembranePotentialEvidence M) : MembranePotentialClosed M := by
  exact And.intro E.ionDistributionClosed
    (And.intro E.electrochemicalGradientClosed
      (And.intro E.actionPotentialClosed E.gatingDynamicsClosed))

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse
