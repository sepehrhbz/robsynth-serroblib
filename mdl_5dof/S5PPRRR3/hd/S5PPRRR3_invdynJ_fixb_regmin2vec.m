% Convert inverse dynamics regressor matrix to a vector for
% S5PPRRR3
% Use sparsity of the regressor matrix: 51/(5*19) elements are non-zero
%
% Input:
% RM [5x19]
%   minimal parameter regressor of inverse dynamics joint torque vector
%
% Output:
% RV [51x1]
%   vector of non-Null entries of the input matrix. (columns, then rows).

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:17
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function RV = S5PPRRR3_invdynJ_fixb_regmin2vec(RM)

% From invdyn_joint_fixb_regressor_minpar_occupancy_vector_matlab.m
t1 = [RM(1, 1); RM(1, 2); RM(2, 2); RM(3, 3); RM(1, 4); RM(2, 4); RM(3, 4); RM(1, 5); RM(2, 5); RM(3, 5); RM(3, 6); RM(4, 6); RM(3, 7); RM(4, 7); RM(3, 8); RM(4, 8); RM(3, 9); RM(4, 9); RM(4, 10); RM(1, 11); RM(2, 11); RM(3, 11); RM(4, 11); RM(1, 12); RM(2, 12); RM(3, 12); RM(4, 12); RM(3, 13); RM(4, 13); RM(5, 13); RM(3, 14); RM(4, 14); RM(5, 14); RM(3, 15); RM(4, 15); RM(5, 15); RM(3, 16); RM(4, 16); RM(5, 16); RM(4, 17); RM(5, 17); RM(1, 18); RM(2, 18); RM(3, 18); RM(4, 18); RM(5, 18); RM(1, 19); RM(2, 19); RM(3, 19); RM(4, 19); RM(5, 19);];
RV = t1;
