for i in {1..12}
do
  touch src/Chapter$i.hs
  echo -e "module Chapter$i where\n\nimport Data.List\nimport Data.Char\nimport Data.Maybe" > src/Chapter$i.hs
done