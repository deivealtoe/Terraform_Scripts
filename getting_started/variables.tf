variable "amis" {
    type = map

    default = {
        "us-east-1" = "ami-033b95fb8079dc481"
        "us-east-2" = "ami-0fb653ca2d3203ac1"
    }
}

variable "instancia_t2_micro" {
    default = "t2.micro"
}

variable "cdirs_acesso_remoto" {
    type = list

    default = [
        "168.181.127.219/32"
    ]
}

variable "chave_us-east-1" {
    default = "terraform-aws-key"
}

variable "chave_us-east-2" {
    default = "terraform-aws-key-east-2"
}
