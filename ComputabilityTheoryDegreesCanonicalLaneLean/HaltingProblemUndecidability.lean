import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure HaltingProblemUndecidability where
  haltingFunctionDefined : Prop
  reductionFromHaltingToSelf : Prop
  undecidableTheorem : Prop

structure HaltingProblemUndecidabilityEvidence (H : HaltingProblemUndecidability) where
  haltingFunctionDefinedClosed : H.haltingFunctionDefined
  reductionFromHaltingToSelfClosed : H.reductionFromHaltingToSelf
  undecidableTheoremClosed : H.undecidableTheorem

def HaltingProblemUndecidabilityClosed (H : HaltingProblemUndecidability) : Prop :=
  H.haltingFunctionDefined ∧ H.reductionFromHaltingToSelf ∧ H.undecidableTheorem

theorem halting_problem_undecidability_closed_from_evidence
    (H : HaltingProblemUndecidability) (E : HaltingProblemUndecidabilityEvidence H) :
    HaltingProblemUndecidabilityClosed H := by
  exact And.intro E.haltingFunctionDefinedClosed
    (And.intro E.reductionFromHaltingToSelfClosed
      E.undecidableTheoremClosed)

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse