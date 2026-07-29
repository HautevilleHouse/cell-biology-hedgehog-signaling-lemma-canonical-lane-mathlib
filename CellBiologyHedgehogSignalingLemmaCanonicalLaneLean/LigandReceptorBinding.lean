import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure LigandReceptorBindingPackage where
  ligand : Type u
  receptor : Type v
  bindingAffinity : Type w
  bindingKinetics : Prop
  bindingAffinityMeasured : bindingAffinity → Prop
  concentrationDependence : Prop
  bindingSpecificity : Prop

structure LigandReceptorBindingEvidence (L : LigandReceptorBindingPackage) where
  bindingKineticsClosed : L.bindingKinetics
  bindingAffinityMeasuredClosed : ∀ (a : L.bindingAffinity), L.bindingAffinityMeasured a
  concentrationDependenceClosed : L.concentrationDependence
  bindingSpecificityClosed : L.bindingSpecificity

def LigandReceptorBindingClosed (L : LigandReceptorBindingPackage) : Prop :=
  L.bindingKinetics ∧ (∀ (a : L.bindingAffinity), L.bindingAffinityMeasured a) ∧
  L.concentrationDependence ∧ L.bindingSpecificity

theorem ligand_receptor_binding_closed_from_evidence
    (L : LigandReceptorBindingPackage) (E : LigandReceptorBindingEvidence L) :
    LigandReceptorBindingClosed L := by
  exact And.intro E.bindingKineticsClosed
    (And.intro E.bindingAffinityMeasuredClosed
      (And.intro E.concentrationDependenceClosed E.bindingSpecificityClosed))

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse