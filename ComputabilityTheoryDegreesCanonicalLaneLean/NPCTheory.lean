import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure NPCompletenessPackage where
  polynomialTimeReduction : Prop
  satIsNPComplete : Prop
  cookLevinTheorem : Prop
  npHardnessDefinition : Prop

structure NPCompletenessEvidence (N : NPCompletenessPackage) where
  polynomialTimeReductionClosed : N.polynomialTimeReduction
  satIsNPCompleteClosed : N.satIsNPComplete
  cookLevinTheoremClosed : N.cookLevinTheorem
  npHardnessDefinitionClosed : N.npHardnessDefinition

def NPCompletenessClosed (N : NPCompletenessPackage) : Prop :=
  N.polynomialTimeReduction ∧ N.satIsNPComplete ∧ N.cookLevinTheorem ∧ N.npHardnessDefinition

theorem np_completeness_closed_from_evidence (N : NPCompletenessPackage)
    (E : NPCompletenessEvidence N) : NPCompletenessClosed N := by
  exact And.intro E.polynomialTimeReductionClosed
    (And.intro E.satIsNPCompleteClosed (And.intro E.cookLevinTheoremClosed E.npHardnessDefinitionClosed))

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse
