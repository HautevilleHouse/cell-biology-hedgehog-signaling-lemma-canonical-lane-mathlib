import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure GliomaOncogeneProcessingPackage where
  gliomaAssociatedOncogene : Type u
  processedForm : Type v
  transcriptionFactor : Type w
  proteolyticCleavage : Prop
  nuclearTranslocation : Prop
  dnaBinding : Prop

structure GliomaOncogeneProcessingEvidence (G : GliomaOncogeneProcessingPackage) where
  proteolyticCleavageClosed : G.proteolyticCleavage
  nuclearTranslocationClosed : G.nuclearTranslocation
  dnaBindingClosed : G.dnaBinding

def GliomaOncogeneProcessingClosed (G : GliomaOncogeneProcessingPackage) : Prop :=
  G.proteolyticCleavage ∧ G.nuclearTranslocation ∧ G.dnaBinding

theorem glioma_oncogene_processing_closed_from_evidence
    (G : GliomaOncogeneProcessingPackage) (E : GliomaOncogeneProcessingEvidence G) :
    GliomaOncogeneProcessingClosed G := by
  exact And.intro E.proteolyticCleavageClosed
    (And.intro E.nuclearTranslocationClosed E.dnaBindingClosed)

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse