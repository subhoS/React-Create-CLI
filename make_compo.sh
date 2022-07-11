#ct = Container
#cmp = Component
len=$(echo $1 | awk '{print length($0)}')
nameLen=$(echo $2 | awk '{print length($0)}')


VAR1="ct"
VAR2="cmp"

if [[ $len -gt 0 ]] && [[ $nameLen -gt 0 ]]; then
  if [ "$1" = "$VAR1" ]; then
    mkdir -p src/containers/$2
    touch src/containers/$2/$2.page.tsx
    touch src/containers/$2/$2.page.style.ts
    echo "$1 Added Successfully In Container"
  elif [[ "$1" = "$VAR2" ]]; then
    mkdir -p src/components/$2
    touch src/components/$2/$2.component.tsx
    touch src/components/$2/$2.component.style.ts
    echo "$1 Added Successfully In Container"
  else
    echo "Invalid Name!!  \n 'Choose ct for container' \n 'cmp for component'"
  fi
else
  echo "One or More Argument Missing \n --example 'make_compo.sh type name'"
fi

