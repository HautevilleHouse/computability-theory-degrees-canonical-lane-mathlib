import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure JumpOperatorPackage (T : TuringReducibilityPackage) where
  haltingProblem : Prop
  jumpFunction : Prop
  jumpInversion : Prop

structure JumpOperatorEvidence {T : TuringReducibilityPackage}
    (J : JumpOperatorPackage T) where
  haltingProblemClosed : J.haltingProblem
  jumpFunctionClosed : J.jumpFunction
  jumpInversionClosed : J.jumpInversion

def JumpOperatorClosed {T : TuringReducibilityPackage}
    (J : JumpOperatorPackage T) : Prop :=
  J.haltingProblem ∧ J.jumpFunction ∧ J.jumpInversion

theorem jump_operator_closed_from_evidence {T : TuringReducibilityPackage}
    (J : JumpOperatorPackage T) (E : JumpOperatorEvidence J) :
    JumpOperatorClosed J := by
  exact And.intro E.haltingProblemClosed
    (And.intro E.jumpFunctionClosed E.jumpInversionClosed)

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse