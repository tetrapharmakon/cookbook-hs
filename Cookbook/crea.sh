for i in {1..12}
do
  echo -e "module Chapter$i.Scratchpad$i where\n\nimport Data.List\nimport Data.Char\nimport Data.Maybe" > Chapter$i/Scratchpad$i.hs
done