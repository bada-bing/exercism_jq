# "Remove this line and implement your solution" | halt_error
# 3 Pling
# 5 Plang
# 7 Plong
# otherwise return number as a string
# e.g., 30 is divisible by 3 and 5 so it is PlingPlang
#
#
# 8, 10, 12 | if . < 10 then "\(.) is less than ten"
#             elif . > 10 then "\(.) is more than ten"
#             else "\(.) equals ten"
#             end

# def plingplangplong:
    # (if (.number % 3 == 0) then "Pling" else "" end) +
    # (if (.number %5 == 0) then "Plang" else "" end) +
    # (if (.number %7 == 0) then "Plong" else "" end);
#
# . as $n | plingplangplong | if . == "" then $n.number else . end


.number as $n |
  (
    (if $n % 3 == 0 then "Pling" else "" end) +
    (if $n % 5 == 0 then "Plang" else "" end) +
    (if $n % 7 == 0 then "Plong" else "" end)
  ) as $result |
  if $result == "" then $n else $result end
