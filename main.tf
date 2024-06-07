
module "vpc" {
    source = "./modules/vpc"
}

module ecs {
    source = "./modules/ecs"

}

module eks {
    source = "./modules/eks"
}

module rds {
    source = "./modules/rds"
}
