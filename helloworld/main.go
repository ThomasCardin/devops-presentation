package main

import (
	"os"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	helloWorldK8S, err := os.LookupEnv("K8S_HELLO_WORLD")
	if !err {
		helloWorldK8S = "k8s env var not found"
	}

	helloWorldDocker, err := os.LookupEnv("DOCKER_HELLO_WORLD")
	if !err {
		helloWorldDocker = "docker env not found"
	}

	// For readinessProbe
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "200 ok",
		})
	})

	r.GET("/hello", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message":        "pong",
			"docker_message": helloWorldK8S,
			"k8s_message":    helloWorldDocker,
		})
	})

	r.Run() // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
