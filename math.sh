#!/bin/bash

add() {
  result=$(( $1 + $2 ))
  echo "Addition: $1 + $2 = $result"
}

subtract() {
  result=$(( $1 - $2 ))
  echo "Subtraction: $1 - $2 = $result"
}

multiply() {
  result=$(( $1 * $2 ))
  echo "Multiplication: $1 * $2 = $result"
}

divide() {
  if [ $2 -ne 0 ]; then
    result=$(( $1 / $2 ))
    echo "Division: $1 / $2 = $result"
  else
    echo "Error: Division by zero is not allowed."
  fi
}

echo "Select a mathematical operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter the number of your choice (1-4): " operation

echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2

case $operation in
  1)
    add $num1 $num2
    ;;
  2)
    subtract $num1 $num2
    ;;
  3)
    multiply $num1 $num2
    ;;
  4)
    divide $num1 $num2
    ;;
  *)
    echo "Invalid choice! Please select a valid operation (1-4)."
    ;;
esac

