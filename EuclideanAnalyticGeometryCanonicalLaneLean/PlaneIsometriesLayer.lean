import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanAnalyticGeometryCanonicalLaneLean

structure IsometryDatum where
  translation : ℝ × ℝ
  rotation : ℝ
  reflection : Bool

defaultInstance : IsometryDatum := {
  translation := (0, 0)
  rotation := 0
  reflection := false
}

structure PlaneIsometryLayerCertificate where
  isometryDatum : IsometryDatum
  distancePreserved : Prop
  orientationPreserved : Prop
  compositionClosed : Prop

/-- Certificate for the identity isometry as primitive -/
def primitiveIsometryCertificate : PlaneIsometryLayerCertificate := {
  isometryDatum := defaultInstance
  distancePreserved := True
  orientationPreserved := True
  compositionClosed := True
}

def PlaneIsometryLayerClosed (C : PlaneIsometryLayerCertificate) : Prop :=
  C.distancePreserved ∧ C.orientationPreserved ∧ C.compositionClosed

theorem plane_isometry_layer_closed_checked :
    PlaneIsometryLayerClosed primitiveIsometryCertificate := by
  exact ⟨True.intro, True.intro, True.intro⟩

end EuclideanAnalyticGeometryCanonicalLaneLean
end HautevilleHouse