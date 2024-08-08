import AutograderLib

-- Tests for autograded from Homework 1

opaque α : Type
opaque β : Type
opaque γ : Type

@[autograded 1] def B : (α → β) → (γ → α) → γ → β := sorry
@[autograded 1] def S : (α → β → γ) → (α → β) → α → γ := sorry
@[autograded 1] def moreNonsense : (γ → (α → β) → α) → γ → β → α := sorry
@[autograded 2] def weakPeirce : ((((α → β) → α) → α) → β) → β := sorry

-- Tests for autogradedDef 

@[autogradedDef 1] def isOne : Nat := 1
@[autogradedDef 1] def isTwo : Nat := 2
@[autogradedDef 1] def isThree : Nat := 3

/- Stretch goals

Homework 1 Question 3.1. Define the function `reverse`, which takes a list (whose
elements have arbitrary type `α`) and reverses it. Write the type signature and
implement this function. Make the type `α` an implicit argument.

def reverse {α : Type} : List α → List α
  | List.nil       => List.nil
  | x :: xs        => reverse xs ++ [x]

ALTERNATIVE: test cases

#eval reverse [1, 2, 3, 4, 5] -- expected: [5, 4, 3, 2, 1]
#eval reverse ([] : List ℕ)  -- expected: []
#eval @reverse ℕ []          -- expected: []

-/
