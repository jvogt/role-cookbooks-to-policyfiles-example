# Example Pipeline for policyfiles (Starbucks example):

Note: This is not for hab managed, and depends on the chef-server

* Cookbook pipeline:
  1) Triggered by commit
  2) Lint / Syntax / Unit test
  3) (Test kitchen optional but not required here)
  4) `berks upload` to chef server to include all dependencies
  5) [END]
  
* Policyfile pipeline
  1) Triggered by commit, or maybe dependent cookbook pipeline
  2) `chef install` (build new lockfile.  Should be able to 100% source chef server here unless you have a run_list that refers directly to a community cookbook)
  3) Test Kitchen for compliance and integration tests 
  4) `chef push` to policy group `dev`
  5) [wait for approval]
  4) `chef push` to policy group `stage`
  5) [wait for approval]
  4) `chef push` to policy group `prod`
  5) [END]