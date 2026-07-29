import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure ImmersionPackage where
  sourceManifold : Type u
  targetManifold : Type v
  topologySource : TopologicalSpace sourceManifold
  topologyTarget : TopologicalSpace targetManifold
  immersionMap : sourceManifold → targetManifold
  injectiveDifferential : Prop
  immersionClosed : Prop

structure ImmersionEvidence (I : ImmersionPackage) where
  injectiveDifferentialClosed : I.injectiveDifferential
  immersionClosedClosed : I.immersionClosed

def ImmersionClosed (I : ImmersionPackage) : Prop :=
  I.injectiveDifferential ∧ I.immersionClosed

theorem immersion_closed_from_evidence (I : ImmersionPackage) (E : ImmersionEvidence I) : ImmersionClosed I := by
  exact And.intro E.injectiveDifferentialClosed E.immersionClosedClosed

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse