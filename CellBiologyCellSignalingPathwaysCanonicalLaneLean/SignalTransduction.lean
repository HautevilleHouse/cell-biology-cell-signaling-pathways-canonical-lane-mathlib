import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure LigandReceptorPackage where
  ligandConcentration : Type u
  receptorAffinity : Type v
  bindingUnbindingRates : Prop
  signalInitiation : Prop

structure LigandReceptorEvidence (L : LigandReceptorPackage) where
  bindingUnbindingRatesClosed : L.bindingUnbindingRates
  signalInitiationClosed : L.signalInitiation

def LigandReceptorClosed (L : LigandReceptorPackage) : Prop :=
  L.bindingUnbindingRates ∧ L.signalInitiation

theorem ligand_receptor_closed_from_evidence (L : LigandReceptorPackage) (E : LigandReceptorEvidence L) :
    LigandReceptorClosed L := by
  exact And.intro E.bindingUnbindingRatesClosed E.signalInitiationClosed

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse