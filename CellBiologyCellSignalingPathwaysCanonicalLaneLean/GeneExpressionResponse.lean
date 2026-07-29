import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.SignalTransductionCascade

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure GeneExpressionResponsePackage {A : AdmissibleCellSignalingClass} {R : ReceptorLigandBindingPackage A} {C : SignalTransductionCascadePackage A R} where
  transcriptionFactor : Type u
  dnaBinding : Prop
  geneActivation : Prop
  transcriptionalReprogramming : Prop
  rnaPolymeraseRecruitment : Prop
  transcriptionActiveSatisfied : Prop

structure GeneExpressionResponseEvidence {A : AdmissibleCellSignalingClass} {R : ReceptorLigandBindingPackage A} {C : SignalTransductionCascadePackage A R} (G : GeneExpressionResponsePackage A R C) where
  dnaBindingClosed : G.dnaBinding
  geneActivationClosed : G.geneActivation
  transcriptionalReprogrammingClosed : G.transcriptionalReprogramming
  rnaPolymeraseRecruitmentClosed : G.rnaPolymeraseRecruitment
  transcriptionActiveSatisfiedClosed : G.transcriptionActiveSatisfied

def GeneExpressionResponseClosed {A : AdmissibleCellSignalingClass} {R : ReceptorLigandBindingPackage A} {C : SignalTransductionCascadePackage A R} (G : GeneExpressionResponsePackage A R C) : Prop :=
  G.dnaBinding ∧ G.geneActivation ∧ G.transcriptionalReprogramming ∧ G.rnaPolymeraseRecruitment ∧ G.transcriptionActiveSatisfied

theorem gene_expression_response_closed_from_evidence (A : AdmissibleCellSignalingClass) (R : ReceptorLigandBindingPackage A) (C : SignalTransductionCascadePackage A R) (G : GeneExpressionResponsePackage A R C) (E : GeneExpressionResponseEvidence G) :
    GeneExpressionResponseClosed G := by
  exact And.intro E.dnaBindingClosed (And.intro E.geneActivationClosed (And.intro E.transcriptionalReprogrammingClosed (And.intro E.rnaPolymeraseRecruitmentClosed E.transcriptionActiveSatisfiedClosed)))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse