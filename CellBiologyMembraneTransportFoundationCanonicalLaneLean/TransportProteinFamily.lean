import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure TransportProteinFamilyPackage where
  familyName : String
  transporters : List Type
  mechanism : Prop
  energyCoupling : Prop
  regulation : Prop

structure TransportProteinFamilyEvidence (T : TransportProteinFamilyPackage) where
  transportersNonempty : T.transporters ≠ []
  mechanismClosed : T.mechanism
  energyCouplingClosed : T.energyCoupling
  regulationClosed : T.regulation

def TransportProteinFamilyClosed (T : TransportProteinFamilyPackage) : Prop :=
  T.transporters ≠ [] ∧ T.mechanism ∧ T.energyCoupling ∧ T.regulation

theorem transport_protein_family_closed_from_evidence (T : TransportProteinFamilyPackage)
    (E : TransportProteinFamilyEvidence T) : TransportProteinFamilyClosed T := by
  exact And.intro E.transportersNonempty
    (And.intro E.mechanismClosed
      (And.intro E.energyCouplingClosed E.regulationClosed))

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse
