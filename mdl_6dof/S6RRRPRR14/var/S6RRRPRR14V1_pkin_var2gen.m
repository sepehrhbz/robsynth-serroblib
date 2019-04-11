% Umwandlung der Kinematikparameter von S6RRRPRR14V1 zu S6RRRPRR14
% Eingabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6RRRPRR14V1
% Ausgabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RRRPRR14
function pkin_gen = S6RRRPRR14V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(11,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) = pkin_var;
pkin_gen(11) = 0.0;
