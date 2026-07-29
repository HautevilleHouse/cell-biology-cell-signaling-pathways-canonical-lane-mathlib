import CellBiologyCellSignalingPathwaysCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SignalPathwayClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.closed

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse