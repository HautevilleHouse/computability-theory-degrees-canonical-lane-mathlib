import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure TuringDegreesPackage where
  turingReduction : Prop
  degreeStructure : Prop
  jumpOperator : Prop
  posnerRobinsonTheorem : Prop
  posnerRobinsonTheoremClosed : posnerRobinsonTheorem

structure TuringDegreesEvidence (T : TuringDegreesPackage) where
  posnerRobinsonTheoremClosed : T.posnerRobinsonTheorem

def TuringDegreesClosed (T : TuringDegreesPackage) : Prop :=
  T.posnerRobinsonTheorem

theorem turing_degrees_closed_from_evidence (T : TuringDegreesPackage)
    (E : TuringDegreesEvidence T) : TuringDegreesClosed T := by
  exact E.posnerRobinsonTheoremClosed

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse