import HautevilleHouse.ComputabilityTheoryDegreesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def turingDegreeProjection : Projection TuringDegreeEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem turing_degree_projection_idempotent (x : TuringDegreeEndgameState) :
    turingDegreeProjection.toFun (turingDegreeProjection.toFun x) = turingDegreeProjection.toFun x := by
  exact turingDegreeProjection.idempotent x

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse
