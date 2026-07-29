import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure TuringReduction (A B : ℕ → ℕ) where
  oracleMachine : ℕ
  computesAFromB : ∀ x, A x = oracleMachine(B, x)
  halts : ∀ x, oracleMachine halts on input (B, x)
  term : computesAFromB ∧ halts

structure TuringDegree (A : ℕ → ℕ) where
  equivalenceClass : Set (ℕ → ℕ)
  members : Set (ℕ → ℕ)
  reflective : A ∈ members

structure DegreePartialOrder where
  carrier : Set (TuringDegree ℕ)
  le : TuringDegree ℕ → TuringDegree ℕ → Prop
  leTransitive : ∀ a b c, le a b → le b c → le a c
  antiSymmetric : ∀ a b, le a b → le b a → a = b
  term : leTransitive ∧ antiSymmetric

def TuringReductionClosed (A B : ℕ → ℕ) : Prop :=
  Nonempty (TuringReduction A B)

theorem turing_reduction_closed_from_evidence (A B : ℕ → ℕ) (red : TuringReduction A B) : TuringReductionClosed A B := by
  exact ⟨red⟩

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse