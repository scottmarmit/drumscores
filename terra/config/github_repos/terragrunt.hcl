include {
  path = find_in_parent_folders()
}

terraform {
  source = "${get_repo_root()}/terra/modules//repository"
}

inputs = {
  repo_name = "drumscores"
}
