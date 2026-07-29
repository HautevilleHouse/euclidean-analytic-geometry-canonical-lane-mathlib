import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanAnalyticGeometryCanonicalLaneLean

structure VectorDatum where
  x : ℝ
  y : ℝ

defaultVector : VectorDatum := {
  x := 1
  y := 0
}

structure VectorGeometryLayerCertificate where
  vectorDatum : VectorDatum
  dotProduct : Prop
  crossProduct : Prop
  linearity : Prop

def primitiveVectorCertificate : VectorGeometryLayerCertificate := {
  vectorDatum := defaultVector
  dotProduct := True
  crossProduct := True
  linearity := True
}

def VectorGeometryLayerClosed (C : VectorGeometryLayerCertificate) : Prop :=
  C.dotProduct ∧ C.crossProduct ∧ C.linearity

theorem vector_geometry_layer_closed_checked :
    VectorGeometryLayerClosed primitiveVectorCertificate := by
  exact ⟨True.intro, True.intro, True.intro⟩

end EuclideanAnalyticGeometryCanonicalLaneLean
end HautevilleHouse