import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure VesicularTransportPackage where
  vesicleType : Type u
  exocytosis : Prop
  endocytosis : Prop
  snareProteins : Prop
  membraneFusion : Prop

structure VesicularTransportEvidence (V : VesicularTransportPackage) where
  exocytosisClosed : V.exocytosis
  endocytosisClosed : V.endocytosis
  snareProteinsClosed : V.snareProteins
  membraneFusionClosed : V.membraneFusion

def VesicularTransportClosed (V : VesicularTransportPackage) : Prop :=
  V.exocytosis ∧ V.endocytosis ∧ V.snareProteins ∧ V.membraneFusion

theorem vesicular_transport_closed_from_evidence (V : VesicularTransportPackage)
    (E : VesicularTransportEvidence V) : VesicularTransportClosed V := by
  exact And.intro E.exocytosisClosed
    (And.intro E.endocytosisClosed
      (And.intro E.snareProteinsClosed E.membraneFusionClosed))

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse
