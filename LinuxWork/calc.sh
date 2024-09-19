#!/bin/bash

# Function for addition
add() {
    result=$(echo "$1 + $2" | bc)
    echo "The sum is: $result"
}

# Function for subtraction
subtract() {
    result=$(echo "$1 - $2" | bc)
    echo "The difference is: $result"
}

# Function for multiplication
multiply() {
    result=$(echo "$1 * $2" | bc)
    echo "The product is: $result"
}

# Function for division
divide() {
    if [[ $2 == 0 ]]; then
        echo "Error: Division by zero!"
    else
        result=$(echo "scale=2; $1 / $2" | bc)
        echo "The quotient is: $result"
    fi
}

# Function for power (exponentiation)
power() {
    result=$(echo "$1 ^ $2" | bc)
    echo "$1 raised to the power of $2 is: $result"
}

# Function for square root
sqrt() {
    result=$(echo "scale=2; sqrt($1)" | bc)
    echo "The square root of $1 is: $result"
}

# Menu to select operation
while true; do
    echo "Choose an operation:"
    echo "1) Addition"
    echo "2) Subtraction"
    echo "3) Multiplication"
    echo "4) Division"
    echo "5) Power"
    echo "6) Square root"
    echo "7) Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            add $num1 $num2
            ;;
        2)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            subtract $num1 $num2
            ;;
        3)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            multiply $num1 $num2
            ;;
        4)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            divide $num1 $num2
            ;;
        5)
            read -p "Enter the base number: " num1
            read -p "Enter the exponent: " num2
            power $num1 $num2
            ;;
        6)
            read -p "Enter the number for square root: " num1
            sqrt $num1
            ;;
        7)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice, please try again!"
            ;;
    esac
    echo ""
done
