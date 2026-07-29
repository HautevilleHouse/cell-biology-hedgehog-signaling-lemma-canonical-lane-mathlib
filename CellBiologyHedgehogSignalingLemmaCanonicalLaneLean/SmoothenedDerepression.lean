import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure SmoothenedDerepressionPackage where
  smoothened : Type u
  activatedSmoothened : Type v
  transducer : Type w
  dendriticTransport : Prop
  ciliaryLocalization : Prop
  signalPropagation : Prop

structure SmoothenedDerepressionEvidence (S : SmoothenedDerepressionPackage) where
  dendriticTransportClosed : S.dendriticTransport
  ciliaryLocalizationClosed : S.ciliaryLocalization
  signalPropagationClosed : S.signalPropagation

def SmoothenedDerepressionClosed (S : SmoothenedDerepressionPackage) : Prop :=
  S.dendriticTransport ∧ S.ciliaryLocalization ∧ S.signalPropagation

theorem smoothened_derepression_closed_from_evidence
    (S : SmoothenedDerepressionPackage) (E : SmoothenedDerepressionEvidence S) :
    SmoothenedDerepressionClosed S := by
  exact And.intro E.dendriticTransportClosed
    (And.intro E.ciliaryLocalizationClosed E.signalPropagationClosed)

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse