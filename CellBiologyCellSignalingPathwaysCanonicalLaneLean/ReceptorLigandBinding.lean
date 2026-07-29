import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure ReceptorLigandBinding where
  ligandConcentration : ℝ
  receptorDensity : ℝ
  bindingAffinity : ℝ
  boundComplexFormation : Prop
  signalInitiation : Prop

structure ReceptorLigandBindingEvidence (B : ReceptorLigandBinding) where
  ligandConcentrationClosed : B.ligandConcentration = B.ligandConcentration
  receptorDensityClosed : B.receptorDensity = B.receptorDensity
  bindingAffinityClosed : B.bindingAffinity = B.bindingAffinity
  boundComplexFormationClosed : B.boundComplexFormation
  signalInitiationClosed : B.signalInitiation

def ReceptorLigandBindingClosed (B : ReceptorLigandBinding) : Prop :=
  B.boundComplexFormation ∧ B.signalInitiation

theorem receptor_ligand_binding_closed_from_evidence (B : ReceptorLigandBinding)
    (E : ReceptorLigandBindingEvidence B) : ReceptorLigandBindingClosed B := by
  exact And.intro E.boundComplexFormationClosed E.signalInitiationClosed

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse
