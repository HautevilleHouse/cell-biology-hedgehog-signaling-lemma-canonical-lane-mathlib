import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure GliTranscriptionalRegulationPackage (P : HedgehogPathwayPackage) where
  gliActivatorForm : Prop
  gliRepressorForm : Prop
  promoterBinding : Prop
  transcriptionalOutput : Prop

structure GliTranscriptionalRegulationEvidence {P : HedgehogPathwayPackage}
    (G : GliTranscriptionalRegulationPackage P) where
  gliActivatorFormClosed : G.gliActivatorForm
  gliRepressorFormClosed : G.gliRepressorForm
  promoterBindingClosed : G.promoterBinding
  transcriptionalOutputClosed : G.transcriptionalOutput

def GliTranscriptionalRegulationClosed {P : HedgehogPathwayPackage}
    (G : GliTranscriptionalRegulationPackage P) : Prop :=
  G.gliActivatorForm ∧ G.gliRepressorForm ∧ G.promoterBinding ∧ G.transcriptionalOutput

theorem gli_transcriptional_regulation_closed_from_evidence
    {P : HedgehogPathwayPackage} (G : GliTranscriptionalRegulationPackage P)
    (E : GliTranscriptionalRegulationEvidence G) : GliTranscriptionalRegulationClosed G := by
  exact And.intro E.gliActivatorFormClosed
    (And.intro E.gliRepressorFormClosed
      (And.intro E.promoterBindingClosed E.transcriptionalOutputClosed))

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse