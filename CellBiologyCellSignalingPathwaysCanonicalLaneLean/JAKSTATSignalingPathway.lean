import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure JAKSTATSignalingPackage where
  cytokineReceptorBinding : Prop
  jakActivation : Prop
  statRecruitment : Prop
  statDimerization : Prop
  nuclearTranslocation : Prop
  geneExpressionRegulation : Prop

structure JAKSTATSignalingEvidence (J : JAKSTATSignalingPackage) where
  cytokineReceptorBindingClosed : J.cytokineReceptorBinding
  jakActivationClosed : J.jakActivation
  statRecruitmentClosed : J.statRecruitment
  statDimerizationClosed : J.statDimerization
  nuclearTranslocationClosed : J.nuclearTranslocation
  geneExpressionRegulationClosed : J.geneExpressionRegulation

def JAKSTATSignalingClosed (J : JAKSTATSignalingPackage) : Prop :=
  J.cytokineReceptorBinding ∧ J.jakActivation ∧ J.statRecruitment ∧ J.statDimerization ∧ J.nuclearTranslocation ∧ J.geneExpressionRegulation

theorem jak_stat_signaling_closed_from_evidence (J : JAKSTATSignalingPackage) (E : JAKSTATSignalingEvidence J) :
    JAKSTATSignalingClosed J := by
  exact And.intro E.cytokineReceptorBindingClosed (And.intro E.jakActivationClosed (And.intro E.statRecruitmentClosed (And.intro E.statDimerizationClosed (And.intro E.nuclearTranslocationClosed E.geneExpressionRegulationClosed))))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse