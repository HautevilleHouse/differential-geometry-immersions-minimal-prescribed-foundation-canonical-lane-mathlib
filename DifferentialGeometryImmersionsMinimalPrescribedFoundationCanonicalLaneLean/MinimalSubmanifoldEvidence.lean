import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.ImmersionFoundation

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure MinimalSubmanifoldEvidence where
  areaMinimizing : Prop
  meanCurvatureZero : Prop
  secondFundamentalFormBounded : Prop
  areaMinimizingTerm : areaMinimizing
  meanCurvatureZeroTerm : meanCurvatureZero
  secondFundamentalFormBoundedTerm : secondFundamentalFormBounded

def MinimalSubmanifoldClosed (E : MinimalSubmanifoldEvidence) : Prop :=
  E.areaMinimizing ∧ E.meanCurvatureZero ∧ E.secondFundamentalFormBounded

theorem minimal_submanifold_closed_from_evidence (E : MinimalSubmanifoldEvidence) :
    MinimalSubmanifoldClosed E := by
  exact And.intro E.areaMinimizingTerm (And.intro E.meanCurvatureZeroTerm E.secondFundamentalFormBoundedTerm)

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse