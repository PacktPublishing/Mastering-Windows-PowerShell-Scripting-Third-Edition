[MyClass]::new() | Get-Member get_*, set_* -Force

# Expects output:
#
#    TypeName: MyClass

# Name            MemberType    Definition
# ----            ----------    ----------
# get_Property    Method        string get_Property()
# set_Property    Method        void set_Property(string )