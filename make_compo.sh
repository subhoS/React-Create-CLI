echo "Enter Container Name"
read VAR1

len=$(echo $VAR1 | awk '{print length($0)}')

if [[ $len -gt 0 ]]
then
   mkdir -p src/container/$VAR1
   touch src/container/$VAR1/$VAR1.page.tsx
   touch src/container/$VAR1/$VAR1.page.style.ts
   echo "$VAR1 Container Added Sucessfully"
else
   echo "Not a valid container name"
fi