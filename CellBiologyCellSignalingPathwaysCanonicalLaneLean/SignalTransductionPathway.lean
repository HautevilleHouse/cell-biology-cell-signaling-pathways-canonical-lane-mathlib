import CellBiologyCellSignalingPathwaysCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure SignalTransductionPackage where
  receptorActivation : Prop
  signalCascade : Prop
  amplification : Prop
  responseSpecificity : Prop

structure SignalTransductionEvidence (P : SignalTransductionPackage) where
  receptorActivationClosed : P.receptorActivation
  signalCascadeClosed : P.signalCascade
  amplificationClosed : P.amplification
  responseSpecificityClosed : P.responseSpecificity

def SignalTransductionClosed (P : SignalTransductionPackage) : Prop :=
  P.receptorActivation ∧ P.signalCascade ∧ P.amplification ∧ P.responseSpecificity

theorem signal_transduction_closed_from_evidence (P : SignalTransductionPackage)
    (E : SignalTransductionEvidence P) : SignalTransductionClosed P := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.signalCascadeClosed
      (And.intro E.amplificationClosed E.responseSpecificityClosed))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse
