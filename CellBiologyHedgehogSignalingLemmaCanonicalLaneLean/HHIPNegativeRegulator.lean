import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure HHIPNegativeRegulator where
  hhipExpression : Prop
  patchedBinding : Prop
  hedgehogSequestration : Prop
  signalAttenuation : Prop
  developmentalPatterning : Prop

def HHIPNegativeRegulatorClosed (H : HHIPNegativeRegulator) : Prop :=
  H.hhipExpression ∧ H.patchedBinding ∧ H.hedgehogSequestration ∧
  H.signalAttenuation ∧ H.developmentalPatterning

theorem hhip_negative_regulator_closed (H : HHIPNegativeRegulator) :
    HHIPNegativeRegulatorClosed H := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · exact H.hhipExpression
  · exact H.patchedBinding
  · exact H.hedgehogSequestration
  · exact H.signalAttenuation
  · exact H.developmentalPatterning

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse