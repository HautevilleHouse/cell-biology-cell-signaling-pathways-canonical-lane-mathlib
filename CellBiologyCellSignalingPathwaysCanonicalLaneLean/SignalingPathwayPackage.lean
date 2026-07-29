import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysCanonicalLaneLean

structure SignalingReceptorPackage where
  receptorType : Type u
  ligandBindingSite : Type v
  transmembraneDomain : Prop
  extracellularDomain : Prop
  intracellularDomain : Prop
  signalInitiation : Prop
  signalTermination : Prop

structure SignalingReceptorEvidence (R : SignalingReceptorPackage) where
  transmembraneDomainClosed : R.transmembraneDomain
  extracellularDomainClosed : R.extracellularDomain
  intracellularDomainClosed : R.intracellularDomain
  signalInitiationClosed : R.signalInitiation
  signalTerminationClosed : R.signalTermination

def SignalingReceptorClosed (R : SignalingReceptorPackage) : Prop :=
  R.transmembraneDomain ∧ R.extracellularDomain ∧ R.intracellularDomain ∧ R.signalInitiation ∧ R.signalTermination

theorem signaling_receptor_closed_from_evidence (R : SignalingReceptorPackage) (E : SignalingReceptorEvidence R) :
    SignalingReceptorClosed R :=
  And.intro E.transmembraneDomainClosed (And.intro E.extracellularDomainClosed (And.intro E.intracellularDomainClosed (And.intro E.signalInitiationClosed E.signalTerminationClosed)))

end CellBiologyCellSignalingPathwaysCanonicalLaneLean
end HautevilleHouse
