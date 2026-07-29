import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure MartinLofTest (U : ℕ → ℕ → Set (ℕ → ℕ)) where
  uniformlyEnumerable : Prop
  measureCondition : ∀ n, μ (U n) ≤ 2⁻ⁿ
  term : uniformlyEnumerable ∧ measureCondition

structure MartinLofRandom (x : ℕ → ℕ) where
  notCovered : ∀ (U : MartinLofTest), x ∉ ⋃ n, U n
  term : notCovered

def μ (S : Set (ℕ → ℕ)) : ℝ := 0 -- placeholder

structure KolmogorovComplexity (x : ℕ → ℕ) where
  prefixFreeComplexity : ℕ
  complexityBound : prefixFreeComplexity ≤ 2 * length x
  term : complexityBound

structure AlgorithmicRandomnessClosed (x : ℕ → ℕ) : Prop :=
  MartinLofRandom x ∧ KolmogorovComplexity x

theorem algorithmic_randomness_closed_from_evidence (x : ℕ → ℕ) (M : MartinLofRandom x) (K : KolmogorovComplexity x) : AlgorithmicRandomnessClosed x := by
  exact And.intro M K

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse