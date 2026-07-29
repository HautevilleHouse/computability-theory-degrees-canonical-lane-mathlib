import HautevilleHouse.ComputabilityTheoryDegreesCanonicalLaneLean.TheoremStatement
import HautevilleHouse.CanonicalLaneMathlibCore
import Mathlib.Computability.TuringMachine

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TuringDegreeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TuringDegreeAdmittedObject where
  space : TuringDegreeSpace
  enumeratedSet : Prop
  canComputeItsOwnJump : Prop
  degreeModel : Type
  equivalenceRelation : degreeModel → degreeModel → Prop
  haltingProblemEquivalence : Prop
  conclusion : haltingProblemEquivalence

structure TuringDegreeEndgameState where
  object : TuringDegreeAdmittedObject

def TuringDegreeWitnessClosed (O : TuringDegreeAdmittedObject) : Prop :=
  O.haltingProblemEquivalence

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse
