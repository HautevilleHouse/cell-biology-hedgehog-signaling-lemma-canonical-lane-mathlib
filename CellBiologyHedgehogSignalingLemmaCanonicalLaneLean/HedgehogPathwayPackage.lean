import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure HedgehogPathwayPackage where
  ligand : Type u
  patchedReceptor : Type v
  smoothened : Type w
  gliTranscriptionFactor : Type x
  ligandPresent : Prop
  receptorBound : Prop
  signalingActive : Prop
  targetGeneExpression : Prop

structure HedgehogPathwayEvidence (P : HedgehogPathwayPackage) where
  ligandPresentClosed : P.ligandPresent
  receptorBoundClosed : P.receptorBound
  signalingActiveClosed : P.signalingActive
  targetGeneExpressionClosed : P.targetGeneExpression

def HedgehogPathwayClosed (P : HedgehogPathwayPackage) : Prop :=
  P.ligandPresent ∧ P.receptorBound ∧ P.signalingActive ∧ P.targetGeneExpression

theorem hedgehog_pathway_closed_from_evidence (P : HedgehogPathwayPackage)
    (E : HedgehogPathwayEvidence P) : HedgehogPathwayClosed P := by
  exact And.intro E.ligandPresentClosed
    (And.intro E.receptorBoundClosed
      (And.intro E.signalingActiveClosed E.targetGeneExpressionClosed))

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse