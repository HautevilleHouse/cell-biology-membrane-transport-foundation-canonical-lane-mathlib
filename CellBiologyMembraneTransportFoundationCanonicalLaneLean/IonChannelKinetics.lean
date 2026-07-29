import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure IonChannelKineticsPackage where
  channelType : Type u
  voltageGated : Prop
  ligandGated : Prop
  selectivityFilter : Prop
  gatingMechanism : Prop
  conductance : Prop

structure IonChannelKineticsEvidence (I : IonChannelKineticsPackage) where
  voltageGatedClosed : I.voltageGated
  ligandGatedClosed : I.ligandGated
  selectivityFilterClosed : I.selectivityFilter
  gatingMechanismClosed : I.gatingMechanism
  conductanceClosed : I.conductance

def IonChannelKineticsClosed (I : IonChannelKineticsPackage) : Prop :=
  I.voltageGated ∧ I.ligandGated ∧ I.selectivityFilter ∧ I.gatingMechanism ∧ I.conductance

theorem ion_channel_kinetics_closed_from_evidence (I : IonChannelKineticsPackage)
    (E : IonChannelKineticsEvidence I) : IonChannelKineticsClosed I := by
  exact And.intro E.voltageGatedClosed
    (And.intro E.ligandGatedClosed
      (And.intro E.selectivityFilterClosed
        (And.intro E.gatingMechanismClosed E.conductanceClosed)))

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse
