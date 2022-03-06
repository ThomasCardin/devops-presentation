package main

import (
	"os"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	osValue := os.Getenv("var")

	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message":    "pong",
			"os_message": osValue,
		})
	})
	r.Run() // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
