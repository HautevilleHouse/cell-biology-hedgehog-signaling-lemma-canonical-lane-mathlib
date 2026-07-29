import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure CiliumDependentSignalingPackage where
  primaryCiliumPresent : Prop
  smoLocalizationCilium : Prop
  ptchAtCiliumBase : Prop
  signalTransductionInCilium : Prop

structure CiliumDependentSignalingEvidence (C : CiliumDependentSignalingPackage) where
  primaryCiliumPresentClosed : C.primaryCiliumPresent
  smoLocalizationCiliumClosed : C.smoLocalizationCilium
  ptchAtCiliumBaseClosed : C.ptchAtCiliumBase
  signalTransductionInCiliumClosed : C.signalTransductionInCilium

def CiliumDependentSignalingClosed (C : CiliumDependentSignalingPackage) : Prop :=
  C.primaryCiliumPresent ∧ C.smoLocalizationCilium ∧
  C.ptchAtCiliumBase ∧ C.signalTransductionInCilium

theorem cilium_dependent_signaling_closed_from_evidence
    (C : CiliumDependentSignalingPackage) (E : CiliumDependentSignalingEvidence C) :
    CiliumDependentSignalingClosed C := by
  exact And.intro E.primaryCiliumPresentClosed
    (And.intro E.smoLocalizationCiliumClosed
      (And.intro E.ptchAtCiliumBaseClosed E.signalTransductionInCiliumClosed))

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse