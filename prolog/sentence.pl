


getsentence(Wordlist) :-
    get0(Char),
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
    getletters(Char, Letters, Nextchar).


