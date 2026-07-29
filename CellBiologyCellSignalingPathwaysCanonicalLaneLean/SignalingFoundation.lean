import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.GeneExpressionPackage

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure SignalingFoundation where
  receptor : ReceptorBindingPackage ?
  transduction : SignalTransductionPackage receptor
  expression : GeneExpressionPackage transduction
  receptorEvidence : ReceptorBindingEvidence receptor
  transductionEvidence : SignalTransductionEvidence transduction
  expressionEvidence : GeneExpressionEvidence expression

def SignalingFoundationClosed (G : SignalingFoundation) : Prop :=
  ReceptorBindingClosed G.receptor ∧ SignalTransductionClosed G.transduction ∧ GeneExpressionClosed G.expression

theorem signaling_foundation_closed_from_evidence (G : SignalingFoundation) :
    SignalingFoundationClosed G := by
  exact And.intro (receptor_binding_closed_from_evidence G.receptor G.receptorEvidence)
    (And.intro (signal_transduction_closed_from_evidence G.transduction G.transductionEvidence)
      (gene_expression_closed_from_evidence G.expression G.expressionEvidence))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse