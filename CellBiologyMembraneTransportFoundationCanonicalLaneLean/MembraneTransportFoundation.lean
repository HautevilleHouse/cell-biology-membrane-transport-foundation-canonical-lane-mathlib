import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure MembraneTransportFoundation where
  membrane : Type u
  transportProteins : Type v
  ionChannels : Type w
  concentrationGradient : Prop
  passiveTransport : Prop
  activeTransport : Prop
  vesicularTransport : Prop

structure MembraneTransportEvidence (F : MembraneTransportFoundation) where
  concentrationGradientClosed : F.concentrationGradient
  passiveTransportClosed : F.passiveTransport
  activeTransportClosed : F.activeTransport
  vesicularTransportClosed : F.vesicularTransport

def MembraneTransportClosed (F : MembraneTransportFoundation) : Prop :=
  F.concentrationGradient ∧ F.passiveTransport ∧ F.activeTransport ∧ F.vesicularTransport

theorem membrane_transport_closed_from_evidence (F : MembraneTransportFoundation)
    (E : MembraneTransportEvidence F) : MembraneTransportClosed F := by
  exact And.intro E.concentrationGradientClosed
    (And.intro E.passiveTransportClosed
      (And.intro E.activeTransportClosed E.vesicularTransportClosed))

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse
