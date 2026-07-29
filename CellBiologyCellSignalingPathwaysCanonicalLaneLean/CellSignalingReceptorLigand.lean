import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure ReceptorLigandBinding where
  ligand : Type u
  receptor : Type v
  bindingAffinity : Prop
  signalActivation : Prop
  downstreamEffect : Prop

structure ReceptorLigandEvidence (R : ReceptorLigandBinding) where
  bindingAffinityClosed : R.bindingAffinity
  signalActivationClosed : R.signalActivation
  downstreamEffectClosed : R.downstreamEffect

def ReceptorLigandClosed (R : ReceptorLigandBinding) : Prop :=
  R.bindingAffinity ∧ R.signalActivation ∧ R.downstreamEffect

theorem receptor_ligand_closed_from_evidence (R : ReceptorLigandBinding) (E : ReceptorLigandEvidence R) : ReceptorLigandClosed R := by
  exact And.intro E.bindingAffinityClosed (And.intro E.signalActivationClosed E.downstreamEffectClosed)

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse