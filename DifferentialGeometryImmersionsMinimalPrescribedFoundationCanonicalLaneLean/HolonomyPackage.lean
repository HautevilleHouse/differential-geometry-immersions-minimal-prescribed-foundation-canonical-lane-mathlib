import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.IndexTheoremBridge

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure HolonomyPackage {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} {M : MinimalSubmanifoldEquationPackage I S} {C : CurvatureInvariantsPackage I S M} {B : IndexTheoremBundle I S M C} where
  holonomyGroup : Type
  curvatureRepresentation : Prop
  ambroseSingerTheorem : Prop
  holonomyInvariant : Prop

structure HolonomyEvidence {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} {M : MinimalSubmanifoldEquationPackage I S} {C : CurvatureInvariantsPackage I S M} {B : IndexTheoremBundle I S M C} (H : HolonomyPackage I S M C B) where
  curvatureRepresentationClosed : H.curvatureRepresentation
  ambroseSingerTheoremClosed : H.ambroseSingerTheorem
  holonomyInvariantClosed : H.holonomyInvariant

def HolonomyClosed {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} {M : MinimalSubmanifoldEquationPackage I S} {C : CurvatureInvariantsPackage I S M} {B : IndexTheoremBundle I S M C} (H : HolonomyPackage I S M C B) : Prop :=
  H.curvatureRepresentation ∧ H.ambroseSingerTheorem ∧ H.holonomyInvariant

theorem holonomy_closed_from_evidence {I : ImmersionPackage} {S : SecondFundamentalFormPackage I} {M : MinimalSubmanifoldEquationPackage I S} {C : CurvatureInvariantsPackage I S M} {B : IndexTheoremBundle I S M C} (H : HolonomyPackage I S M C B) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.curvatureRepresentationClosed (And.intro E.ambroseSingerTheoremClosed E.holonomyInvariantClosed)

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse