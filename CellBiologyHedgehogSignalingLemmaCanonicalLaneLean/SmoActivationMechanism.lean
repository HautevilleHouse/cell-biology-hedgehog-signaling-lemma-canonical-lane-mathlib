import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure SmoActivationPackage {L : LigandReceptorBindingPackage} where
  ptchInhibitionRelievesSmo : Prop
  smoAccumulatesInCilium : Prop
  smoConformationalChangeActivates : Prop
  downstreamSignalingInitiated : Prop

structure SmoActivationEvidence {L : LigandReceptorBindingPackage} (P : SmoActivationPackage L) where
  ptchInhibitionRelievesSmoClosed : P.ptchInhibitionRelievesSmo
  smoAccumulatesInCiliumClosed : P.smoAccumulatesInCilium
  smoConformationalChangeActivatesClosed : P.smoConformationalChangeActivates
  downstreamSignalingInitiatedClosed : P.downstreamSignalingInitiated

def SmoActivationClosed {L : LigandReceptorBindingPackage} (P : SmoActivationPackage L) : Prop :=
  P.ptchInhibitionRelievesSmo ∧ P.smoAccumulatesInCilium ∧ P.smoConformationalChangeActivates ∧ P.downstreamSignalingInitiated

theorem smo_activation_closed_from_evidence {L : LigandReceptorBindingPackage} (P : SmoActivationPackage L) (E : SmoActivationEvidence P) :
    SmoActivationClosed P := by
  exact And.intro E.ptchInhibitionRelievesSmoClosed (And.intro E.smoAccumulatesInCiliumClosed (And.intro E.smoConformationalChangeActivatesClosed E.downstreamSignalingInitiatedClosed))

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse
