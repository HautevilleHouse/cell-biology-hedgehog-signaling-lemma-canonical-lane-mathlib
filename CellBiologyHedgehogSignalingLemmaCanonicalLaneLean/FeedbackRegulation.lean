import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure FeedbackRegulationPackage where
  ptch1Upregulation : Prop
  gli1Upregulation : Prop
  negativeFeedback : Prop
  pathwayHomeostasis : Prop
  feedbackEvidence : ptch1Upregulation ∧ gli1Upregulation ∧ negativeFeedback ∧ pathwayHomeostasis

def FeedbackRegulationClosed (F : FeedbackRegulationPackage) : Prop :=
  F.ptch1Upregulation ∧ F.gli1Upregulation ∧ F.negativeFeedback ∧ F.pathwayHomeostasis

theorem feedback_regulation_closed_from_evidence (F : FeedbackRegulationPackage) :
    FeedbackRegulationClosed F := by
  exact F.feedbackEvidence

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse