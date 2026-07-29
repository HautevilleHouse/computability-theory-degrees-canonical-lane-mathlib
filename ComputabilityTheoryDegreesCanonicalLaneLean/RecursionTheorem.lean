import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure RecursionTheorem where
  fixedPointExistence : Prop
  selfReference : Prop
  totalFunctionsApplicable : Prop

structure RecursionTheoremEvidence (R : RecursionTheorem) where
  fixedPointExistenceClosed : R.fixedPointExistence
  selfReferenceClosed : R.selfReference
  totalFunctionsApplicableClosed : R.totalFunctionsApplicable

def RecursionTheoremClosed (R : RecursionTheorem) : Prop :=
  R.fixedPointExistence ∧ R.selfReference ∧ R.totalFunctionsApplicable

theorem recursion_theorem_closed_from_evidence
    (R : RecursionTheorem) (E : RecursionTheoremEvidence R) :
    RecursionTheoremClosed R := by
  exact And.intro E.fixedPointExistenceClosed
    (And.intro E.selfReferenceClosed
      E.totalFunctionsApplicableClosed)

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse