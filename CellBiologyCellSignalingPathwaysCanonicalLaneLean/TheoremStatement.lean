import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellSignalingPathwaysCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "cell-biology-cell-signaling-pathways",
  theoremName := "Cell Biology Cell Signaling Pathways",
  theoremObject := "Signal transduction cascade",
  classicalBoundary := "Classical boundary remains open",
  manifoldConstrainedStatement := "Signaling network constrained via bridge and gate",
  certificateLane := "signaling_constrained",
  carriedRemainder := "The unrestricted classical closure remains carried"
}

theorem theorem_statement_defined : sourceTheoremStatement.sourceKey = "cell-biology-cell-signaling-pathways" := by
  rfl

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse