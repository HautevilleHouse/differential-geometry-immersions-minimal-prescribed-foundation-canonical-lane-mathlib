import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundation

structure ImmersionCurvaturePackage where
  immersion : Type u
  targetManifold : Type v
  secondFundamentalForm : Type w
  meanCurvature : Type x
  gaussCurvature : Type y
  immersionSmooth : Prop
  secondFundamentalFormDefined : Prop
  meanCurvatureComputed : Prop
  gaussCurvatureComputed : Prop
  curvatureRelations : Prop

structure ImmersionCurvatureEvidence (G : ImmersionCurvaturePackage) where
  immersionSmoothClosed : G.immersionSmooth
  secondFundamentalFormDefinedClosed : G.secondFundamentalFormDefined
  meanCurvatureComputedClosed : G.meanCurvatureComputed
  gaussCurvatureComputedClosed : G.gaussCurvatureComputed
  curvatureRelationsClosed : G.curvatureRelations

def ImmersionCurvatureClosed (G : ImmersionCurvaturePackage) : Prop :=
  G.immersionSmooth ∧ G.secondFundamentalFormDefined ∧
  G.meanCurvatureComputed ∧ G.gaussCurvatureComputed ∧
  G.curvatureRelations

theorem immersion_curvature_closed_from_evidence
    (G : ImmersionCurvaturePackage) (E : ImmersionCurvatureEvidence G) :
    ImmersionCurvatureClosed G := by
  exact And.intro E.immersionSmoothClosed
    (And.intro E.secondFundamentalFormDefinedClosed
      (And.intro E.meanCurvatureComputedClosed
        (And.intro E.gaussCurvatureComputedClosed
          E.curvatureRelationsClosed)))

end DifferentialGeometryImmersionsMinimalPrescribedFoundation
end HautevilleHouse