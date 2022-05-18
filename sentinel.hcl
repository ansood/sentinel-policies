
module "tfplan-functions" {
  source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfplan/v2" {
  source = "./test/restrict-vm-cpu-and-memory/mock-tfplan-pass.sentinel"
}

policy "restrict-vm-cpu-and-memory" {
  source = "./restrict-vm-cpu-and-memory.sentinel"
  enforcement_level = "hard-mandatory"
}

