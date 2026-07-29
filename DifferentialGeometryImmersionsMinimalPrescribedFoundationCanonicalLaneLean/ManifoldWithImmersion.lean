import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure ManifoldWithImmersion where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  immersionTarget : Type v
  targetTopology : TopologicalSpace immersionTarget
  immersionMap : carrier → immersionTarget
  immersionRank : Prop
  immersionInjective : Prop
  smoothStructureTerm : smoothStructure
  immersionRankTerm : immersionRank
  immersionInjectiveTerm : immersionInjective

structure ImmersionAdmissibleObject where
  source : ManifoldWithImmersion
  targetDimension : Nat
  sourceDimension : Nat
  dimensionEquation : sourceDimension ≤ targetDimension
  conformalFactor : Option (carrier.source → ℝ)
  prescribedCurvatureCondition : Prop
  conclusion : prescribedCurvatureCondition

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse
