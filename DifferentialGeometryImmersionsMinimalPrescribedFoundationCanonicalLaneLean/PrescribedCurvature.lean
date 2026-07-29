import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.MinimalSurfacePDE

/-!
# Prescribed Curvature Package
-/

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure PrescribedCurvaturePackage {G : RiemannianCurvaturePackage}
    (M : MinimalSurfacePDEPackage G) where
  gaussCurvature : Type
  meanCurvature : Type
  prescribedEquations : Prop
  compatibilityWithImmersion : Prop
  existsSolution : Prop

structure PrescribedCurvatureEvidence {G : RiemannianCurvaturePackage}
    {M : MinimalSurfacePDEPackage G} (P : PrescribedCurvaturePackage M) where
  prescribedEquationsClosed : P.prescribedEquations
  compatibilityWithImmersionClosed : P.compatibilityWithImmersion
  existsSolutionClosed : P.existsSolution

def PrescribedCurvatureClosed {G : RiemannianCurvaturePackage}
    {M : MinimalSurfacePDEPackage G} (P : PrescribedCurvaturePackage M) : Prop :=
  P.prescribedEquations ∧ P.compatibilityWithImmersion ∧ P.existsSolution

theorem prescribed_curvature_closed_from_evidence
    {G : RiemannianCurvaturePackage} {M : MinimalSurfacePDEPackage G}
    (P : PrescribedCurvaturePackage M) (E : PrescribedCurvatureEvidence P) :
    PrescribedCurvatureClosed P := by
  exact And.intro E.prescribedEquationsClosed
    (And.intro E.compatibilityWithImmersionClosed E.existsSolutionClosed)

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse