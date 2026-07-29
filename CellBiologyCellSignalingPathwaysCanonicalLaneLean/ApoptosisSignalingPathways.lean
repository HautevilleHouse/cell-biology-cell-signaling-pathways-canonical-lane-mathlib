import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure ApoptosisSignalingPackage where
  extrinsicPathway : Prop
  intrinsicPathway : Prop
  caspaseActivation : Prop
  mitochondrialOuterMembranePermeabilization : Prop
  dnaFragmentation : Prop

structure ApoptosisSignalingEvidence (A : ApoptosisSignalingPackage) where
  extrinsicPathwayClosed : A.extrinsicPathway
  intrinsicPathwayClosed : A.intrinsicPathway
  caspaseActivationClosed : A.caspaseActivation
  mitochondrialOuterMembranePermeabilizationClosed : A.mitochondrialOuterMembranePermeabilization
  dnaFragmentationClosed : A.dnaFragmentation

def ApoptosisSignalingClosed (A : ApoptosisSignalingPackage) : Prop :=
  A.extrinsicPathway ∧ A.intrinsicPathway ∧ A.caspaseActivation ∧ A.mitochondrialOuterMembranePermeabilization ∧ A.dnaFragmentation

theorem apoptosis_signaling_closed_from_evidence (A : ApoptosisSignalingPackage) (E : ApoptosisSignalingEvidence A) :
    ApoptosisSignalingClosed A := by
  exact And.intro E.extrinsicPathwayClosed (And.intro E.intrinsicPathwayClosed (And.intro E.caspaseActivationClosed (And.intro E.mitochondrialOuterMembranePermeabilizationClosed E.dnaFragmentationClosed)))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse