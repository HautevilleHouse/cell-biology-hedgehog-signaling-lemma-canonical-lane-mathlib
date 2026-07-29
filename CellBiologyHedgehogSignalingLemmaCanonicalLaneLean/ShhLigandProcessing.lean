import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure ShhLigandProcessing where
  shhSynthesis : Prop
  autoprocessing : Prop
  cholesterolModification : Prop
  palmitoylation : Prop
  secretion : Prop

def ShhLigandProcessingClosed (S : ShhLigandProcessing) : Prop :=
  S.shhSynthesis ∧ S.autoprocessing ∧ S.cholesterolModification ∧
  S.palmitoylation ∧ S.secretion

theorem shh_ligand_processing_closed (S : ShhLigandProcessing) :
    ShhLigandProcessingClosed S := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · exact S.shhSynthesis
  · exact S.autoprocessing
  · exact S.cholesterolModification
  · exact S.palmitoylation
  · exact S.secretion

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse