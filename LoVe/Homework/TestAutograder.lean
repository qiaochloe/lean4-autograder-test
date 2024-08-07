import AutograderLib

opaque α : Type
opaque β : Type
opaque γ : Type

@[autograded 1] def B : (α → β) → (γ → α) → γ → β :=
  sorry

@[autograded 1] def S : (α → β → γ) → (α → β) → α → γ :=
  sorry

@[autograded 1] def moreNonsense : (γ → (α → β) → α) → γ → β → α :=
  sorry

@[autograded 1] def evenMoreNonsense : (α → α → β) → (β → γ) → α → β → γ :=
  sorry

@[autograded 2] def weakPeirce : ((((α → β) → α) → α) → β) → β :=
  sorry
