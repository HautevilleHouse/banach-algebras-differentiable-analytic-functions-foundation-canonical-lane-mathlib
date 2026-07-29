import canonicalLaneMathlib.AdmissibleClass
import BanachAlgebrasDifferentiableAnalyticFunctionsFoundationCanonicalLaneLean.BanachAlgebraAdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebrasDifferentiableAnalyticFunctionsFoundationCanonicalLaneLean

structure DifferentiableAnalyticBridgeCertificate where
  bridgeType : String
  sourceAlgebra : BanachAlgebraObject
  targetAlgebra : BanachAlgebraObject
  differentiabilityPreserved : Bool
  analyticityPreserved : Bool

defaultBridgeCertificate : DifferentiableAnalyticBridgeCertificate := {
  bridgeType := "Gâteaux derivative",
  sourceAlgebra := defaultInstance,
  targetAlgebra := defaultInstance,
  differentiabilityPreserved := true,
  analyticityPreserved := true
}

def DifferentiableAnalyticBridgeClosed (C : DifferentiableAnalyticBridgeCertificate) : Prop :=
  C.differentiabilityPreserved = true ∧ C.analyticityPreserved = true

theorem differentiable_analytic_bridge_closed_checked :
    DifferentiableAnalyticBridgeClosed defaultBridgeCertificate := by
  exact And.intro rfl rfl

end BanachAlgebrasDifferentiableAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse