import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.MinimalSurfaceEquation

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure PrescribedCurvatureFlowPackage {M : ManifoldWithImmersion}
    (P : MinimalSurfaceEquationPackage M) where
  timeParameter : Type u
  evolvingImmersion : timeParameter → M.carrier → M.immersionTarget
  prescribedCurvatureFunction : M.carrier → ℝ
  curvatureEquation : Prop
  initialCondition : Prop
  timeParameterTerm : timeParameter
  evolvingImmersionTerm : evolvingImmersion
  prescribedCurvatureFunctionTerm : prescribedCurvatureFunction
  curvatureEquationTerm : curvatureEquation
  initialConditionTerm : initialCondition

structure PrescribedCurvatureFlowEvidence {M : ManifoldWithImmersion}
    {P : MinimalSurfaceEquationPackage M}
    (F : PrescribedCurvatureFlowPackage P) where
  curvatureEquationClosed : F.curvatureEquation
  initialConditionClosed : F.initialCondition

def PrescribedCurvatureFlowClosed {M : ManifoldWithImmersion}
    {P : MinimalSurfaceEquationPackage M}
    (F : PrescribedCurvatureFlowPackage P) : Prop :=
  F.curvatureEquation ∧ F.initialCondition

theorem prescribed_curvature_flow_closed_from_evidence
    {M : ManifoldWithImmersion} {P : MinimalSurfaceEquationPackage M}
    (F : PrescribedCurvatureFlowPackage P) (E : PrescribedCurvatureFlowEvidence F) :
    PrescribedCurvatureFlowClosed F :=
  And.intro E.curvatureEquationClosed E.initialConditionClosed

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse
