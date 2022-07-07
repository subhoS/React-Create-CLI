#ct = Container
#cmp = Component

len=$(echo $1 | awk '{print length($0)}')

if [[ $len -gt 0 ]]
then
   mkdir -p src/container/$1
   touch src/container/$1/$1.page.tsx
   touch src/container/$1/$1.page.style.ts
   echo "$1 Container Added Sucessfully"
else
   echo "Not a valid container name"
fi