import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure SpaceConstructible (f : ℕ → ℕ) where
  isConstructible : Prop
  term : isConstructible

structure TimeConstructible (f : ℕ → ℕ) where
  isConstructible : Prop
  term : isConstructible

structure SpaceHierarchyTheorem where
  spaceConstructibleSeq : ℕ → (ℕ → ℕ)
  strictInclusion : ∀ f g : ℕ → ℕ, SpaceConstructible f → SpaceConstructible g → (∃ n, f n < g n) →
    (¬ (∀ L : Language, L ∈ DSPACE(f) ↔ L ∈ DSPACE(g)))
  term : strictInclusion

structure TimeHierarchyTheorem where
  timeConstructibleSeq : ℕ → (ℕ → ℕ)
  strictInclusion : ∀ f g : ℕ → ℕ, TimeConstructible f → TimeConstructible g → (∃ n, f n * ℕ.log (f n) < g n) →
    (¬ (∀ L : Language, L ∈ DTIME(f) ↔ L ∈ DTIME(g)))
  term : strictInclusion

structure Language where
  alphabet : Type
  strings : List alphabet → Prop

def DSPACE (f : ℕ → ℕ) : Set Language := { L | ∀ s, L.strings s → length s ≤ f (length s) }
def DTIME (f : ℕ → ℕ) : Set Language := { L | ∀ s, L.strings s → time_to_decide s ≤ f (length s) }

def HierarchyTheoremsClosed (S : SpaceHierarchyTheorem) (T : TimeHierarchyTheorem) : Prop :=
  S.strictInclusion ∧ T.strictInclusion

theorem hierarchy_theorems_closed_from_evidence (S : SpaceHierarchyTheorem) (T : TimeHierarchyTheorem) : HierarchyTheoremsClosed S T := by
  exact And.intro S.term T.term

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse