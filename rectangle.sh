read -p "Enter the width " width
read -p "Enter height of rectangle in meters: " height 

sqm=$((width*height | bc -l))
sqin=$((sqm*1550 | bc -l))

echo "Area of the rectangle is: $sqm Square Meters or $sqin Square Inches."