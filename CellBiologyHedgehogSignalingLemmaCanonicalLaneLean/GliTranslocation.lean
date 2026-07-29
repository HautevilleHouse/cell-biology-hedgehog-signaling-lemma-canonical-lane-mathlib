import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure GliTranslocationPackage where
  gliRepressorForm : Prop
  gliActivatorForm : Prop
  nuclearTranslocation : Prop
  transcriptionActivated : Prop
  translocationEvidence : gliRepressorForm ∧ gliActivatorForm ∧ nuclearTranslocation ∧ transcriptionActivated

def GliTranslocationClosed (G : GliTranslocationPackage) : Prop :=
  G.gliRepressorForm ∧ G.gliActivatorForm ∧ G.nuclearTranslocation ∧ G.transcriptionActivated

theorem gli_translocation_closed_from_evidence (G : GliTranslocationPackage) :
    GliTranslocationClosed G := by
  exact G.translocationEvidence

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse