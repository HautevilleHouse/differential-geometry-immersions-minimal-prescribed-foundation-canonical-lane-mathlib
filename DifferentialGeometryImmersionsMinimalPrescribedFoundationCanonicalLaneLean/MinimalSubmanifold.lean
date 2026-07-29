import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.ImmersionStructure

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure MinimalSubmanifoldPackage (I : ImmersionPackage) where
  meanCurvatureZero : Prop
  stabilityOperator : Prop
  secondVariationFormula : Prop
  minimalClosed : Prop

structure MinimalSubmanifoldEvidence {I : ImmersionPackage} (M : MinimalSubmanifoldPackage I) where
  meanCurvatureZeroClosed : M.meanCurvatureZero
  stabilityOperatorClosed : M.stabilityOperator
  secondVariationFormulaClosed : M.secondVariationFormula
  minimalClosedClosed : M.minimalClosed

def MinimalSubmanifoldClosed {I : ImmersionPackage} (M : MinimalSubmanifoldPackage I) : Prop :=
  M.meanCurvatureZero ∧ M.stabilityOperator ∧ M.secondVariationFormula ∧ M.minimalClosed

theorem minimal_submanifold_closed_from_evidence {I : ImmersionPackage} (M : MinimalSubmanifoldPackage I) (E : MinimalSubmanifoldEvidence M) : MinimalSubmanifoldClosed M := by
  exact And.intro E.meanCurvatureZeroClosed (And.intro E.stabilityOperatorClosed (And.intro E.secondVariationFormulaClosed E.minimalClosedClosed))

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse