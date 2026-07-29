import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure ShhGradientPackage where
  sourceSecretesShh : Prop
  diffusionThroughExtracellularMatrix : Prop
  gradientFormation : Prop
  thresholdBasedResponse : Prop

structure ShhGradientEvidence (G : ShhGradientPackage) where
  sourceSecretesShhClosed : G.sourceSecretesShh
  diffusionThroughExtracellularMatrixClosed : G.diffusionThroughExtracellularMatrix
  gradientFormationClosed : G.gradientFormation
  thresholdBasedResponseClosed : G.thresholdBasedResponse

def ShhGradientClosed (G : ShhGradientPackage) : Prop :=
  G.sourceSecretesShh ∧ G.diffusionThroughExtracellularMatrix ∧ G.gradientFormation ∧ G.thresholdBasedResponse

theorem shh_gradient_closed_from_evidence (G : ShhGradientPackage) (E : ShhGradientEvidence G) :
    ShhGradientClosed G := by
  exact And.intro E.sourceSecretesShhClosed (And.intro E.diffusionThroughExtracellularMatrixClosed (And.intro E.gradientFormationClosed E.thresholdBasedResponseClosed))

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse
