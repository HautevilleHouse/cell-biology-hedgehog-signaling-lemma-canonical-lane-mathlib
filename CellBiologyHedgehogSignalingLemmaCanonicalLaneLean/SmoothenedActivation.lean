import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure SmoothenedActivationPackage where
  smoothenedInhibitedByPatched : Prop
  hedgehogBindingRelieves : Prop
  smoothenedActive : Prop
  activationEvidence : smoothenedInhibitedByPatched ∧ hedgehogBindingRelieves ∧ smoothenedActive

def SmoothenedActivationClosed (S : SmoothenedActivationPackage) : Prop :=
  S.smoothenedInhibitedByPatched ∧ S.hedgehogBindingRelieves ∧ S.smoothenedActive

theorem smoothened_activation_closed_from_evidence (S : SmoothenedActivationPackage) :
    SmoothenedActivationClosed S := by
  exact S.activationEvidence

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse