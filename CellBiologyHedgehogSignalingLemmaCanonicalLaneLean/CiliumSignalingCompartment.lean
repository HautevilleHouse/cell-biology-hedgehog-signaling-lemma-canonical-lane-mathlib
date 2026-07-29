import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure CiliumSignalingCompartment where
  primaryCiliumFormation : Prop
  smoothenedLocalization : Prop
  gliTrafficking : Prop
  kinesinDyneinTransport : Prop
  ciliaryTipAccumulation : Prop

def CiliumSignalingCompartmentClosed (C : CiliumSignalingCompartment) : Prop :=
  C.primaryCiliumFormation ∧ C.smoothenedLocalization ∧ C.gliTrafficking ∧
  C.kinesinDyneinTransport ∧ C.ciliaryTipAccumulation

theorem cilium_signaling_compartment_closed (C : CiliumSignalingCompartment) :
    CiliumSignalingCompartmentClosed C := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · exact C.primaryCiliumFormation
  · exact C.smoothenedLocalization
  · exact C.gliTrafficking
  · exact C.kinesinDyneinTransport
  · exact C.ciliaryTipAccumulation

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse