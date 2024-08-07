import Lake

open Lake DSL

def extraArgs := #["-DautoImplicit=false", "-Dlinter.unusedVariables=false"]

package love {
  moreServerArgs := extraArgs
}

@[default_target]
lean_lib LoVe {
  roots := #[`LoVe]
  globs := #[Glob.submodules `LoVe]
  moreLeanArgs := extraArgs 
}

require mathlib from git "https://github.com/leanprover-community/mathlib4" @ "v4.10.0"
require autograder from git "https://github.com/qiaochloe/lean4-autograder-main" @ "7b389cac593fa1881f07916ff9818b208a958eef"
