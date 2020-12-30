


getsentence(Wordlist) :-
    get0(Char),
    write('getsentence'), nl, put(Char), nl,
    getrest(Char, Wordlist).

getrest(46, []) :- !.            % End of sentence: 46 == ACSII for '.'

getrest(32, Wordlist) :-        % 32 == ASCII for blank
    !,
    getsentence(Wordlist).

getrest(Letter, [Word | Wordlist]) :-
    getletters(Letter, Letters, Nextchar),
    name(Word, Letters),        % Read letters of current word
    getrest(Nextchar, Wordlist).

getletters(46, [], 46) :- !.     % End of word: 46 == full stop

getletters(32, [], 32) :- !.       % End of word: 32 == blank

getletters(Let, [Let | Letters], Nextchar) :-
    get0(Char),
    write('getletters'), tab(1), put(Char), nl,
    % write('Nextchar'), tab(1), put(Nextchar), nl,
    write('Let'), nl, put(Let), nl,
    write('Letters'), nl, write(Letters), nl,
    getletters(Char, Letters, Nextchar),
    write('Nextchar'), tab(1), put(Nextchar), nl,
    write('Letters'), nl, write(Letters), nl.

