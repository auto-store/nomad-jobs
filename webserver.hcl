job "nginx" {


  group "web-server" {
    count = 2


    update {
      max_parallel     = 2
      min_healthy_time = "30s"
      healthy_deadline = "10m"
    }

    task "server" {
      driver = "docker"

      config {
        image = "nginx:1.17"
      }

      # ...
    }
  }
}