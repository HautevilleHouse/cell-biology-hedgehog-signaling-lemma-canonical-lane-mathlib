import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure CiliaDependentSignalingPackage {P : HedgehogPathwayPackage}
    (G : GliTranscriptionalRegulationPackage P) where
  primaryCiliumPresent : Prop
  patchedLocalization : Prop
  smoothenedAccumulation : Prop
  gliProcessing : Prop

structure CiliaDependentSignalingEvidence {P : HedgehogPathwayPackage}
    {G : GliTranscriptionalRegulationPackage P}
    (C : CiliaDependentSignalingPackage G) where
  primaryCiliumPresentClosed : C.primaryCiliumPresent
  patchedLocalizationClosed : C.patchedLocalization
  smoothenedAccumulationClosed : C.smoothenedAccumulation
  gliProcessingClosed : C.gliProcessing

def CiliaDependentSignalingClosed {P : HedgehogPathwayPackage}
    {G : GliTranscriptionalRegulationPackage P}
    (C : CiliaDependentSignalingPackage G) : Prop :=
  C.primaryCiliumPresent ∧ C.patchedLocalization ∧ C.smoothenedAccumulation ∧ C.gliProcessing

theorem cilia_dependent_signaling_closed_from_evidence
    {P : HedgehogPathwayPackage} {G : GliTranscriptionalRegulationPackage P}
    (C : CiliaDependentSignalingPackage G)
    (E : CiliaDependentSignalingEvidence C) : CiliaDependentSignalingClosed C := by
  exact And.intro E.primaryCiliumPresentClosed
    (And.intro E.patchedLocalizationClosed
      (And.intro E.smoothenedAccumulationClosed E.gliProcessingClosed))

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse