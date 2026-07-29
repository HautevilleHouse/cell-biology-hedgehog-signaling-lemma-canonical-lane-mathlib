import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure TargetGeneActivationPackage where
  transcriptionFactor : Type u
  targetGene : Type v
  promoterBinding : Prop
  transcriptionalActivation : Prop
  geneExpression : Prop
  cellCycleRegulation : Prop

structure TargetGeneActivationEvidence (T : TargetGeneActivationPackage) where
  promoterBindingClosed : T.promoterBinding
  transcriptionalActivationClosed : T.transcriptionalActivation
  geneExpressionClosed : T.geneExpression
  cellCycleRegulationClosed : T.cellCycleRegulation

def TargetGeneActivationClosed (T : TargetGeneActivationPackage) : Prop :=
  T.promoterBinding ∧ T.transcriptionalActivation ∧
  T.geneExpression ∧ T.cellCycleRegulation

theorem target_gene_activation_closed_from_evidence
    (T : TargetGeneActivationPackage) (E : TargetGeneActivationEvidence T) :
    TargetGeneActivationClosed T := by
  exact And.intro E.promoterBindingClosed
    (And.intro E.transcriptionalActivationClosed
      (And.intro E.geneExpressionClosed E.cellCycleRegulationClosed))

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse