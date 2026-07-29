import CellBiologyMembraneTransportFoundationCanonicalLaneLean.MembraneTransportAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TransportWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse