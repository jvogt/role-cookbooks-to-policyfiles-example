// NOTE: This is only an example of the habitat provisioner pulling in different user toml based on environment

resource "aws_instance" "acme_app_1_prod" {
  count = 3

  provisioner "habitat" {
    peer = "${aws_instance.acme_app_1_prod.0.private_ip}"
    use_sudo = true
    service_type = "systemd"

    service {
      name = "jvogt/acme_app_1"
      topology = "leader"
      user_toml = "${file("conf/prod.toml")}"
    }
  }
}

resource "aws_instance" "acme_app_1_dev" {
  count = 3

  provisioner "habitat" {
    peer = "${aws_instance.acme_app_1_dev.0.private_ip}"
    use_sudo = true
    service_type = "systemd"

    service {
      name = "jvogt/acme_app_1"
      topology = "leader"
      user_toml = "${file("conf/dev.toml")}"
    }
  }
}
