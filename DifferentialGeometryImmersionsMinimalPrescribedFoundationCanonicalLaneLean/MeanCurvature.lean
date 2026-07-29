import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.ManifoldWithImmersion

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure MeanCurvaturePackage (M : ManifoldWithImmersion) where
  secondFundamentalForm : Type u
  meanCurvatureScalar : M.carrier → ℝ
  gaussMap : M.carrier → Type v
  meanCurvatureDefined : Prop
  gaussMapDefined : Prop
  secondFundamentalFormTerm : secondFundamentalForm
  meanCurvatureScalarTerm : meanCurvatureScalar
  gaussMapTerm : gaussMap
  meanCurvatureDefinedTerm : meanCurvatureDefined
  gaussMapDefinedTerm : gaussMapDefined

structure MeanCurvatureEvidence (M : ManifoldWithImmersion)
    (H : MeanCurvaturePackage M) where
  meanCurvatureDefinedClosed : H.meanCurvatureDefined
  gaussMapDefinedClosed : H.gaussMapDefined

def MeanCurvatureClosed (M : ManifoldWithImmersion)
    (H : MeanCurvaturePackage M) : Prop :=
  H.meanCurvatureDefined ∧ H.gaussMapDefined

theorem mean_curvature_closed_from_evidence (M : ManifoldWithImmersion)
    (H : MeanCurvaturePackage M) (E : MeanCurvatureEvidence M H) :
    MeanCurvatureClosed M H :=
  And.intro E.meanCurvatureDefinedClosed E.gaussMapDefinedClosed

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse
