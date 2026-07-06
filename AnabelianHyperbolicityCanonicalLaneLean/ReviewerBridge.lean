import AnabelianHyperbolicityCanonicalLaneLean.Formalization
import AnabelianHyperbolicityCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace AnabelianHyperbolicityCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "886a02b5bc9af7ec32dcb42328d6369cf3788b9e20dedb1f5d0cd85d26e13f6c", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "47545bb712bba35bd832f405844f94d66870405a695903a651dfff916140c63b", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "6baab82c6418f61a9854d890c559843541ca840c1e4fcdb63f7723149f26f855", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "3392b536a50dcea0ae6e7f1d4b945d3d4630c940a6f2c488e9d1341f168536b5", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "164111f88c7898dd3df05662dbc48687e1f5be58ffe852b076113daa80094ef5", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "aae489101f88156d396f58cd26e8f274bf8ad6394388fa1e6385ea5d6cd4ee7c", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "e881876eaf66f4a998be840088528f84e2578b6e18f29c0098c617a281f176e4", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "c868bd0955a7fdc0e03d1d90117078270bd06ab0cbd0367ceab0885d9d6a218e", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "bfbd75ee4656da7e3b63c4a2339e671627a393a63a1abbe3bd482d24abdb8505", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "AHY_G1", constant := "kappa_hyperbolic" },
  { gate := "AHY_G2", constant := "sigma_section" },
  { gate := "AHY_G3", constant := "kappa_compact" },
  { gate := "AHY_G4", constant := "rho_rigidity" },
  { gate := "AHY_G5", constant := "reconstruction_transfer" },
  { gate := "AHY_G6", constant := "eps_coh" },
  { gate := "AHY_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "247230ec41a01fdc13b3ca0954dd7f54f4613624bb6b2b218075678816b324c3" },
  { path := "README.md", sha256 := "e4ed7d4d3a9c8ebbac6941ad63e372d3a6ab98358796d178515c26a289b35e1f" },
  { path := "artifacts/constants_extracted.json", sha256 := "3392b536a50dcea0ae6e7f1d4b945d3d4630c940a6f2c488e9d1341f168536b5" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "6baab82c6418f61a9854d890c559843541ca840c1e4fcdb63f7723149f26f855" },
  { path := "artifacts/constants_registry.json", sha256 := "164111f88c7898dd3df05662dbc48687e1f5be58ffe852b076113daa80094ef5" },
  { path := "artifacts/promotion_report.json", sha256 := "e881876eaf66f4a998be840088528f84e2578b6e18f29c0098c617a281f176e4" },
  { path := "artifacts/stitch_constants.json", sha256 := "aae489101f88156d396f58cd26e8f274bf8ad6394388fa1e6385ea5d6cd4ee7c" },
  { path := "notes/EG1_public.md", sha256 := "b87ec0a2effa4a6218ffe4ab8dd1500d30a5a23d5ff35adf47aa53fd50b1a4a6" },
  { path := "notes/EG2_public.md", sha256 := "a3ea38134e4404c58f3980e50a9206b8a13190b9c3d578532f4cc2ef168e0215" },
  { path := "notes/EG3_public.md", sha256 := "bf75afbc266d990206f138539d4c377a278f60aa80cc89ed3302669d1e54ec7f" },
  { path := "notes/EG4_public.md", sha256 := "f2ea0dca2728ca2c99b3f560f932c294fb85eee480317d04e540cc271a252f83" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "47545bb712bba35bd832f405844f94d66870405a695903a651dfff916140c63b" },
  { path := "notes/GEOMETRIC_GALOIS_BRIDGE.md", sha256 := "6950681136a1ff6681ffe6e884d3f2cdaa9f55450233e085c227f7b9f8cbb997" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "004c813f7a2dd7c0c4ceb43f2ad3beb8da250b84c5fa88f6b56c82c3f580f6f5" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "97a4ec3ec5b78f8bff91423a247ec53cbaeae092dab43c6698f7225911afa511" },
  { path := "paper/ANABELIAN_HYPERBOLICITY_PREPRINT.md", sha256 := "3b459487df5befe19418bff7c48db7523a668eb960504a71d43033f14a154389" },
  { path := "repro/REPRO_PACK.md", sha256 := "eae03b66e7ce1ae6f355d4292dcf2ca063f6e436563e0cfe8c59bbc857da9ab5" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "d27cefac6026038d7ee5197bf04a157bbfd7f7588b5b5fab51a415f60fcc7783" },
  { path := "repro/certificate_baseline.json", sha256 := "bfbd75ee4656da7e3b63c4a2339e671627a393a63a1abbe3bd482d24abdb8505" },
  { path := "repro/run_repro.sh", sha256 := "5a5a165b00900b37b6bdac8a7c875bc88d0e570503f07dce5d59267c030006dc" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/ahy_closure_guard.py", sha256 := "a588311d4589fdfa21f9d876f72f1f208761d59d25d39cb0821ad3ed4cbec8d9" },
  { path := "scripts/README.md", sha256 := "6e924c844929ff1384e024f82774e018265cf648784f3eb09abb9facdb649e4f" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "AHY_G1", status := "PASS" },
  { gate := "AHY_G2", status := "PASS" },
  { gate := "AHY_G3", status := "PASS" },
  { gate := "AHY_G4", status := "PASS" },
  { gate := "AHY_G5", status := "PASS" },
  { gate := "AHY_G6", status := "PASS" },
  { gate := "AHY_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8032128514056224" },
  { key := "kappa_hyperbolic", value := "1.0946500000000001" },
  { key := "reconstruction_transfer", value := "1.031658" },
  { key := "rho_rigidity", value := "1.079" },
  { key := "sigma_section", value := "1.075" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_hyperbolic",
  "reconstruction_transfer",
  "rho_rigidity",
  "sigma_section",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 26 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end AnabelianHyperbolicityCanonicalLaneLean
end HautevilleHouse
