import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure AdmittedObject where
  manifold : Type
  topology : TopologicalSpace manifold
  immersionClass : Prop
  prescribedCurvature : Prop
  consequence : Prop
  conclusion : consequence

def ImmersionPrescribedClosed (O : AdmittedObject) : Prop :=
  O.consequence

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse