import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.GeneExpressionResponse

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure CellFateDecisionPackage {A : AdmissibleCellSignalingClass} {R : ReceptorLigandBindingPackage A} {C : SignalTransductionCascadePackage A R} {G : GeneExpressionResponsePackage A R C} where
  apoptosisInduction : Prop
  proliferationTrigger : Prop
  differentiationProgram : Prop
  survivalOutput : Prop
  cellFateDeterminationSatisfied : Prop

structure CellFateDecisionEvidence {A : AdmissibleCellSignalingClass} {R : ReceptorLigandBindingPackage A} {C : SignalTransductionCascadePackage A R} {G : GeneExpressionResponsePackage A R C} (F : CellFateDecisionPackage A R C G) where
  apoptosisInductionClosed : F.apoptosisInduction
  proliferationTriggerClosed : F.proliferationTrigger
  differentiationProgramClosed : F.differentiationProgram
  survivalOutputClosed : F.survivalOutput
  cellFateDeterminationSatisfiedClosed : F.cellFateDeterminationSatisfied

def CellFateDecisionClosed {A : AdmissibleCellSignalingClass} {R : ReceptorLigandBindingPackage A} {C : SignalTransductionCascadePackage A R} {G : GeneExpressionResponsePackage A R C} (F : CellFateDecisionPackage A R C G) : Prop :=
  F.apoptosisInduction ∧ F.proliferationTrigger ∧ F.differentiationProgram ∧ F.survivalOutput ∧ F.cellFateDeterminationSatisfied

theorem cell_fate_decision_closed_from_evidence (A : AdmissibleCellSignalingClass) (R : ReceptorLigandBindingPackage A) (C : SignalTransductionCascadePackage A R) (G : GeneExpressionResponsePackage A R C) (F : CellFateDecisionPackage A R C G) (E : CellFateDecisionEvidence F) :
    CellFateDecisionClosed F := by
  exact And.intro E.apoptosisInductionClosed (And.intro E.proliferationTriggerClosed (And.intro E.differentiationProgramClosed (And.intro E.survivalOutputClosed E.cellFateDeterminationSatisfiedClosed)))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse