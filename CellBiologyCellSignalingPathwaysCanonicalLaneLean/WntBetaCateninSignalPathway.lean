import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure WntBetaCateninSignalingPackage where
  wntLigandBinding : Prop
  dishevelledActivation : Prop
  gsk3BetaInhibition : Prop
  betaCateninStabilization : Prop
  tcfLefTranscriptionalActivation : Prop

structure WntBetaCateninSignalingEvidence (W : WntBetaCateninSignalingPackage) where
  wntLigandBindingClosed : W.wntLigandBinding
  dishevelledActivationClosed : W.dishevelledActivation
  gsk3BetaInhibitionClosed : W.gsk3BetaInhibition
  betaCateninStabilizationClosed : W.betaCateninStabilization
  tcfLefTranscriptionalActivationClosed : W.tcfLefTranscriptionalActivation

def WntBetaCateninSignalingClosed (W : WntBetaCateninSignalingPackage) : Prop :=
  W.wntLigandBinding ∧ W.dishevelledActivation ∧ W.gsk3BetaInhibition ∧ W.betaCateninStabilization ∧ W.tcfLefTranscriptionalActivation

theorem wnt_beta_catenin_signaling_closed_from_evidence (W : WntBetaCateninSignalingPackage) (E : WntBetaCateninSignalingEvidence W) :
    WntBetaCateninSignalingClosed W := by
  exact And.intro E.wntLigandBindingClosed (And.intro E.dishevelledActivationClosed (And.intro E.gsk3BetaInhibitionClosed (And.intro E.betaCateninStabilizationClosed E.tcfLefTranscriptionalActivationClosed)))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse