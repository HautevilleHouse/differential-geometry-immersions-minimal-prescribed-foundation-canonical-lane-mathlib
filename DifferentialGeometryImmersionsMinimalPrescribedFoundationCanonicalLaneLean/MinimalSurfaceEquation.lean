import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundation

structure MinimalSurfaceEquationPackage {G : ImmersionCurvaturePackage} where
  immersion : G.immersion
  meanCurvature : G.meanCurvature
  minimalCondition : Prop
  variationalPrinciple : Prop
  boundaryConstraints : Prop

structure MinimalSurfaceEquationEvidence {G : ImmersionCurvaturePackage}
    (M : MinimalSurfaceEquationPackage G) where
  minimalConditionClosed : M.minimalCondition
  variationalPrincipleClosed : M.variationalPrinciple
  boundaryConstraintsClosed : M.boundaryConstraints

def MinimalSurfaceEquationClosed {G : ImmersionCurvaturePackage}
    (M : MinimalSurfaceEquationPackage G) : Prop :=
  M.minimalCondition ∧ M.variationalPrinciple ∧ M.boundaryConstraints

theorem minimal_surface_equation_closed_from_evidence
    {G : ImmersionCurvaturePackage}
    (M : MinimalSurfaceEquationPackage G) (E : MinimalSurfaceEquationEvidence M) :
    MinimalSurfaceEquationClosed M := by
  exact And.intro E.minimalConditionClosed
    (And.intro E.variationalPrincipleClosed E.boundaryConstraintsClosed)

end DifferentialGeometryImmersionsMinimalPrescribedFoundation
end HautevilleHouse