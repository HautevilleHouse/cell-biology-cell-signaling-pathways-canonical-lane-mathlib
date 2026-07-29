import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure Cell where
  cellType : String
  state : String

deriving Repr, DecidableEq

structure Receptor where
  receptorType : String
  ligandSpecificity : String
  activationState : Bool

deriving Repr, DecidableEq

structure Ligand where
  ligandType : String
  concentration : Nat

deriving Repr, DecidableEq

structure SignalTransductionNetwork where
  receptors : List Receptor
  ligands : List Ligand
  intracellularComponents : List String

deriving Repr, DecidableEq

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse