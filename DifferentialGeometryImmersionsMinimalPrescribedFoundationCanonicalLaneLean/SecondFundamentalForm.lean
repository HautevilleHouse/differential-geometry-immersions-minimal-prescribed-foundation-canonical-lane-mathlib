import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.ImmersionPackage

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure SecondFundamentalFormPackage {I : ImmersionPackage} where
  secondFundamentalForm : Type
  traceFree : Prop
  meanCurvatureZero : Prop
  shapeOperator : Type
  gaussEquation : Prop
  codazziEquation : Prop

structure SecondFundamentalFormEvidence {I : ImmersionPackage} (S : SecondFundamentalFormPackage I) where
  traceFreeClosed : S.traceFree
  meanCurvatureZeroClosed : S.meanCurvatureZero
  gaussEquationClosed : S.gaussEquation
  codazziEquationClosed : S.codazziEquation

def SecondFundamentalFormClosed {I : ImmersionPackage} (S : SecondFundamentalFormPackage I) : Prop :=
  S.traceFree ∧ S.meanCurvatureZero ∧ S.gaussEquation ∧ S.codazziEquation

theorem second_fundamental_form_closed_from_evidence {I : ImmersionPackage} (S : SecondFundamentalFormPackage I) (E : SecondFundamentalFormEvidence S) : SecondFundamentalFormClosed S := by
  exact And.intro E.traceFreeClosed (And.intro E.meanCurvatureZeroClosed (And.intro E.gaussEquationClosed E.codazziEquationClosed))

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse