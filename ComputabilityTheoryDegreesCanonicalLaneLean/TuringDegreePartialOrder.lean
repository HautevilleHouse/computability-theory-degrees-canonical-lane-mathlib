import HautevilleHouse.ComputabilityTheoryDegreesCanonicalLaneLean.ArithmeticHierarchy

/-!
# Turing Degree Partial Order Package
-/

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure TuringDegreePartialOrderPackage {G : TuringDegreeSpace} {H : HaltingProblemPackage G}
    {T : TuringReducibilityPackage H} {P : PostProblemPackage T}
    (A : ArithmeticHierarchyPackage P) where
  partialOrder : Prop
  leastElement : Prop
  densityTheorem : Prop
  structureAboveZero : Prop

def TuringDegreePartialOrderClosed {G : TuringDegreeSpace} {H : HaltingProblemPackage G}
    {T : TuringReducibilityPackage H} {P : PostProblemPackage T}
    {A : ArithmeticHierarchyPackage P} (D : TuringDegreePartialOrderPackage A) : Prop :=
  D.partialOrder ∧ D.leastElement ∧ D.densityTheorem ∧ D.structureAboveZero

theorem turing_degree_partial_order_closed {G : TuringDegreeSpace} {H : HaltingProblemPackage G}
    {T : TuringReducibilityPackage H} {P : PostProblemPackage T}
    {A : ArithmeticHierarchyPackage P} (D : TuringDegreePartialOrderPackage A)
    (h : D.partialOrder ∧ D.leastElement ∧ D.densityTheorem ∧ D.structureAboveZero) :
    TuringDegreeDegreePartialOrderClosed D := h

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse
