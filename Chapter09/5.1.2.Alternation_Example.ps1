'one', 'one hundred', 'three', 'eighty three' | Where-Object { $_ match '^one|three$' }

# Expects output:
#
# one
# one hundred
# three
# eighty three