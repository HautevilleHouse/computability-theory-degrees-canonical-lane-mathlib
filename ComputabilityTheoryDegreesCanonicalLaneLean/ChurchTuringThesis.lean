import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ComputabilityTheoryDegreesCanonicalLaneLean

structure ChurchTuringThesis where
  turingMachineEquivalence : Prop
  lambdaCalculusEquivalence : Prop
  recursiveFunctionsEquivalence : Prop
  markovAlgorithmsEquivalence : Prop

structure ChurchTuringThesisEvidence (C : ChurchTuringThesis) where
  turingMachineEquivalenceClosed : C.turingMachineEquivalence
  lambdaCalculusEquivalenceClosed : C.lambdaCalculusEquivalence
  recursiveFunctionsEquivalenceClosed : C.recursiveFunctionsEquivalence
  markovAlgorithmsEquivalenceClosed : C.markovAlgorithmsEquivalence

def ChurchTuringThesisClosed (C : ChurchTuringThesis) : Prop :=
  C.turingMachineEquivalence ∧ C.lambdaCalculusEquivalence ∧
  C.recursiveFunctionsEquivalence ∧ C.markovAlgorithmsEquivalence

theorem church_turing_thesis_closed_from_evidence
    (C : ChurchTuringThesis) (E : ChurchTuringThesisEvidence C) :
    ChurchTuringThesisClosed C := by
  exact And.intro E.turingMachineEquivalenceClosed
    (And.intro E.lambdaCalculusEquivalenceClosed
      (And.intro E.recursiveFunctionsEquivalenceClosed
        E.markovAlgorithmsEquivalenceClosed))

end ComputabilityTheoryDegreesCanonicalLaneLean
end HautevilleHouse