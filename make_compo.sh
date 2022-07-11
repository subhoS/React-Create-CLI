#ct = Container
#cmp = Component

len=$(echo $1 | awk '{print length($0)}')
nameLen=$(echo $2 | awk '{print length($0)}')


VAR1="ct"
VAR2="cmp"


if [[ $len -gt 0 ]]; then
  if [ "$1" = "$VAR1" ]; then
    echo "User Selected a Container."
  elif [[ "$1" = "$VAR2" ]]; then
    echo "User Selected a Component."
  else
    echo "Invalid Name!!  \n 'Choose ct for container' \n 'cmp for component'"
  fi
else
  echo "No Argument Found example 'make_compo.sh type name'"
fi

#if [[ $typeLen -gt 0 ]]
#then
#   mkdir -p src/container/$1
#   touch src/container/$1/$1.page.tsx
#   touch src/container/$1/$1.page.style.ts
#   echo "$1 Container Added Successfully"
#else
#   echo "No Name Input"
#fi
