package main

import (
	do "gopkg.in/godo.v2"
)

func tasks(p *do.Project) {
	p.Task("default", do.S{"build"}, nil)

	p.Task("build", nil, func(c *do.Context) {
		c.Run("GOOS=linux GOARCH=amd64 go build", do.M{"$in": "./"})
	}).Src("**/*.go")

	p.Task("get?", nil, func(c *do.Context) {
		c.Run("go get -v", do.M{"$in": "./"})
	})

	p.Task("server", do.S{"get"}, func(c *do.Context) {
		c.Run("echo 'exec server'")
		c.Start("main.go", do.M{"$in": "./"})
	}).Src("*.go", "**/*.go").Debounce(3000)
}

func main() {
	do.Godo(tasks)
}
