import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.SignalingFoundation

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure ReceptorBindingPackage (G : SignalingFoundation) where
  ligand : Type u
  receptor : Type v
  bindingAffinity : Prop
  conformationalChange : Prop
  activationSignal : Prop

structure ReceptorBindingEvidence {G : SignalingFoundation} (F : ReceptorBindingPackage G) where
  bindingAffinityClosed : F.bindingAffinity
  conformationalChangeClosed : F.conformationalChange
  activationSignalClosed : F.activationSignal

def ReceptorBindingClosed {G : SignalingFoundation} (F : ReceptorBindingPackage G) : Prop :=
  F.bindingAffinity ∧ F.conformationalChange ∧ F.activationSignal

theorem receptor_binding_closed_from_evidence
    {G : SignalingFoundation} (F : ReceptorBindingPackage G)
    (E : ReceptorBindingEvidence F) : ReceptorBindingClosed F := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.conformationalChangeClosed E.activationSignalClosed)

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse