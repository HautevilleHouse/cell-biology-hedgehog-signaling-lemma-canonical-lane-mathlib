import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure GliTranscriptionalProgram where
  gliActivatorFormation : Prop
  gliRepressorFormation : Prop
  targetGeneActivation : Prop
  targetGeneRepression : Prop
  feedbackLoopRegulation : Prop

def GliTranscriptionalProgramClosed (G : GliTranscriptionalProgram) : Prop :=
  G.gliActivatorFormation ∧ G.gliRepressorFormation ∧ G.targetGeneActivation ∧
  G.targetGeneRepression ∧ G.feedbackLoopRegulation

theorem gli_transcriptional_program_closed (G : GliTranscriptionalProgram) :
    GliTranscriptionalProgramClosed G := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · exact G.gliActivatorFormation
  · exact G.gliRepressorFormation
  · exact G.targetGeneActivation
  · exact G.targetGeneRepression
  · exact G.feedbackLoopRegulation

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse