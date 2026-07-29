import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure FeedbackRegulation where
  pathway : Type u
  positiveFeedback : Prop
  negativeFeedback : Prop
  homeostaticControl : Prop
  adaptation : Prop
  thresholdResponse : Prop

structure FeedbackEvidence (F : FeedbackRegulation) where
  positiveFeedbackClosed : F.positiveFeedback
  negativeFeedbackClosed : F.negativeFeedback
  homeostaticControlClosed : F.homeostaticControl
  adaptationClosed : F.adaptation
  thresholdResponseClosed : F.thresholdResponse

def FeedbackClosed (F : FeedbackRegulation) : Prop :=
  F.positiveFeedback ∧ F.negativeFeedback ∧ F.homeostaticControl ∧ F.adaptation ∧ F.thresholdResponse

theorem feedback_closed_from_evidence (F : FeedbackRegulation) (E : FeedbackEvidence F) : FeedbackClosed F := by
  exact And.intro E.positiveFeedbackClosed (And.intro E.negativeFeedbackClosed (And.intro E.homeostaticControlClosed (And.intro E.adaptationClosed E.thresholdResponseClosed)))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse