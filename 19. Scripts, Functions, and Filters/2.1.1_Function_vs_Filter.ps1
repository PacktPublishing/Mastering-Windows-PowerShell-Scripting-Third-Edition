function first { $_ }    # end block by default
filter second { $_ }     # process block by default
1..2 | first             # No output, $_ is not filled in end
1..2 | second            # Outputs $_ from process

# Expects output:
#
# 1
# 2