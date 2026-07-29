import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportFoundationCanonicalLaneLean

structure MembraneReceptorsPackage where
  receptorType : Type u
  ligandBinding : Prop
  signalTransduction : Prop
  receptorRegulation : Prop
  specificity : Prop

structure MembraneReceptorsEvidence (M : MembraneReceptorsPackage) where
  ligandBindingClosed : M.ligandBinding
  signalTransductionClosed : M.signalTransduction
  receptorRegulationClosed : M.receptorRegulation
  specificityClosed : M.specificity

def MembraneReceptorsClosed (M : MembraneReceptorsPackage) : Prop :=
  M.ligandBinding ∧ M.signalTransduction ∧ M.receptorRegulation ∧ M.specificity

theorem membrane_receptors_closed_from_evidence (M : MembraneReceptorsPackage)
    (E : MembraneReceptorsEvidence M) : MembraneReceptorsClosed M := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.signalTransductionClosed
      (And.intro E.receptorRegulationClosed E.specificityClosed))

end CellBiologyMembraneTransportFoundationCanonicalLaneLean
end HautevilleHouse
