package main

import (
	"fmt"
)

func main() {

	fmt.Print("Введите температуру по Фаренгейту: ")
	var input float64
	fmt.Scanf("%f", &input)

	output := (input - 32) * 5 / 9

	fmt.Println("Температура в грудусах:", output)

}
