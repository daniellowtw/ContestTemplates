package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// Utility to convert "1 2 3 4" to []int{1,2,3,4}
func cleanString(stream string, seperator string) []int {
	trimmed_stream := strings.TrimSpace(stream)
	split_arr := strings.Split(trimmed_stream, seperator)
	clean_arr := make([]int, len(split_arr))
	for index, val := range split_arr {
		clean_arr[index], _ = strconv.Atoi(val)
	}
	return clean_arr
}

// First line contains a single integer n,
// Second line contiains n space separated integers
func readPattern1() {
	ir := bufio.NewReader(os.Stdin)
	ir.ReadString('\n')
	lineInput1, _ := ir.ReadString('\n')
	in1 := cleanString(lineInput1, " ")
	fmt.Printf("%d", f(in1))
}

// First line contains integer n and m
// Subsequent m lines contains space separated mixed known length of inputs
func readPattern2() []int {
	ir := bufio.NewReader(os.Stdin)
	var m, n int
	fmt.Fscanf(ir, "%d %d\n", &n, &m)
	for i := 0; i < m; i++ {
		line, _, _ := ir.ReadLine()
		trimmed_stream := strings.TrimSpace(string(line))
		split_arr := strings.Split(trimmed_stream, " ")
		switch len(split_arr) {
		case 2:
			x, _ := strconv.Atoi(split_arr[0])
			y, _ := strconv.Atoi(split_arr[1])
		case 3:
			x, _ := strconv.Atoi(split_arr[0])
			y, _ := strconv.Atoi(split_arr[1])
			z, _ := strconv.Atoi(split_arr[1])
		}
	}
	return f(lines)
}
