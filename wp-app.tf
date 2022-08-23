resource "yandex_compute_instance" "wp-app-1" {
  name = "wp-app-1"
  zone = "ru-central1-a"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8863qv86t8m6b1qrg4"
    }
  }

  network_interface {
    # Указан id подсети default-ru-central1-a
    subnet_id = yandex_vpc_subnet.wp-subnet-a.id
    nat       = true
  }

  metadata = {
    ssh-keys = "nikandrov:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDc39+ovJDrowqxSf2JyrehPW1QCtqOItdB1s4QSSXrlKKS5VdPGgRx+gO4VTMnxJZqxeydQgnn3AJFLq5UMqi/iYkv11ySdNafQs2cItDz7e+KMF2ipgKiYcdhk13g7vbSuGR2SqDKfKUKjXPubC34V2fDagp/uzcuSOSdw3QLbjdp3gIen+zALFto2FWRGnJzFyzlVwOsEXy/qXr9ArmOUj7S8IWqtfXpiDBjljo+iNBZKfyTh5iTHMfcYEA7UANzN1TfGxH9T8BHqW4MfrLbPNOQuGKseKnn3lc3IAsbBbsUByZdAr3XoNfHP1qNbuUed/aUqtgTOMbhjgEjwOwjN7uG0Dev0IxIp3CJQdh+xnBt4m9/mmrxrpZ4F/zNhrfPRV59lD2nXqQulCCKftEbp8Q8qu4FOpddt+CZSlDnpXg8aHGfLAUcjpbDXeYoXX3/ARZbeGseGzNncw8Sl90dd3Gl67ph+u74pkcSMdjVnR9aGsU75bxqERbi1oXn4Ss= nikandrov@packer"
  }
}

resource "yandex_compute_instance" "wp-app-2" {
  name = "wp-app-2"
  zone = "ru-central1-b"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8863qv86t8m6b1qrg4"
    }
  }

  network_interface {
    # Указан id подсети default-ru-central1-a
    subnet_id = yandex_vpc_subnet.wp-subnet-b.id
    nat       = true
  }

  metadata = {
    ssh-keys = "nikandrov:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDc39+ovJDrowqxSf2JyrehPW1QCtqOItdB1s4QSSXrlKKS5VdPGgRx+gO4VTMnxJZqxeydQgnn3AJFLq5UMqi/iYkv11ySdNafQs2cItDz7e+KMF2ipgKiYcdhk13g7vbSuGR2SqDKfKUKjXPubC34V2fDagp/uzcuSOSdw3QLbjdp3gIen+zALFto2FWRGnJzFyzlVwOsEXy/qXr9ArmOUj7S8IWqtfXpiDBjljo+iNBZKfyTh5iTHMfcYEA7UANzN1TfGxH9T8BHqW4MfrLbPNOQuGKseKnn3lc3IAsbBbsUByZdAr3XoNfHP1qNbuUed/aUqtgTOMbhjgEjwOwjN7uG0Dev0IxIp3CJQdh+xnBt4m9/mmrxrpZ4F/zNhrfPRV59lD2nXqQulCCKftEbp8Q8qu4FOpddt+CZSlDnpXg8aHGfLAUcjpbDXeYoXX3/ARZbeGseGzNncw8Sl90dd3Gl67ph+u74pkcSMdjVnR9aGsU75bxqERbi1oXn4Ss= nikandrov@packer"
  }
}
