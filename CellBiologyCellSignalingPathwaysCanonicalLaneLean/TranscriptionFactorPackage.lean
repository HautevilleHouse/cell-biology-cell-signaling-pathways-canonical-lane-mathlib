import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure TranscriptionFactorPackage where
  factorType : Type u
  dnaBindingDomain : Prop
  nuclearLocalizationSignal : Prop
  transcriptionalActivationDomain : Prop
  targetGeneSet : Type v
  geneExpressionRegulation : Prop

structure TranscriptionFactorEvidence (T : TranscriptionFactorPackage) where
  dnaBindingDomainClosed : T.dnaBindingDomain
  nuclearLocalizationSignalClosed : T.nuclearLocalizationSignal
  transcriptionalActivationDomainClosed : T.transcriptionalActivationDomain
  geneExpressionRegulationClosed : T.geneExpressionRegulation

def TranscriptionFactorClosed (T : TranscriptionFactorPackage) : Prop :=
  T.dnaBindingDomain ∧ T.nuclearLocalizationSignal ∧ T.transcriptionalActivationDomain ∧ T.geneExpressionRegulation

theorem transcription_factor_closed_from_evidence (T : TranscriptionFactorPackage) (E : TranscriptionFactorEvidence T) :
    TranscriptionFactorClosed T :=
  And.intro E.dnaBindingDomainClosed (And.intro E.nuclearLocalizationSignalClosed (And.intro E.transcriptionalActivationDomainClosed E.geneExpressionRegulationClosed))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse
