import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure SecondMessengerPackage where
  messengerMolecule : Type u
  concentrationDynamics : Prop
  downstreamTargets : Prop
  signalAmplification : Prop

structure SecondMessengerEvidence (S : SecondMessengerPackage) where
  concentrationDynamicsClosed : S.concentrationDynamics
  downstreamTargetsClosed : S.downstreamTargets
  signalAmplificationClosed : S.signalAmplification

def SecondMessengerClosed (S : SecondMessengerPackage) : Prop :=
  S.concentrationDynamics ∧ S.downstreamTargets ∧ S.signalAmplification

theorem second_messenger_closed_from_evidence (S : SecondMessengerPackage) (E : SecondMessengerEvidence S) :
    SecondMessengerClosed S := by
  exact And.intro E.concentrationDynamicsClosed (And.intro E.downstreamTargetsClosed E.signalAmplificationClosed)

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse