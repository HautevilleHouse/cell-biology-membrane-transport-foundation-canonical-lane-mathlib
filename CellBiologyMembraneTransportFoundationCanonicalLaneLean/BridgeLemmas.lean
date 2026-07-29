import canonicalLaneMathlib.AdmissibleClass
import CellBiologyMembraneTransportFoundationCanonicalLaneLean.MembraneTransportDomain

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  membraneTransportWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse