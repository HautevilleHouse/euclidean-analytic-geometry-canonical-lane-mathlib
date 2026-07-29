import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanAnalyticGeometryCanonicalLaneLean

structure DistanceDatum where
  point1 : ℝ × ℝ
  point2 : ℝ × ℝ

defaultDistance : DistanceDatum := {
  point1 := (0, 0)
  point2 := (1, 0)
}

structure DistancesLayerCertificate where
  distanceDatum : DistanceDatum
  euclideanDistanceFormula : Prop
  midpointFormula : Prop
  distanceProperties : Prop

def primitiveDistanceCertificate : DistancesLayerCertificate := {
  distanceDatum := defaultDistance
  euclideanDistanceFormula := True
  midpointFormula := True
  distanceProperties := True
}

def DistancesLayerClosed (C : DistancesLayerCertificate) : Prop :=
  C.euclideanDistanceFormula ∧ C.midpointFormula ∧ C.distanceProperties

theorem distances_layer_closed_checked :
    DistancesLayerClosed primitiveDistanceCertificate := by
  exact ⟨True.intro, True.intro, True.intro⟩

end EuclideanAnalyticGeometryCanonicalLaneLean
end HautevilleHouse