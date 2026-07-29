import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure PostProblemPackage {T : TuringReducibilityPackage}
    {J : JumpOperatorPackage T} where
  completenessNotion : Prop
  degreesBelow : Prop
  minimalDegree : Prop
  jumpInversionSolution : Prop

structure PostProblemEvidence {T : TuringReducibilityPackage}
    {J : JumpOperatorPackage T} (P : PostProblemPackage T J) where
  completenessNotionClosed : P.completenessNotion
  degreesBelowClosed : P.degreesBelow
  minimalDegreeClosed : P.minimalDegree
  jumpInversionSolutionClosed : P.jumpInversionSolution

def PostProblemClosed {T : TuringReducibilityPackage}
    {J : JumpOperatorPackage T} (P : PostProblemPackage T J) : Prop :=
  P.completenessNotion ∧ P.degreesBelow ∧ P.minimalDegree ∧ P.jumpInversionSolution

theorem post_problem_closed_from_evidence {T : TuringReducibilityPackage}
    {J : JumpOperatorPackage T} (P : PostProblemPackage T J)
    (E : PostProblemEvidence P) : PostProblemClosed P := by
  exact And.intro E.completenessNotionClosed
    (And.intro E.degreesBelowClosed
      (And.intro E.minimalDegreeClosed E.jumpInversionSolutionClosed))

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse