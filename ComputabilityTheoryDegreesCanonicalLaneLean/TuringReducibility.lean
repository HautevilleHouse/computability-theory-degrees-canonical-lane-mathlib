import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure TuringReducibilityPackage where
  oracleMachine : Type
  relativeComputation : Prop
  reductionFunction : Prop
  degreeComparison : Prop

structure TuringReducibilityEvidence (T : TuringReducibilityPackage) where
  relativeComputationClosed : T.relativeComputation
  reductionFunctionClosed : T.reductionFunction
  degreeComparisonClosed : T.degreeComparison

def TuringReducibilityClosed (T : TuringReducibilityPackage) : Prop :=
  T.relativeComputation ∧ T.reductionFunction ∧ T.degreeComparison

theorem turing_reducibility_closed_from_evidence (T : TuringReducibilityPackage)
    (E : TuringReducibilityEvidence T) : TuringReducibilityClosed T := by
  exact And.intro E.relativeComputationClosed
    (And.intro E.reductionFunctionClosed E.degreeComparisonClosed)

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse