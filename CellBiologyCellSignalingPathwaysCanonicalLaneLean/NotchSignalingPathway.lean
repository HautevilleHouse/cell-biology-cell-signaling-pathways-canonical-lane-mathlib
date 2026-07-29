import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure NotchSignalingPackage where
  deltaLigand : Type u
  notchReceptor : Type v
  s2Cleavage : Prop
  s3Cleavage : Prop
  ncidTranslocation : Prop
  transcriptionalRepressionRelease : Prop

structure NotchSignalingEvidence (N : NotchSignalingPackage) where
  s2CleavageClosed : N.s2Cleavage
  s3CleavageClosed : N.s3Cleavage
  ncidTranslocationClosed : N.ncidTranslocation
  transcriptionalRepressionReleaseClosed : N.transcriptionalRepressionRelease

def NotchSignalingClosed (N : NotchSignalingPackage) : Prop :=
  N.s2Cleavage ∧ N.s3Cleavage ∧ N.ncidTranslocation ∧ N.transcriptionalRepressionRelease

theorem notch_signaling_closed_from_evidence (N : NotchSignalingPackage) (E : NotchSignalingEvidence N) :
    NotchSignalingClosed N := by
  exact And.intro E.s2CleavageClosed (And.intro E.s3CleavageClosed (And.intro E.ncidTranslocationClosed E.transcriptionalRepressionReleaseClosed))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse