import HautevilleHouse.ComputabilityTheoryDegreesCanonicalLaneLean.HaltingProblemUndecidability

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure PostCorrespondenceProblem where
  tiles : Type
  tilePairSequence : Type
  solutionExists : Prop
  reductionFromHalting : Prop

structure PostCorrespondenceProblemEvidence {H : HaltingProblemUndecidability}
    (P : PostCorrespondenceProblem) where
  solutionExistsDefined : P.solutionExists
  reductionFromHaltingClosed : P.reductionFromHalting

def PostCorrespondenceProblemClosed {H : HaltingProblemUndecidability}
    (P : PostCorrespondenceProblem) : Prop :=
  P.solutionExists ∧ P.reductionFromHalting

theorem post_correspondence_problem_closed_from_evidence
    {H : HaltingProblemUndecidability} (P : PostCorrespondenceProblem)
    (E : PostCorrespondenceProblemEvidence P) : PostCorrespondenceProblemClosed P := by
  exact And.intro E.solutionExistsDefined E.reductionFromHaltingClosed

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse