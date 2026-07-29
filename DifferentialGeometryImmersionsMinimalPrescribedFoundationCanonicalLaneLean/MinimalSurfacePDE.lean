import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.RiemannianCurvature

/-!
# Minimal Surface PDE Package
-/

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure MinimalSurfacePDEPackage (G : RiemannianCurvaturePackage) where
  surface : Type u
  topology : TopologicalSpace surface
  immersion : surface → G.manifold
  meanCurvatureZero : Prop
  areaMinimizing : Prop
  secondVariationNonnegative : Prop

structure MinimalSurfacePDEEvidence {G : RiemannianCurvaturePackage}
    (M : MinimalSurfacePDEPackage G) where
  meanCurvatureZeroClosed : M.meanCurvatureZero
  areaMinimizingClosed : M.areaMinimizing
  secondVariationNonnegativeClosed : M.secondVariationNonnegative

def MinimalSurfacePDEClosed {G : RiemannianCurvaturePackage}
    (M : MinimalSurfacePDEPackage G) : Prop :=
  M.meanCurvatureZero ∧ M.areaMinimizing ∧ M.secondVariationNonnegative

theorem minimal_surface_pde_closed_from_evidence
    {G : RiemannianCurvaturePackage} (M : MinimalSurfacePDEPackage G)
    (E : MinimalSurfacePDEEvidence M) : MinimalSurfacePDEClosed M := by
  exact And.intro E.meanCurvatureZeroClosed
    (And.intro E.areaMinimizingClosed E.secondVariationNonnegativeClosed)

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse