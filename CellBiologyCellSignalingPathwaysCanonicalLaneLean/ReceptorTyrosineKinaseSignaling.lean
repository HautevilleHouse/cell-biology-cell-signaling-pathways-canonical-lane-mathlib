import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure ReceptorTyrosineKinasePackage where
  ligand : Type u
  receptor : Type v
  dimerization : Prop
  kinaseActivity : Prop
  phosphorylationSites : List String
  signalTransduction : Prop

structure ReceptorTyrosineKinaseEvidence (R : ReceptorTyrosineKinasePackage) where
  dimerizationClosed : R.dimerization
  kinaseActivityClosed : R.kinaseActivity
  signalTransductionClosed : R.signalTransduction

def ReceptorTyrosineKinaseClosed (R : ReceptorTyrosineKinasePackage) : Prop :=
  R.dimerization ∧ R.kinaseActivity ∧ R.signalTransduction

theorem receptor_tyrosine_kinase_closed_from_evidence (R : ReceptorTyrosineKinasePackage)
    (E : ReceptorTyrosineKinaseEvidence R) : ReceptorTyrosineKinaseClosed R := by
  exact And.intro E.dimerizationClosed (And.intro E.kinaseActivityClosed E.signalTransductionClosed)

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse