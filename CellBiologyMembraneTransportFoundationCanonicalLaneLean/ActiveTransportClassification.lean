import HautevilleHouse.CellBiologyMembraneTransportFoundationCanonicalLaneLean.PassiveDiffusionBridge

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure ActiveTransportPackage where
  energySource : Prop
  transporterProtein : Prop
  againstGradient : Prop
  transporterSaturated : Prop

structure ActiveTransportEvidence (A : ActiveTransportPackage) where
  energySourceClosed : A.energySource
  transporterProteinClosed : A.transporterProtein
  againstGradientClosed : A.againstGradient
  transporterSaturatedClosed : A.transporterSaturated

def ActiveTransportClosed (A : ActiveTransportPackage) : Prop :=
  A.energySource ∧ A.transporterProtein ∧ A.againstGradient ∧ A.transporterSaturated

theorem active_transport_closed_from_evidence (A : ActiveTransportPackage)
    (E : ActiveTransportEvidence A) : ActiveTransportClosed A := by
  exact And.intro E.energySourceClosed
    (And.intro E.transporterProteinClosed
      (And.intro E.againstGradientClosed E.transporterSaturatedClosed))

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse