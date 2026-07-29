import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.ImmersionStructure

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure IsometricImmersionPackage (I : ImmersionPackage) where
  pulledBackMetric : Prop
  metricCompatibility : Prop
  isometricClosed : Prop

structure IsometricImmersionEvidence {I : ImmersionPackage} (Isom : IsometricImmersionPackage I) where
  pulledBackMetricClosed : Isom.pulledBackMetric
  metricCompatibilityClosed : Isom.metricCompatibility
  isometricClosedClosed : Isom.isometricClosed

def IsometricImmersionClosed {I : ImmersionPackage} (Isom : IsometricImmersionPackage I) : Prop :=
  Isom.pulledBackMetric ∧ Isom.metricCompatibility ∧ Isom.isometricClosed

theorem isometric_immersion_closed_from_evidence {I : ImmersionPackage} (Isom : IsometricImmersionPackage I) (E : IsometricImmersionEvidence Isom) : IsometricImmersionClosed Isom := by
  exact And.intro E.pulledBackMetricClosed (And.intro E.metricCompatibilityClosed E.isometricClosedClosed)

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse