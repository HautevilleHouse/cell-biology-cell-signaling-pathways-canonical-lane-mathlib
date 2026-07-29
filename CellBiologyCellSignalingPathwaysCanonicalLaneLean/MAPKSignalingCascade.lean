import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.ReceptorTyrosineKinaseSignaling

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure MAPKSignalingPackage {R : ReceptorTyrosineKinasePackage} where
  rasActivation : Prop
  rafKinase : Prop
  mekKinase : Prop
  erkKinase : Prop
  downstreamTranscriptionalResponse : Prop

structure MAPKSignalingEvidence {R : ReceptorTyrosineKinasePackage}
    (M : MAPKSignalingPackage R) where
  rasActivationClosed : M.rasActivation
  rafKinaseClosed : M.rafKinase
  mekKinaseClosed : M.mekKinase
  erkKinaseClosed : M.erkKinase
  downstreamTranscriptionalResponseClosed : M.downstreamTranscriptionalResponse

def MAPKSignalingClosed {R : ReceptorTyrosineKinasePackage} (M : MAPKSignalingPackage R) : Prop :=
  M.rasActivation ∧ M.rafKinase ∧ M.mekKinase ∧ M.erkKinase ∧ M.downstreamTranscriptionalResponse

theorem mapk_signaling_closed_from_evidence {R : ReceptorTyrosineKinasePackage}
    (M : MAPKSignalingPackage R) (E : MAPKSignalingEvidence M) : MAPKSignalingClosed M := by
  exact And.intro E.rasActivationClosed (And.intro E.rafKinaseClosed (And.intro E.mekKinaseClosed (And.intro E.erkKinaseClosed E.downstreamTranscriptionalResponseClosed)))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse