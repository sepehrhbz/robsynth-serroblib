% Calculate vector of inverse dynamics joint torques for
% S5PRPRP2
% The function exploits the sparsity of the regressor matrix
% 
% Input:
% RV [40x1]
%   vector of non-Null entries of the regressor matrix. (columns, then rows).
%   see S5PRPRP2_invdynJ_fixb_regmin2vec.m
% MDP [17x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S5PRPRP2_convert_par2_MPV_fixb.m
% 
% Output:
% tauJ [5x1]
%   joint torques of inverse dynamics (contains inertial, gravitational Coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:31
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ = S5PRPRP2_invdynJ_fixb_mdp_slag_vr(RV, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(40,1), zeros(17,1)}
assert(isreal(MDP) && all(size(MDP) == [17 1]), ...
  'S5PRPRP2_invdynJ_fixb_mdp_slag_vr: MDP has to be [17x1] (double)'); 

%% Symbolic Calculation
% From invdyn_joint_fixb_mdp_mult_matlab.m
t1 = [RV(1) * MDP(1) + RV(11) * MDP(8) + RV(24) * MDP(14) + RV(28) * MDP(15) + RV(36) * MDP(17); RV(2) * MDP(2) + RV(3) * MDP(3) + RV(4) * MDP(4) + RV(5) * MDP(5) + RV(7) * MDP(6) + RV(9) * MDP(7) + RV(12) * MDP(8) + RV(14) * MDP(9) + RV(16) * MDP(10) + RV(18) * MDP(11) + RV(20) * MDP(12) + RV(22) * MDP(13) + RV(25) * MDP(14) + RV(29) * MDP(15) + RV(32) * MDP(16) + RV(37) * MDP(17); RV(6) * MDP(5) + RV(8) * MDP(6) + RV(10) * MDP(7) + RV(13) * MDP(8) + RV(26) * MDP(14) + RV(30) * MDP(15) + RV(33) * MDP(16) + RV(38) * MDP(17); RV(15) * MDP(9) + RV(17) * MDP(10) + RV(19) * MDP(11) + RV(21) * MDP(12) + RV(23) * MDP(13) + RV(27) * MDP(14) + RV(31) * MDP(15) + RV(34) * MDP(16) + RV(39) * MDP(17); RV(35) * MDP(16) + RV(40) * MDP(17);];
tauJ = t1;
