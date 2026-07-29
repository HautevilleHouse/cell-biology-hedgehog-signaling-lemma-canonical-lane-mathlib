import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure SmoothenedSignalingCascadePackage where
  smoActivation : Prop
  gliTranscriptionFactorProcessing : Prop
  targetGeneActivation : Prop
  negativeFeedbackRegulation : Prop

structure SmoothenedSignalingCascadeEvidence (S : SmoothenedSignalingCascadePackage) where
  smoActivationClosed : S.smoActivation
  gliProcessingClosed : S.gliTranscriptionFactorProcessing
  targetGeneActivationClosed : S.targetGeneActivation
  negativeFeedbackRegulationClosed : S.negativeFeedbackRegulation

def SmoothenedSignalingCascadeClosed (S : SmoothenedSignalingCascadePackage) : Prop :=
  S.smoActivation ∧ S.gliTranscriptionFactorProcessing ∧
  S.targetGeneActivation ∧ S.negativeFeedbackRegulation

theorem smoothened_signaling_cascade_closed_from_evidence
    (S : SmoothenedSignalingCascadePackage) (E : SmoothenedSignalingCascadeEvidence S) :
    SmoothenedSignalingCascadeClosed S := by
  exact And.intro E.smoActivationClosed
    (And.intro E.gliProcessingClosed
      (And.intro E.targetGeneActivationClosed E.negativeFeedbackRegulationClosed))

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse