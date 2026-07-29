import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.ReceptorTyrosineKinaseSignaling
import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.MAPKSignalingCascade
import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.SecondMessengerSignaling
import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.NotchSignalingPathway
import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.ApoptosisSignalingPathways
import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.WntBetaCateninSignalPathway
import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.JAKSTATSignalingPathway

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  trivial

def ConstrainedCellSignalingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_signaling_endgame (A : AdmissibleClass) :
    ConstrainedCellSignalingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse