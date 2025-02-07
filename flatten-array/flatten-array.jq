# 1st solution: .array | [recurse(.[]? ; . != null) | select(type != "array")]
flatten | map(select(. != null))
