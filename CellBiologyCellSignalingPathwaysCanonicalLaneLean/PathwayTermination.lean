import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure PathwayTerminationPackage where
  phosphatase : String
  dephosphorylationTarget : String
  feedbackLoop : Bool
  signalDuration : Nat

deriving Repr, DecidableEq

structure PathwayTerminationEvidence (T : PathwayTerminationPackage) where
  phosphatasePresent : T.phosphatase ≠ ""
  dephosphorylationOccurred : T.dephosphorylationTarget ≠ ""
  signalTerminated : T.signalDuration < 100

def PathwayTerminationClosed (T : PathwayTerminationPackage) : Prop :=
  T.phosphatase ≠ "" ∧ T.dephosphorylationTarget ≠ "" ∧ T.signalDuration < 100

theorem pathway_termination_closed_from_evidence (T : PathwayTerminationPackage)
    (E : PathwayTerminationEvidence T) : PathwayTerminationClosed T := by
  exact And.intro E.phosphatasePresent (And.intro E.dephosphorylationOccurred E.signalTerminated)

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse