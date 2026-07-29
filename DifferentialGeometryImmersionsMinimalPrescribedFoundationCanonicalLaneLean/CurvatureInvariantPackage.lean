import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure CurvatureInvariantPackage where
  ricciCurvatureBounded : Prop
  scalarCurvatureLowerBound : Prop
  curvaturePinching : Prop
  ricciCurvatureBoundedTerm : ricciCurvatureBounded
  scalarCurvatureLowerBoundTerm : scalarCurvatureLowerBound
  curvaturePinchingTerm : curvaturePinching

def CurvatureInvariantClosed (C : CurvatureInvariantPackage) : Prop :=
  C.ricciCurvatureBounded ∧ C.scalarCurvatureLowerBound ∧ C.curvaturePinching

theorem curvature_invariant_closed_from_evidence (C : CurvatureInvariantPackage) :
    CurvatureInvariantClosed C := by
  exact And.intro C.ricciCurvatureBoundedTerm (And.intro C.scalarCurvatureLowerBoundTerm C.curvaturePinchingTerm)

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse