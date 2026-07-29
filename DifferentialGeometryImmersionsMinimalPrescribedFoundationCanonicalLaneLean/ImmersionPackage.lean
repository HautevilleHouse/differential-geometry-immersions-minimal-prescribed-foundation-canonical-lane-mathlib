import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure ImmersionPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  immersionMap : sourceManifold → targetManifold
  isImmersion : Prop
  isMinimal : Prop
  immersionClosed : Prop

structure ImmersionEvidence (I : ImmersionPackage) where
  isImmersionClosed : I.isImmersion
  isMinimalClosed : I.isMinimal
  immersionClosedClosed : I.immersionClosed

def ImmersionClosed (I : ImmersionPackage) : Prop :=
  I.isImmersion ∧ I.isMinimal ∧ I.immersionClosed

theorem immersion_closed_from_evidence (I : ImmersionPackage) (E : ImmersionEvidence I) : ImmersionClosed I := by
  exact And.intro E.isImmersionClosed (And.intro E.isMinimalClosed E.immersionClosedClosed)

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse