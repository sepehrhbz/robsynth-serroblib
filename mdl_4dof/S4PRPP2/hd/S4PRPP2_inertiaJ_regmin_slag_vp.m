% Calculate minimal parameter regressor of joint inertia matrix for
% S4PRPP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,theta3]';
% 
% Output:
% MM_reg [((4+1)*4/2)x8]
%   minimal parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 14:01
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function MM_reg = S4PRPP2_inertiaJ_regmin_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPP2_inertiaJ_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4PRPP2_inertiaJ_regmin_slag_vp: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_minpar_matlab.m
t14 = cos(qJ(2));
t10 = cos(pkin(5));
t11 = sin(qJ(2));
t9 = sin(pkin(5));
t2 = -t10 * t14 + t9 * t11;
t4 = t10 * t11 + t9 * t14;
t13 = t2 ^ 2 + t4 ^ 2;
t7 = t10 * pkin(2) + pkin(3);
t5 = t9 * pkin(2) + qJ(4);
t1 = [1, 0, 0, 0, t13, 0, 0, t13; 0, 0, t14, -t11 (-t10 * t2 + t4 * t9) * pkin(2), -t2, t4, -t2 * t7 + t4 * t5; 0, 1, 0, 0 (t10 ^ 2 + t9 ^ 2) * pkin(2) ^ 2, 0.2e1 * t7, 0.2e1 * t5, t5 ^ 2 + t7 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 1, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, t2; 0, 0, 0, 0, 0, -1, 0, -t7; 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t1;
