import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure ActiveTransportPumpPackage where
  pumpType : Type u
  atpHydrolysis : Prop
  ionMovement : Prop
  stoichiometry : Prop
  electrogenicEffect : Prop

structure ActiveTransportPumpEvidence (A : ActiveTransportPumpPackage) where
  atpHydrolysisClosed : A.atpHydrolysis
  ionMovementClosed : A.ionMovement
  stoichiometryClosed : A.stoichiometry
  electrogenicEffectClosed : A.electrogenicEffect

def ActiveTransportPumpClosed (A : ActiveTransportPumpPackage) : Prop :=
  A.atpHydrolysis ∧ A.ionMovement ∧ A.stoichiometry ∧ A.electrogenicEffect

theorem active_transport_pump_closed_from_evidence (A : ActiveTransportPumpPackage)
    (E : ActiveTransportPumpEvidence A) : ActiveTransportPumpClosed A := by
  exact And.intro E.atpHydrolysisClosed
    (And.intro E.ionMovementClosed
      (And.intro E.stoichiometryClosed E.electrogenicEffectClosed))

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse
