import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebrasDifferentiableAnalyticFunctionsFoundationCanonicalLaneLean

structure BanachAlgebraObject where
  algebra : Type u
  norm : algebra → ℝ
  complete : Bool
  analyticStructure : Prop

defaultInstance : BanachAlgebraObject := {
  algebra := Unit,
  norm := λ _ => 0,
  complete := true,
  analyticStructure := True
}

structure AdmissibleClass where
  object : BanachAlgebraObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BanachAlgebrasDifferentiableAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse