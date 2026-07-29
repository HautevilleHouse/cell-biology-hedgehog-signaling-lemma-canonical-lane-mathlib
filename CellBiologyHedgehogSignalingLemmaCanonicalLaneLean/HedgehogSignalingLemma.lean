import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure HedgehogSignalingLemmaPackage where
  ligand : Type u
  receptor : Type v
  patched : Type w
  smoothened : Type x
  gliomaAssociatedOncogene : Type y
  pathwayActivation : Prop
  transcriptionalResponse : Prop
  ligandReceptorBinding : ligand → receptor → Prop
  patchedInhibition : receptor → patched → Prop
  smoothenedDerepression : patched → smoothened → Prop
  gliomaOncogeneProcessing : smoothened → gliomaAssociatedOncogene → Prop
  targetGeneActivation : gliomaAssociatedOncogene → Prop

structure HedgehogSignalingEvidence (H : HedgehogSignalingLemmaPackage) where
  pathwayActivationClosed : H.pathwayActivation
  transcriptionalResponseClosed : H.transcriptionalResponse
  ligandReceptorBindingClosed : ∀ (l : H.ligand) (r : H.receptor), H.ligandReceptorBinding l r
  patchedInhibitionClosed : ∀ (r : H.receptor) (p : H.patched), H.patchedInhibition r p
  smoothenedDerepressionClosed : ∀ (p : H.patched) (s : H.smoothened), H.smoothenedDerepression p s
  gliomaOncogeneProcessingClosed : ∀ (s : H.smoothened) (g : H.gliomaAssociatedOncogene), H.gliomaOncogeneProcessing s g
  targetGeneActivationClosed : ∀ (g : H.gliomaAssociatedOncogene), H.targetGeneActivation g

def HedgehogSignalingLemmaClosed (H : HedgehogSignalingLemmaPackage) : Prop :=
  H.pathwayActivation ∧ H.transcriptionalResponse ∧
  (∀ (l : H.ligand) (r : H.receptor), H.ligandReceptorBinding l r) ∧
  (∀ (r : H.receptor) (p : H.patched), H.patchedInhibition r p) ∧
  (∀ (p : H.patched) (s : H.smoothened), H.smoothenedDerepression p s) ∧
  (∀ (s : H.smoothened) (g : H.gliomaAssociatedOncogene), H.gliomaOncogeneProcessing s g) ∧
  (∀ (g : H.gliomaAssociatedOncogene), H.targetGeneActivation g)

theorem hedgehog_signaling_lemma_closed_from_evidence
    (H : HedgehogSignalingLemmaPackage) (E : HedgehogSignalingEvidence H) :
    HedgehogSignalingLemmaClosed H := by
  exact And.intro E.pathwayActivationClosed
    (And.intro E.transcriptionalResponseClosed
      (And.intro E.ligandReceptorBindingClosed
        (And.intro E.patchedInhibitionClosed
          (And.intro E.smoothenedDerepressionClosed
            (And.intro E.gliomaOncogeneProcessingClosed
              E.targetGeneActivationClosed)))))

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse