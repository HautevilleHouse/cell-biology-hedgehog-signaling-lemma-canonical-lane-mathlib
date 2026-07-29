import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure GliTranscriptionFactorPackage where
  transcriptionFactor : Type u
  processing : Prop
  targetGeneActivation : Prop
  negativeFeedback : Prop

structure GliTranscriptionFactorEvidence (G : GliTranscriptionFactorPackage) where
  processingClosed : G.processing
  targetGeneActivationClosed : G.targetGeneActivation
  negativeFeedbackClosed : G.negativeFeedback

def GliTranscriptionFactorClosed (G : GliTranscriptionFactorPackage) : Prop :=
  G.processing ∧ G.targetGeneActivation ∧ G.negativeFeedback

theorem gli_transcription_factor_closed_from_evidence (G : GliTranscriptionFactorPackage)
    (E : GliTranscriptionFactorEvidence G) : GliTranscriptionFactorClosed G := by
  exact And.intro E.processingClosed
    (And.intro E.targetGeneActivationClosed E.negativeFeedbackClosed)

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse