import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundation

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ImmersionCurvatureClosed (A.object : ImmersionCurvaturePackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometryImmersionsMinimalPrescribedFoundation
end HautevilleHouse