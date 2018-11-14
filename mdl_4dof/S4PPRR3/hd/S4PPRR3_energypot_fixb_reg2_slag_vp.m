% Calculate inertial parameters regressor of potential energy for
% S4PPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d3,d4,theta2]';
% 
% Output:
% U_reg [1x(4*10)]
%   inertial parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 14:09
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function U_reg = S4PPRR3_energypot_fixb_reg2_slag_vp(qJ, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPRR3_energypot_fixb_reg2_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PPRR3_energypot_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4PPRR3_energypot_fixb_reg2_slag_vp: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 14:08:26
% EndTime: 2018-11-14 14:08:26
% DurationCPUTime: 0.04s
% Computational Cost: add. (39->24), mult. (28->25), div. (0->0), fcn. (18->6), ass. (0->13)
t25 = cos(pkin(6));
t29 = t25 * pkin(2) + pkin(1);
t28 = g(1) * qJ(1);
t27 = -pkin(4) - qJ(2);
t24 = sin(pkin(6));
t26 = t24 * pkin(2) + qJ(1);
t23 = pkin(6) + qJ(3);
t20 = qJ(4) + t23;
t19 = cos(t23);
t18 = sin(t23);
t17 = cos(t20);
t16 = sin(t20);
t1 = [0, 0, 0, 0, 0, 0, -g(2), -g(3), -g(1), -t28, 0, 0, 0, 0, 0, 0, -g(1) * t24 - g(2) * t25, -g(1) * t25 + g(2) * t24, g(3), -g(2) * pkin(1) + g(3) * qJ(2) - t28, 0, 0, 0, 0, 0, 0, -g(1) * t18 - g(2) * t19, -g(1) * t19 + g(2) * t18, g(3), -g(1) * t26 - g(2) * t29 - g(3) * t27, 0, 0, 0, 0, 0, 0, -g(1) * t16 - g(2) * t17, -g(1) * t17 + g(2) * t16, g(3), -g(1) * (pkin(3) * t18 + t26) - g(2) * (pkin(3) * t19 + t29) - g(3) * (-pkin(5) + t27);];
U_reg  = t1;
