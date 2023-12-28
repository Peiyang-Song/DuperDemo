import Lake
open Lake DSL

package «duperDemo» {
  -- add any package configuration options here
  moreLinkArgs := #["-L./.lake/packages/LeanCopilot/.lake/build/lib", "-lctranslate2"] -- for Lean Copilot
}

require «mathlib» from git "https://github.com/leanprover-community/mathlib4" @ "v4.4.0-rc1"

require «Duper» from git "https://github.com/leanprover-community/duper.git" @ "v0.0.5"

@[default_target]
lean_lib «DuperDemo» {
  -- add library configuration options here
}

require LeanCopilot from git "https://github.com/lean-dojo/LeanCopilot.git" @ "v1.0.1"
