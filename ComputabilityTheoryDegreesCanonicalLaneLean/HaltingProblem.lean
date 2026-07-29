import HautevilleHouse.ComputabilityTheoryDegreesCanonicalLaneLean.RiemannianCurvature

/-!
# Halting Problem Package
-/

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure HaltingProblemPackage (G : TuringDegreeSpace) where
  universalMachine : Type
  undecidabilityProof : Prop
  reductionRelationship : universalMachine → Prop

def HaltingProblemClosed {G : TuringDegreeSpace} (H : HaltingProblemPackage G) : Prop :=
  H.undecidabilityProof

theorem halting_problem_closed {G : TuringDegreeSpace} (H : HaltingProblemPackage G) (h : H.undecidabilityProof) :
    HaltingProblemClosed H := h

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse
