import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.MinimalSubmanifoldEquation

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure CurvatureInvariantsPackage {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} {M : MinimalSubmanifoldEquationPackage I S} where
  scalarCurvatureBound : Prop
  ricciCurvatureCondition : Prop
  sectionalCurvatureSign : Prop
  gaussBonnetChernIntegrand : Prop

structure CurvatureInvariantsEvidence {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} {M : MinimalSubmanifoldEquationPackage I S} (C : CurvatureInvariantsPackage I S M) where
  scalarCurvatureBoundClosed : C.scalarCurvatureBound
  ricciCurvatureConditionClosed : C.ricciCurvatureCondition
  sectionalCurvatureSignClosed : C.sectionalCurvatureSign
  gaussBonnetChernIntegrandClosed : C.gaussBonnetChernIntegrand

def CurvatureInvariantsClosed {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} {M : MinimalSubmanifoldEquationPackage I S} (C : CurvatureInvariantsPackage I S M) : Prop :=
  C.scalarCurvatureBound ∧ C.ricciCurvatureCondition ∧ C.sectionalCurvatureSign ∧ C.gaussBonnetChernIntegrand

theorem curvature_invariants_closed_from_evidence {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} {M : MinimalSubmanifoldEquationPackage I S} (C : CurvatureInvariantsPackage I S M) (E : CurvatureInvariantsEvidence C) : CurvatureInvariantsClosed C := by
  exact And.intro E.scalarCurvatureBoundClosed (And.intro E.ricciCurvatureConditionClosed (And.intro E.sectionalCurvatureSignClosed E.gaussBonnetChernIntegrandClosed))

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse