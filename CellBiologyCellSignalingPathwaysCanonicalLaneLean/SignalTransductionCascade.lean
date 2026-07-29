import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure SignalCascade where
  initialSignal : Prop
  intermediateKinases : Prop
  phosphorylationEvents : Prop
  transcriptionFactorActivation : Prop
  geneExpression : Prop

structure CascadeEvidence (C : SignalCascade) where
  initialSignalClosed : C.initialSignal
  intermediateKinasesClosed : C.intermediateKinases
  phosphorylationEventsClosed : C.phosphorylationEvents
  transcriptionFactorActivationClosed : C.transcriptionFactorActivation
  geneExpressionClosed : C.geneExpression

def CascadeClosed (C : SignalCascade) : Prop :=
  C.initialSignal ∧ C.intermediateKinases ∧ C.phosphorylationEvents ∧ C.transcriptionFactorActivation ∧ C.geneExpression

theorem cascade_closed_from_evidence (C : SignalCascade) (E : CascadeEvidence C) : CascadeClosed C := by
  exact And.intro E.initialSignalClosed (And.intro E.intermediateKinasesClosed (And.intro E.phosphorylationEventsClosed (And.intro E.transcriptionFactorActivationClosed E.geneExpressionClosed)))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse