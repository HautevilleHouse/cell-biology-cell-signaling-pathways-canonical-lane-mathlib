import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure CellSignalingAdmittedObject where
  pathwayModel : Type
  signalingMolecule : Type
  receptorActivation : Prop
  downstreamCascade : Prop
  conclusion : receptorActivation ∧ downstreamCascade

structure AdmissibleClass where
  object : CellSignalingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def cellSignalingWitnessClosed (O : CellSignalingAdmittedObject) : Prop :=
  O.conclusion

def admittedClosure (A : AdmissibleClass) : Prop :=
  cellSignalingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse