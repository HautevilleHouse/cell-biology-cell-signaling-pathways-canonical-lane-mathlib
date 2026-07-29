import CellBiologyCellSignalingPathwaysCanonicalLaneLean.SignalTransductionCascade

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure GeneExpressionRegulationPackage {R : ReceptorLigandBindingPackage} {C : SignalTransductionCascadePackage R} where
  transcriptionFactorActivation : Prop
  genePromoterBinding : Prop
  mrnaSynthesis : Prop
  regulationClosed : Prop

structure GeneExpressionRegulationEvidence {R : ReceptorLigandBindingPackage} {C : SignalTransductionCascadePackage R} (G : GeneExpressionRegulationPackage C) where
  transcriptionFactorActivationClosed : G.transcriptionFactorActivation
  genePromoterBindingClosed : G.genePromoterBinding
  mrnaSynthesisClosed : G.mrnaSynthesis
  regulationClosedClosed : G.regulationClosed

def GeneExpressionRegulationClosed {R : ReceptorLigandBindingPackage} {C : SignalTransductionCascadePackage R} (G : GeneExpressionRegulationPackage C) : Prop :=
  G.transcriptionFactorActivation ∧ G.genePromoterBinding ∧ G.mrnaSynthesis ∧ G.regulationClosed

theorem gene_expression_regulation_closed_from_evidence {R : ReceptorLigandBindingPackage} {C : SignalTransductionCascadePackage R} (G : GeneExpressionRegulationPackage C) (E : GeneExpressionRegulationEvidence G) : GeneExpressionRegulationClosed G := by
  exact And.intro E.transcriptionFactorActivationClosed (And.intro E.genePromoterBindingClosed (And.intro E.mrnaSynthesisClosed E.regulationClosedClosed))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse