import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure LigandReceptionPackage where
  ligandPresent : Prop
  receptorBound : Prop
  signalTransduced : Prop
  receptionEvidence : ligandPresent ∧ receptorBound ∧ signalTransduced

def LigandReceptionClosed (L : LigandReceptionPackage) : Prop :=
  L.ligandPresent ∧ L.receptorBound ∧ L.signalTransduced

theorem ligand_reception_closed_from_evidence (L : LigandReceptionPackage) :
    LigandReceptionClosed L := by
  exact L.receptionEvidence

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse