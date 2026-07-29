import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.CurvatureInvariantPackage

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure PrescribedCurvatureEquation where
  curvatureOperator : Type
  prescribedCurvature : Prop
  ellipticRegularity : Prop
  existenceOfImmersion : Prop
  prescribedCurvatureTerm : prescribedCurvature
  ellipticRegularityTerm : ellipticRegularity
  existenceOfImmersionTerm : existenceOfImmersion

def PrescribedCurvatureClosed (E : PrescribedCurvatureEquation) : Prop :=
  E.prescribedCurvature ∧ E.ellipticRegularity ∧ E.existenceOfImmersion

theorem prescribed_curvature_closed_from_evidence (E : PrescribedCurvatureEquation) :
    PrescribedCurvatureClosed E := by
  exact And.intro E.prescribedCurvatureTerm (And.intro E.ellipticRegularityTerm E.existenceOfImmersionTerm)

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse