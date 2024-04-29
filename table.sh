#!/bin/bash

echo "Welcome to the Darey.io Project Multiplication Table Generator!"

read -p "Enter a number for the multiplication table: " number

read -p "Do you want a full table of partial table? (Enter 'f' for full, 'p' for partial): " full_table

# Validate user input for number

if ! [[ "$number" =~ ^[1-9]$|^10$ ]]; then
    echo "Invalid input! Please enter a number between 1 and 10."
    exit 1
fi

# Validate user input for full_table

if [[ "$full_table" != "f" && "$full_table" != "p" ]]; then
    echo "Invalid input! Please enter either 'f' or 'p'."
    exit 1
fi

# Generate multiplication table
if [[ "$full_table" == "f" ]]; then
    start=1
    end=10
else
    read -p "Enter the start number (between 1 and 10): " start
    read -p "Enter the end number (between 1 and 10): " end

    # Validate user input for start and end numbers
    if ! [[ "$start" =~ ^[1-9]$|^10$ ]] || ! [[ "$end" =~ ^[1-9]$|^10$ ]]; then
        echo "Invalid input! Please enter numbers between 1 and 10."
        exit 1
    fi
fi

# Display multiplication table
echo "Multiplication Table for $number:"
for ((i=start; i<=end; i++)); do
    echo "$number x $i = $((number * i))"
done
while true; do
    

# Display multiplication table with different formatting styles
echo "Multiplication Table for $number:"

# Loop through the formatting styles
for style in "Style 1" "Style 2" "Style 3"; do
    echo "----- $style -----"
    for ((i=start; i<=end; i++)); do
        echo -n "$number x $i = $((number * i))"

        # Apply formatting based on the style
        case $style in
            "Style 1")
                echo -n "   "
                ;;
            "Style 2")
                echo -n " | "
                ;;
            "Style 3")
                echo -n "      "
                ;;
        esac
    done
    echo
done
# Prompt the user to repeat the program
    read -p "Do you want to generate a multiplication table for another number? (yes/no): " repeat
    
    # Validate user input for repeat
    if [[ "$repeat" != "yes" ]]; then
        break
    fi

    # Rest of the code goes here (from Step 1 to Step 3)
done
