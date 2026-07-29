import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingLemmaCanonicalLaneLean

structure HedgehogLigandTransportPackage where
  morphogenProduction : Prop
  extracellularDiffusion : Prop
  heparinSulfateBinding : Prop
  gradedConcentrationFormation : Prop

structure HedgehogLigandTransportEvidence (P : HedgehogLigandTransportPackage) where
  morphogenProductionClosed : P.morphogenProduction
  extracellularDiffusionClosed : P.extracellularDiffusion
  heparinSulfateBindingClosed : P.heparinSulfateBinding
  gradedConcentrationFormationClosed : P.gradedConcentrationFormation

def HedgehogLigandTransportClosed (P : HedgehogLigandTransportPackage) : Prop :=
  P.morphogenProduction ∧ P.extracellularDiffusion ∧
  P.heparinSulfateBinding ∧ P.gradedConcentrationFormation

theorem hedgehog_ligand_transport_closed_from_evidence
    (P : HedgehogLigandTransportPackage) (E : HedgehogLigandTransportEvidence P) :
    HedgehogLigandTransportClosed P := by
  exact And.intro E.morphogenProductionClosed
    (And.intro E.extracellularDiffusionClosed
      (And.intro E.heparinSulfateBindingClosed E.gradedConcentrationFormationClosed))

end CellBiologyHedgehogSignalingLemmaCanonicalLaneLean
end HautevilleHouse