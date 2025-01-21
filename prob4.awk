BEGIN {
    #initialises the formula as string
    formula = "";
    }

    # The next line of code gets the number of vertices from the first line
    # and stores it in the variable n
    NR == 1 { n = $1; }

    # Write code below to generate clauses ensuring that
    # each edge must be included in the vertex cover
    
    NR > 1 {
        var1 = $1;
        var2 = $3; 
        clause = "(v" var1 "|v" var2")";

        if (formula == "") {
            formula = clause;
        } else {
            formula = formula "&" clause;
        }

    # The line below should work in conjunction with what you wrote
    # above, to add each edge into an associative array for checking later

        a[var1, var2] = 1;
        a[var2, var1] = 1;

    }
    

    END {
    # Looping through triples of vertices in the array we created
    for (i = 1; i <= n-2; i++)
    {
        for (j = i+1; j <= n-1; j++)
        {
            if (a[i, j] == 1) # (i,j) edge found, now check for triangles
            {
                for (k = j+1; k <= n; k++)
                {
                    if (a[i, k] == 1 && a[j, k] == 1)
                    {
                        # Triangle found! Write code here to ensure
                        # the triangle is excluded from the vertex cover
                        # Your code goes here
                        
                        clause = "(~v" i"|~v" j"|~v" k")";

                        if (formula == "") {
                            formula = clause;
                        } else {
                            formula = formula "&" clause;
                        }                
                    }
                }
            }
        }
    }

    print "sage -c 'print(propcalc.formula(\"" formula "\").is_satisfiable())'" 
}
