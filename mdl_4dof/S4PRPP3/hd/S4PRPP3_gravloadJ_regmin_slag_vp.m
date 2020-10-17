% Calculate minimal parameter regressor of gravitation load for
% S4PRPP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g_base [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2]';
% 
% Output:
% taug_reg [4x10]
%   minimal parameter regressor of gravitation joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:20
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug_reg = S4PRPP3_gravloadJ_regmin_slag_vp(qJ, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(4,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPP3_gravloadJ_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PRPP3_gravloadJ_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S4PRPP3_gravloadJ_regmin_slag_vp: pkin has to be [4x1] (double)');

%% Symbolic Calculation
% From gravload_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 18:55:52
% EndTime: 2019-05-04 18:55:52
% DurationCPUTime: 0.06s
% Computational Cost: add. (19->16), mult. (30->14), div. (0->0), fcn. (26->2), ass. (0->7)
t7 = sin(qJ(2));
t8 = cos(qJ(2));
t9 = t8 * pkin(2) + t7 * qJ(3);
t4 = t8 * qJ(3);
t2 = g(1) * t8 + g(2) * t7;
t1 = g(1) * t7 - g(2) * t8;
t3 = [-g(2), 0, 0, 0, 0, 0, -g(2), 0, 0, -g(2); 0, 0, t1, t2, t1, -t2, -g(1) * (-pkin(2) * t7 + t4) - g(2) * t9, t1, -t2, -g(1) * (t4 + (-pkin(2) - pkin(3)) * t7) - g(2) * (pkin(3) * t8 + t9); 0, 0, 0, 0, 0, 0, -t1, 0, 0, -t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, g(3);];
taug_reg  = t3;
