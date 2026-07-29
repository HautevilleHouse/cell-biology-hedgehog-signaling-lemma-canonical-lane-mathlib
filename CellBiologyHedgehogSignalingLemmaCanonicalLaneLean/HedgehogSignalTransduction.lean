import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure HedgehogLigandPackage where
  ligand : Type u
  lipidModification : Prop
  secretionComplex : Prop
  gradientFormation : Prop

structure HedgehogLigandEvidence (H : HedgehogLigandPackage) where
  lipidModificationClosed : H.lipidModification
  secretionComplexClosed : H.secretionComplex
  gradientFormationClosed : H.gradientFormation

def HedgehogLigandClosed (H : HedgehogLigandPackage) : Prop :=
  H.lipidModification ∧ H.secretionComplex ∧ H.gradientFormation

theorem hedgehog_ligand_closed_from_evidence (H : HedgehogLigandPackage)
    (E : HedgehogLigandEvidence H) : HedgehogLigandClosed H := by
  exact And.intro E.lipidModificationClosed
    (And.intro E.secretionComplexClosed E.gradientFormationClosed)

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse