function first { process { $_ } }    # end block by default
filter second { $_ }     # process block by default
1..2 | first             # Outputs the value of $_ from explicit process

# Expects output:
#
# 1
# 2

1..2 | second            # Outputs the value of $_ from implicit process

# Expects output:
#
# 1
# 2