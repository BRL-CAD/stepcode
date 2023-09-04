#!/bin/bash
find . -type f -path "*/cl*" -not -path "*.git/*" -not -path "*/exp*" -regex '.*\(c\|cc\|cpp\|cxx\|h\|hpp\)$' -exec perl -0777 -pi -e "s/include \"$1\"/include \"utils\/$1\"/g" {} \;
find . -type f -path "*/cl*" -not -path "*.git/*" -not -path "*/exp*" -regex '.*\(c\|cc\|cpp\|cxx\|h\|hpp\)$' -exec perl -0777 -pi -e "s/include <$1>/include \"utils\/$1\"/g" {} \;

find . -type f -path "*/include*" -not -path "*.git/*" -regex '.*\(c\|cc\|cpp\|cxx\|h\|hpp\)$' -exec perl -0777 -pi -e "s/include \"$1\"/include \"utils\/$1\"/g" {} \;
find . -type f -path "*/include*" -not -path "*.git/*" -regex '.*\(c\|cc\|cpp\|cxx\|h\|hpp\)$' -exec perl -0777 -pi -e "s/include <$1>/include \"utils\/$1\"/g" {} \;

find . -type f -path "*/test*" -not -path "*.git/*" -regex '.*\(c\|cc\|cpp\|cxx\|h\|hpp\)$' -exec perl -0777 -pi -e "s/include \"$1\"/include \"utils\/$1\"/g" {} \;
find . -type f -path "*/test*" -not -path "*.git/*" -regex '.*\(c\|cc\|cpp\|cxx\|h\|hpp\)$' -exec perl -0777 -pi -e "s/include <$1>/include \"utils\/$1\"/g" {} \;

