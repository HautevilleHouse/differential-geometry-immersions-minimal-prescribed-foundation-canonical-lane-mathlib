import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.ImmersionStructure

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure PrescribedMeanCurvaturePackage (I : ImmersionPackage) where
  prescribedFunction : I.sourceManifold → ℝ
  curvatureEquation : Prop
  meanCurvatureEqualsPrescribed : Prop
  prescribedClosed : Prop

structure PrescribedMeanCurvatureEvidence {I : ImmersionPackage} (P : PrescribedMeanCurvaturePackage I) where
  curvatureEquationClosed : P.curvatureEquation
  meanCurvatureEqualsPrescribedClosed : P.meanCurvatureEqualsPrescribed
  prescribedClosedClosed : P.prescribedClosed

def PrescribedMeanCurvatureClosed {I : ImmersionPackage} (P : PrescribedMeanCurvaturePackage I) : Prop :=
  P.curvatureEquation ∧ P.meanCurvatureEqualsPrescribed ∧ P.prescribedClosed

theorem prescribed_mean_curvature_closed_from_evidence {I : ImmersionPackage} (P : PrescribedMeanCurvaturePackage I) (E : PrescribedMeanCurvatureEvidence P) : PrescribedMeanCurvatureClosed P := by
  exact And.intro E.curvatureEquationClosed (And.intro E.meanCurvatureEqualsPrescribedClosed E.prescribedClosedClosed)

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse