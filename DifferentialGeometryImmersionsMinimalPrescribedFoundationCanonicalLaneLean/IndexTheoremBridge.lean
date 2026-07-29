import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure IndexTheoremBundle {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} {M : MinimalSubmanifoldEquationPackage I S} {C : CurvatureInvariantsPackage I S M} where
  atiyahSingerIndex : Prop
  diracOperatorDefined : Prop
  indexComputed : Prop
  analyticIndexEqualsTopological : Prop

structure IndexTheoremEvidence {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} {M : MinimalSubmanifoldEquationPackage I S} {C : CurvatureInvariantsPackage I S M} (B : IndexTheoremBundle I S M C) where
  atiyahSingerIndexClosed : B.atiyahSingerIndex
  diracOperatorDefinedClosed : B.diracOperatorDefined
  indexComputedClosed : B.indexComputed
  analyticIndexEqualsTopologicalClosed : B.analyticIndexEqualsTopological

def IndexTheoremClosed {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} {M : MinimalSubmanifoldEquationPackage I S} {C : CurvatureInvariantsPackage I S M} (B : IndexTheoremBundle I S M C) : Prop :=
  B.atiyahSingerIndex ∧ B.diracOperatorDefined ∧ B.indexComputed ∧ B.analyticIndexEqualsTopological

theorem index_theorem_closed_from_evidence {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} {M : MinimalSubmanifoldEquationPackage I S} {C : CurvatureInvariantsPackage I S M} (B : IndexTheoremBundle I S M C) (E : IndexTheoremEvidence B) : IndexTheoremClosed B := by
  exact And.intro E.atiyahSingerIndexClosed (And.intro E.diracOperatorDefinedClosed (And.intro E.indexComputedClosed E.analyticIndexEqualsTopologicalClosed))

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse