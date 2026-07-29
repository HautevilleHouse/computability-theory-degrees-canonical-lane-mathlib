import HautevilleHouse.ComputabilityTheoryDegreesCanonicalLaneLean.PostProblem

/-!
# Arithmetic Hierarchy Package
-/

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure ArithmeticHierarchyPackage {G : TuringDegreeSpace} {H : HaltingProblemPackage G}
    {T : TuringReducibilityPackage H} {P : PostProblemPackage T} where
  sigmaNLevels : Prop
  piNLevels : Prop
  jumpOperator : Prop
  limitLemma : Prop

def ArithmeticHierarchyClosed {G : TuringDegreeSpace} {H : HaltingProblemPackage G}
    {T : TuringReducibilityPackage H} {P : PostProblemPackage T}
    (A : ArithmeticHierarchyPackage P) : Prop :=
  A.sigmaNLevels ∧ A.piNLevels ∧ A.jumpOperator ∧ A.limitLemma

theorem arithmetic_hierarchy_closed {G : TuringDegreeSpace} {H : HaltingProblemPackage G}
    {T : TuringReducibilityPackage H} {P : PostProblemPackage T}
    (A : ArithmeticHierarchyPackage P) (h : A.sigmaNLevels ∧ A.piNLevels ∧ A.jumpOperator ∧ A.limitLemma) :
    ArithmeticHierarchyClosed A := h

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse
