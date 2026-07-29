import DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DifferentialGeometrySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DifferentialGeometryAdmittedObject where
  space : DifferentialGeometrySpace
  riemannianMetric : Prop
  immersionMinimal : Prop
  prescribedCurvature : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure DifferentialGeometryEndgameState where
  object : DifferentialGeometryAdmittedObject

def DifferentialGeometryWitnessClosed (O : DifferentialGeometryAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end DifferentialGeometryImmersionsMinimalPrescribedFoundationCanonicalLaneLean
end HautevilleHouse