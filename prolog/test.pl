

main :- write('Hello World!').



next_to(california, oregon).
next_to(california, nevada).
next_to(california, arizona).
next_to(oregon, california).
next_to(nevada, california).
next_to(arizona, california).

travel(A, C) :- next_to(A, B), next_to(B, C).

fruit(apple).
fruit(orange).
fruit(pear).




