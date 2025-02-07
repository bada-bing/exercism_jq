["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"] as $baseColors |
.colors as $v | $v[0:2] |
map(. as $tmp | $baseColors | index($tmp)) |
join("") | tonumber