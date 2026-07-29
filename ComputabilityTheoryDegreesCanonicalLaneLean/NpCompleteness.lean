import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure DecisionProblem where
  inputType : Type
  query : inputType → Prop
  instance : inputType

structure PolynomialTimeReduction (A B : DecisionProblem) where
  f : A.inputType → B.inputType
  polynomialBound : ℕ → ℕ
  correctness : ∀ x : A.inputType, A.query x ↔ B.query (f x)
  timeBound : polynomialBound (0) = 0

structure NPComplete (A : DecisionProblem) where
  inNP : Prop
  npHard : ∀ (B : DecisionProblem), B.inNP → PolynomialTimeReduction B A
  inNPTerm : inNP
  npHardTerm : ∀ (B : DecisionProblem) (h : B.inNP), PolynomialTimeReduction B A

def NPCompletenessClosed (A : DecisionProblem) : Prop :=
  ∃ (cert : NPComplete A), cert.inNP ∧ (∀ (B : DecisionProblem), B.inNP → Nonempty (PolynomialTimeReduction B A))

theorem np_completeness_closed_from_evidence (A : DecisionProblem) (cert : NPComplete A) : NPCompletenessClosed A := by
  refine ⟨cert, cert.inNPTerm, λ B hB => ?_⟩
  exact ⟨cert.npHardTerm B hB⟩

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse