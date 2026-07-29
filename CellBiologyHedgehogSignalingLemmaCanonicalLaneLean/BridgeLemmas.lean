import HautevilleHouse.CellBiologyHedgehogSignalingLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HedgehogWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse