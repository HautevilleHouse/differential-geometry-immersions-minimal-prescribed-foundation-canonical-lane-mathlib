import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.SecondFundamentalForm

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure MinimalSubmanifoldEquationPackage {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} where
  harmonicCoordinateSystem : Prop
  vanishingMeanCurvature : Prop
  eulerLagrangeDerived : Prop
  areaCriticalPoint : Prop

structure MinimalSubmanifoldEquationEvidence {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} (M : MinimalSubmanifoldEquationPackage I S) where
  harmonicCoordinateSystemClosed : M.harmonicCoordinateSystem
  vanishingMeanCurvatureClosed : M.vanishingMeanCurvature
  eulerLagrangeDerivedClosed : M.eulerLagrangeDerived
  areaCriticalPointClosed : M.areaCriticalPoint

def MinimalSubmanifoldEquationClosed {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} (M : MinimalSubmanifoldEquationPackage I S) : Prop :=
  M.harmonicCoordinateSystem ∧ M.vanishingMeanCurvature ∧ M.eulerLagrangeDerived ∧ M.areaCriticalPoint

theorem minimal_submanifold_equation_closed_from_evidence {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} (M : MinimalSubmanifoldEquationPackage I S) (E : MinimalSubmanifoldEquationEvidence M) : MinimalSubmanifoldEquationClosed M := by
  exact And.intro E.harmonicCoordinateSystemClosed (And.intro E.vanishingMeanCurvatureClosed (And.intro E.eulerLagrangeDerivedClosed E.areaCriticalPointClosed))

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse