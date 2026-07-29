import CellBiologyCellSignalingPathwaysCanonicalLaneLean.SignalTransductionPathway

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure CellResponsePackage (P : SignalTransductionPackage) where
  cellularOutput : Type
  outputMeasurable : Prop
  outputMatchesSignal : Prop
  responseDuration : Prop

structure CellResponseEvidence (P : SignalTransductionPackage)
    (R : CellResponsePackage P) where
  outputMeasurableClosed : R.outputMeasurable
  outputMatchesSignalClosed : R.outputMatchesSignal
  responseDurationClosed : R.responseDuration

def CellResponseClosed (P : SignalTransductionPackage)
    (R : CellResponsePackage P) : Prop :=
  R.outputMeasurable ∧ R.outputMatchesSignal ∧ R.responseDuration

theorem cell_response_closed_from_evidence (P : SignalTransductionPackage)
    (R : CellResponsePackage P) (E : CellResponseEvidence P R) :
    CellResponseClosed P R := by
  exact And.intro E.outputMeasurableClosed
    (And.intro E.outputMatchesSignalClosed E.responseDurationClosed)

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse
