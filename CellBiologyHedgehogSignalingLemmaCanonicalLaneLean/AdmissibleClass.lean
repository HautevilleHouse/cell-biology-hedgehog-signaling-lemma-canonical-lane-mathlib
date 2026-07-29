import HautevilleHouse.CellBiologyHedgehogSignalingLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : HedgehogAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HedgehogWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse