import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure KinaseCascade where
  upstreamKinase : Type
  intermediateKinase : Type
  downstreamKinase : Type
  signalAmplification : Prop
  specificity : Prop

structure KinaseCascadeEvidence (C : KinaseCascade) where
  upstreamKinaseClosed : Type = C.upstreamKinase
  intermediateKinaseClosed : Type = C.intermediateKinase
  downstreamKinaseClosed : Type = C.downstreamKinase
  signalAmplificationClosed : C.signalAmplification
  specificityClosed : C.specificity

def KinaseCascadeClosed (C : KinaseCascade) : Prop :=
  C.signalAmplification ∧ C.specificity

theorem kinase_cascade_closed_from_evidence (C : KinaseCascade)
    (E : KinaseCascadeEvidence C) : KinaseCascadeClosed C := by
  exact And.intro E.signalAmplificationClosed E.specificityClosed

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse
