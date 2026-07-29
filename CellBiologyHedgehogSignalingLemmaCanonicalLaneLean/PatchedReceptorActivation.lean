import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure PatchedReceptorPackage where
  receptor : Type u
  ligandBinding : Prop
  smoothenedRepression : Prop
  activationRelief : Prop

structure PatchedReceptorEvidence (P : PatchedReceptorPackage) where
  ligandBindingClosed : P.ligandBinding
  smoothenedRepressionClosed : P.smoothenedRepression
  activationReliefClosed : P.activationRelief

def PatchedReceptorClosed (P : PatchedReceptorPackage) : Prop :=
  P.ligandBinding ∧ P.smoothenedRepression ∧ P.activationRelief

theorem patched_receptor_closed_from_evidence (P : PatchedReceptorPackage)
    (E : PatchedReceptorEvidence P) : PatchedReceptorClosed P := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.smoothenedRepressionClosed E.activationReliefClosed)

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse