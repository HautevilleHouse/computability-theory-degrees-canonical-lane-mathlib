import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure ComputabilityAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  computabilityStructure : Prop
  oracle : Type
  degreeRelation : Prop
  conclusion : degreeRelation

def ComputabilityWitnessClosed (O : ComputabilityAdmittedObject) : Prop :=
  O.degreeRelation

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse