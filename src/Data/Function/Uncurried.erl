-module(data_function_uncurried@foreign).
-export([mkFn0/1,mkFn1/1,mkFn2/1,mkFn3/1,mkFn4/1,mkFn5/1,mkFn6/1,mkFn7/1,mkFn8/1,mkFn9/1,mkFn10/1,runFn0/1,runFn1/2,runFn2/3,runFn3/4,runFn4/5,runFn5/6,runFn6/7,runFn7/8,runFn8/9,runFn9/10,runFn10/11]).

% mkFnX - feeling the paren love

mkFn0(F) -> fun () -> F(unit) end.

mkFn1(F) -> fun (A) -> F(A) end.

mkFn2(F) -> fun (A,B) -> (F(A))(B) end.

mkFn3(F) -> fun (A,B,C) -> ((F(A))(B))(C) end.

mkFn4(F) -> fun (A,B,C,D) -> (((F(A))(B))(C))(D) end.

mkFn5(F) -> fun (A,B,C,D,E) -> ((((F(A))(B))(C))(D))(E) end.

mkFn6(F) -> fun (A,B,C,D,E,F) -> (((((F(A))(B))(C))(D))(E))(F) end.

mkFn7(F) -> fun (A,B,C,D,E,F,G) -> ((((((F(A))(B))(C))(D))(E))(F))(G) end.

mkFn8(F) -> fun (A,B,C,D,E,F,G,H) -> (((((((F(A))(B))(C))(D))(E))(F))(G))(H) end.

mkFn9(F) -> fun (A,B,C,D,E,F,G,H,I) -> ((((((((F(A))(B))(C))(D))(E))(F))(G))(H))(I) end.

mkFn10(F) -> fun (A,B,C,D,E,F,G,H,I,J) -> (((((((((F(A))(B))(C))(D))(E))(F))(G))(H))(I))(J) end.

% runFnX - making heavy use of auto-currying

runFn0(F) -> F().

runFn1(F,A) -> F(A).

runFn2(F,A,B) -> F(A,B).

runFn3(F,A,B,C) -> F(A,B,C).

runFn4(F,A,B,C,D) -> F(A,B,C,D).

runFn5(F,A,B,C,D,E) -> F(A,B,C,D,E).

runFn6(F,A,B,C,D,E,F) -> F(A,B,C,D,E,F).

runFn7(F,A,B,C,D,E,F,G) -> F(A,B,C,D,E,F,G).

runFn8(F,A,B,C,D,E,F,G,H) -> F(A,B,C,D,E,F,G,H).

runFn9(F,A,B,C,D,E,F,G,H,I) -> F(A,B,C,D,E,F,G,H,I).

runFn10(F,A,B,C,D,E,F,G,H,I,J) -> F(A,B,C,D,E,F,G,H,I,J).
