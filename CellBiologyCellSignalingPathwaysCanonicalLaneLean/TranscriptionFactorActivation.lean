import CellBiologyCellSignalingPathwaysCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure TranscriptionFactorActivationPackage where
  nuclearTranslocation : Prop
  dnaBinding : Prop
  geneExpression : Prop
  temporalDynamics : Prop

structure TranscriptionFactorActivationEvidence (T : TranscriptionFactorActivationPackage) where
  nuclearTranslocationClosed : T.nuclearTranslocation
  dnaBindingClosed : T.dnaBinding
  geneExpressionClosed : T.geneExpression
  temporalDynamicsClosed : T.temporalDynamics

def TranscriptionFactorActivationClosed (T : TranscriptionFactorActivationPackage) : Prop :=
  T.nuclearTranslocation ∧ T.dnaBinding ∧ T.geneExpression ∧ T.temporalDynamics

theorem transcription_factor_activation_closed_from_evidence
    (T : TranscriptionFactorActivationPackage)
    (E : TranscriptionFactorActivationEvidence T) :
    TranscriptionFactorActivationClosed T := by
  exact And.intro E.nuclearTranslocationClosed
    (And.intro E.dnaBindingClosed
      (And.intro E.geneExpressionClosed E.temporalDynamicsClosed))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse
