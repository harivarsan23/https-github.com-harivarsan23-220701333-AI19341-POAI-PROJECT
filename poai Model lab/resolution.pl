% Facts
parent(alice, bob).
parent(bob, charlie).
parent(bob, david).

% Rules
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% Queries
% ?- ancestor(alice, charlie).
% ?- ancestor(alice, david).
% ?- ancestor(bob, Y).