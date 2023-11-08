provider "digitalocean" {

}

##------------------------------------------------
## Domain module call
##------------------------------------------------
module "domain" {
  source = "./../"
  name   = "test.shello.com"

  records = {
    record1 = {
      type  = "A"
      name  = "class"
      value = "192.168.0.12"
    },
    record2 = {
      type  = "A"
      name  = "class2"
      value = "192.168.0.13"
    },
  }

}