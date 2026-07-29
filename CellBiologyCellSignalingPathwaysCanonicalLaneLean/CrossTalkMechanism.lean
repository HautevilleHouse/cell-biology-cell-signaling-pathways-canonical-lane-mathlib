import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure CrossTalk where
  pathwayA : Type u
  pathwayB : Type v
  convergencePoint : Prop
  signalIntegration : Prop
  outputSpecificity : Prop

structure CrossTalkEvidence (C : CrossTalk) where
  convergencePointClosed : C.convergencePoint
  signalIntegrationClosed : C.signalIntegration
  outputSpecificityClosed : C.outputSpecificity

def CrossTalkClosed (C : CrossTalk) : Prop :=
  C.convergencePoint ∧ C.signalIntegration ∧ C.outputSpecificity

theorem cross_talk_closed_from_evidence (C : CrossTalk) (E : CrossTalkEvidence C) : CrossTalkClosed C := by
  exact And.intro E.convergencePointClosed (And.intro E.signalIntegrationClosed E.outputSpecificityClosed)

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse