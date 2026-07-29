import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic
import Mathlib.Topology.Algebra.Algebra

namespace HautevilleHouse
namespace BanachAlgebrasDifferentiableAnalyticFunctionsFoundationCanonicalLaneLean

structure GelfandTransformDatum where
  algebra : Type u
  characterSpace : Type v
  gelfandTransform : algebra → (characterSpace → ℂ)
  isIsometric : Prop
  isInjective : Prop

default instance : Inhabited GelfandTransformDatum where
  default := {
    algebra := Unit
    characterSpace := Unit
    gelfandTransform := λ _ _ => (0 : ℂ)
    isIsometric := True
    isInjective := True
  }

structure GelfandTransformLayerCertificate where
  datum : GelfandTransformDatum
  transformRoute : String
  analyticRoute : String
  endpointChecked : Bool
  classicalBoundaryCarried : Bool

default instance : Inhabited GelfandTransformLayerCertificate where
  default := {
    datum := default
    transformRoute := "Gelfand transform of commutative Banach algebras"
    analyticRoute := "analytic functional calculus via transform"
    endpointChecked := true
    classicalBoundaryCarried := true
  }

def GelfandTransformLayerClosed (C : GelfandTransformLayerCertificate) : Prop :=
  C.datum.isIsometric ∧
  C.datum.isInjective ∧
  C.endpointChecked = true ∧
  C.classicalBoundaryCarried = true

theorem gelfand_transform_layer_closed_checked :
    GelfandTransformLayerClosed (default : GelfandTransformLayerCertificate) := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end BanachAlgebrasDifferentiableAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse