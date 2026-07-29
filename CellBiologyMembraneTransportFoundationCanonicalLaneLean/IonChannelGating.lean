import CellBiologyMembraneTransportFoundationCanonicalLaneLean.TransportModels

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure IonChannelPackage where
  channelProtein : Type
  voltageSensor : Prop
  ligandBinding : Prop
  gatingMechanism : Prop
  selectivePermeability : Prop
  openStateConductance : Prop

structure IonChannelEvidence (C : IonChannelPackage) where
  voltageSensorClosed : C.voltageSensor
  ligandBindingClosed : C.ligandBinding
  gatingMechanismClosed : C.gatingMechanism
  selectivePermeabilityClosed : C.selectivePermeability
  openStateConductanceClosed : C.openStateConductance

def IonChannelClosed (C : IonChannelPackage) : Prop :=
  C.voltageSensor ∧ C.ligandBinding ∧ C.gatingMechanism ∧ C.selectivePermeability ∧ C.openStateConductance

theorem ion_channel_closed_from_evidence (C : IonChannelPackage) (E : IonChannelEvidence C) :
    IonChannelClosed C := by
  exact And.intro E.voltageSensorClosed
    (And.intro E.ligandBindingClosed
      (And.intro E.gatingMechanismClosed
        (And.intro E.selectivePermeabilityClosed E.openStateConductanceClosed)))

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse