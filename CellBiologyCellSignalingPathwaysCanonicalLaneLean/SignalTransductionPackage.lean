import CellBiologyCellSignalingPathwaysCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure SignalTransductionPackage where
  receptorBinding : Prop
  conformationalChange : Prop
  initialActivation : Prop
  downstreamSignaling : Prop

structure SignalTransductionEvidence (P : SignalTransductionPackage) where
  receptorBindingClosed : P.receptorBinding
  conformationalChangeClosed : P.conformationalChange
  initialActivationClosed : P.initialActivation
  downstreamSignalingClosed : P.downstreamSignaling

def SignalTransductionClosed (P : SignalTransductionPackage) : Prop :=
  P.receptorBinding ∧ P.conformationalChange ∧ P.initialActivation ∧ P.downstreamSignaling

theorem signal_transduction_closed_from_evidence (P : SignalTransductionPackage)
    (E : SignalTransductionEvidence P) : SignalTransductionClosed P := by
  exact And.intro E.receptorBindingClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.initialActivationClosed E.downstreamSignalingClosed))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse