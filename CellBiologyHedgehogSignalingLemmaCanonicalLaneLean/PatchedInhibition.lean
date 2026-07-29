import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure PatchedInhibitionPackage where
  patched : Type u
  smoothened : Type v
  inhibitionMechanism : Prop
  conformationalChange : Prop
  phosphorylationState : Prop
  releaseSignal : Prop

structure PatchedInhibitionEvidence (P : PatchedInhibitionPackage) where
  inhibitionMechanismClosed : P.inhibitionMechanism
  conformationalChangeClosed : P.conformationalChange
  phosphorylationStateClosed : P.phosphorylationState
  releaseSignalClosed : P.releaseSignal

def PatchedInhibitionClosed (P : PatchedInhibitionPackage) : Prop :=
  P.inhibitionMechanism ∧ P.conformationalChange ∧
  P.phosphorylationState ∧ P.releaseSignal

theorem patched_inhibition_closed_from_evidence
    (P : PatchedInhibitionPackage) (E : PatchedInhibitionEvidence P) :
    PatchedInhibitionClosed P := by
  exact And.intro E.inhibitionMechanismClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.phosphorylationStateClosed E.releaseSignalClosed))

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse