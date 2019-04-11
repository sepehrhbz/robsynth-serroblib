% Umwandlung der Kinematikparameter von S6RPPRPR6 zu S6RPPRPR6V1
% Eingabe:
% pkin_gen (8x1) double
%   Kinematikparameter (pkin) von S6RPPRPR6
% Ausgabe:
% pkin_var (7x1) double
%   Kinematikparameter (pkin) von S6RPPRPR6V1
% I_gv (7x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RPPRPR6V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 6, 7];
pkin_var = pkin_gen(I_gv);
