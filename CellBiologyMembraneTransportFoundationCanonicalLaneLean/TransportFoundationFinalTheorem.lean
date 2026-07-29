import HautevilleHouse.CellBiologyMembraneTransportFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

def ConstrainedMembraneTransportClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_membrane_transport_endgame (A : AdmissibleClass) :
    ConstrainedMembraneTransportClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse