import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.SignalTransductionPackage

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure GeneExpressionPackage {G : SignalingFoundation}
    {F : ReceptorBindingPackage G} {S : SignalTransductionPackage F} where
  transcriptionFactor : Prop
  promoterBinding : Prop
  geneActivation : Prop
  mrnaProduction : Prop

structure GeneExpressionEvidence {G : SignalingFoundation}
    {F : ReceptorBindingPackage G} {S : SignalTransductionPackage F}
    (E : GeneExpressionPackage S) where
  transcriptionFactorClosed : E.transcriptionFactor
  promoterBindingClosed : E.promoterBinding
  geneActivationClosed : E.geneActivation
  mrnaProductionClosed : E.mrnaProduction

def GeneExpressionClosed {G : SignalingFoundation}
    {F : ReceptorBindingPackage G} {S : SignalTransductionPackage F}
    (E : GeneExpressionPackage S) : Prop :=
  E.transcriptionFactor ∧ E.promoterBinding ∧ E.geneActivation ∧ E.mrnaProduction

theorem gene_expression_closed_from_evidence
    {G : SignalingFoundation} {F : ReceptorBindingPackage G}
    {S : SignalTransductionPackage F} (E : GeneExpressionPackage S)
    (Ev : GeneExpressionEvidence E) : GeneExpressionClosed E := by
  exact And.intro Ev.transcriptionFactorClosed
    (And.intro Ev.promoterBindingClosed
      (And.intro Ev.geneActivationClosed Ev.mrnaProductionClosed))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse