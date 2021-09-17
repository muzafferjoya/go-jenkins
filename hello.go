package main

import (
	"fmt"

	"github.com/muzafferjoya/go-jenkins/sum"
)

func main() {
	s := sum.Sum(1, 2)
	fmt.Println(s)
}
