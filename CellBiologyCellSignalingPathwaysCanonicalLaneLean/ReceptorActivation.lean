import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure ReceptorActivationPackage where
  receptor : Receptor
  ligand : Ligand
  bindingAffinity : Nat
  activationThreshold : Nat
  phosphorylationState : Bool

deriving Repr, DecidableEq

structure ReceptorActivationEvidence (R : ReceptorActivationPackage) where
  bindingAffinitySufficient : R.bindingAffinity ≥ R.activationThreshold
  receptorActivated : R.phosphorylationState

def ReceptorActivationClosed (R : ReceptorActivationPackage) : Prop :=
  R.bindingAffinity ≥ R.activationThreshold ∧ R.phosphorylationState

theorem receptor_activation_closed_from_evidence (R : ReceptorActivationPackage)
    (E : ReceptorActivationEvidence R) : ReceptorActivationClosed R := by
  exact And.intro E.bindingAffinitySufficient E.receptorActivated

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse