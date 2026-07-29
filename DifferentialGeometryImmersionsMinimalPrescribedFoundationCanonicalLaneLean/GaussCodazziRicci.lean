import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.ImmersionStructure

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

structure GaussCodazziRicciPackage (I : ImmersionPackage) where
  gaussEquation : Prop
  codazziEquation : Prop
  ricciEquation : Prop
  gaussCodazziRicciClosed : Prop

structure GaussCodazziRicciEvidence {I : ImmersionPackage} (G : GaussCodazziRicciPackage I) where
  gaussEquationClosed : G.gaussEquation
  codazziEquationClosed : G.codazziEquation
  ricciEquationClosed : G.ricciEquation
  gaussCodazziRicciClosedClosed : G.gaussCodazziRicciClosed

def GaussCodazziRicciClosed {I : ImmersionPackage} (G : GaussCodazziRicciPackage I) : Prop :=
  G.gaussEquation ∧ G.codazziEquation ∧ G.ricciEquation ∧ G.gaussCodazziRicciClosed

theorem gauss_codazzi_ricci_closed_from_evidence {I : ImmersionPackage} (G : GaussCodazziRicciPackage I) (E : GaussCodazziRicciEvidence G) : GaussCodazziRicciClosed G := by
  exact And.intro E.gaussEquationClosed (And.intro E.codazziEquationClosed (And.intro E.ricciEquationClosed E.gaussCodazziRicciClosedClosed))

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse