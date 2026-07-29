import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure SecondMessengerPackage where
  campProduction : Prop
  ip3Production : Prop
  calciumRelease : Prop
  dagActivation : Prop
  pkaActivation : Prop
  pkcActivation : Prop

structure SecondMessengerEvidence (S : SecondMessengerPackage) where
  campProductionClosed : S.campProduction
  ip3ProductionClosed : S.ip3Production
  calciumReleaseClosed : S.calciumRelease
  dagActivationClosed : S.dagActivation
  pkaActivationClosed : S.pkaActivation
  pkcActivationClosed : S.pkcActivation

def SecondMessengerClosed (S : SecondMessengerPackage) : Prop :=
  S.campProduction ∧ S.ip3Production ∧ S.calciumRelease ∧ S.dagActivation ∧ S.pkaActivation ∧ S.pkcActivation

theorem second_messenger_closed_from_evidence (S : SecondMessengerPackage) (E : SecondMessengerEvidence S) :
    SecondMessengerClosed S := by
  exact And.intro E.campProductionClosed (And.intro E.ip3ProductionClosed (And.intro E.calciumReleaseClosed (And.intro E.dagActivationClosed (And.intro E.pkaActivationClosed E.pkcActivationClosed))))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse