import canonicalLaneMathlib.AdmissibleClass
import BanachAlgebrasDifferentiableAnalyticFunctionsFoundation.BanachAlgebraLayer
import BanachAlgebrasDifferentiableAnalyticFunctionsFoundation.DifferentiableAnalyticLayer

namespace HautevilleHouse
namespace BanachAlgebrasDifferentiableAnalyticFunctionsFoundation

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.operatorModelWitness,
    A.object.spectralPersistenceBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end BanachAlgebrasDifferentiableAnalyticFunctionsFoundation
end HautevilleHouse