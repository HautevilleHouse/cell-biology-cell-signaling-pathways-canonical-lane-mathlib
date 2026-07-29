import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure SecondMessengerDiffusion where
  messenger : Type u
  concentrationGradient : Prop
  diffusionCoefficient : Prop
  receptorActivation : Prop
  spatialPropagation : Prop
  signalAmplification : Prop

structure DiffusionEvidence (D : SecondMessengerDiffusion) where
  concentrationGradientClosed : D.concentrationGradient
  diffusionCoefficientClosed : D.diffusionCoefficient
  receptorActivationClosed : D.receptorActivation
  spatialPropagationClosed : D.spatialPropagation
  signalAmplificationClosed : D.signalAmplification

def DiffusionClosed (D : SecondMessengerDiffusion) : Prop :=
  D.concentrationGradient ∧ D.diffusionCoefficient ∧ D.receptorActivation ∧ D.spatialPropagation ∧ D.signalAmplification

theorem diffusion_closed_from_evidence (D : SecondMessengerDiffusion) (E : DiffusionEvidence D) : DiffusionClosed D := by
  exact And.intro E.concentrationGradientClosed (And.intro E.diffusionCoefficientClosed (And.intro E.receptorActivationClosed (And.intro E.spatialPropagationClosed E.signalAmplificationClosed)))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse