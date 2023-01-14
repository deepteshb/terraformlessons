# Use of Variables
# Types of Variables
# Variable Definition
# Passing Variables 
    - in Runtime using : terraform apply -var "filename=/root/pets.txt"
    - using environment variables : export TF_VAR_filename ="/root/pets.txt" OR $env:TF_VAR_filename = '/root/pets.txt'
    - using tfvars file or somename.auto.tfvars: filename = "/root/pets.txt" > terraform apply -var-file variables.tfvars

# Variables precedence : envvariabels < tfvars < autotfvars < -var or -var-file
# Implicit Dependency of Resources
