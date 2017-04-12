=begin
You need to write regex that will validate a password to make sure it meets the following criteria:

At least six characters long    (\A[a-zA-Z0-9]{6,}\z)}])
contains a lowercase letter
contains an uppercase letter
contains a number
Valid passwords will only be alphanumeric characters.
=end

regex=/
        (?=.*[0-9])
        (?=.*[a-z])
        (?=.*[A-Z])
        (\A[a-zA-Z0-9]{6,}\z)
    /

=begin

regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[0-9a-zA-Z]{6,}$/

#^ - start of string
#(?=.*[a-z]) - positive lookahead to see if atleast one lowercase letter exists
#(?=.*[A-Z]) - positive lookahead to see if atleast one uppercase letter exists
#(?=.*\d) - positive lookahead to see if atleast one digit exists
#[0-9a-zA-Z] - making sure rest of password is alphanumeric characters
#{6,} - consists of 6 or more characters
#$ - end of string
=end
