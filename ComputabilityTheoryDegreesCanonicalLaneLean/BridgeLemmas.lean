import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ComputabilityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse