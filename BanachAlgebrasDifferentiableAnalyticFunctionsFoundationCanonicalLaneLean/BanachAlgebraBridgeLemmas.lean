import canonicalLaneMathlib.AdmissibleClass
import BanachAlgebrasDifferentiableAnalyticFunctionsFoundationCanonicalLaneLean.BanachAlgebraAdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebrasDifferentiableAnalyticFunctionsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.complete, A.object.analyticStructure, A.endpointSatisfied, A.remainderRecorded, A.gateWitness⟩

end BanachAlgebrasDifferentiableAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse