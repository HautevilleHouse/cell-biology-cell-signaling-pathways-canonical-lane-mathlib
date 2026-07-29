import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure KinaseCascadePackage where
  kinaseType : Type u
  phosphorylationSite : Type v
  activationLoop : Prop
  kinaseDomain : Prop
  substrateBinding : Prop
  downstreamTarget : Prop
  signalAmplification : Prop

structure KinaseCascadeEvidence (K : KinaseCascadePackage) where
  activationLoopClosed : K.activationLoop
  kinaseDomainClosed : K.kinaseDomain
  substrateBindingClosed : K.substrateBinding
  downstreamTargetClosed : K.downstreamTarget
  signalAmplificationClosed : K.signalAmplification

def KinaseCascadeClosed (K : KinaseCascadePackage) : Prop :=
  K.activationLoop ∧ K.kinaseDomain ∧ K.substrateBinding ∧ K.downstreamTarget ∧ K.signalAmplification

theorem kinase_cascade_closed_from_evidence (K : KinaseCascadePackage) (E : KinaseCascadeEvidence K) :
    KinaseCascadeClosed K :=
  And.intro E.activationLoopClosed (And.intro E.kinaseDomainClosed (And.intro E.substrateBindingClosed (And.intro E.downstreamTargetClosed E.signalAmplificationClosed)))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse
