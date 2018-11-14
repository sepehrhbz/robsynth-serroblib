% Calculate inertial parameters regressor of potential energy for
% S4PPPR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d4,theta2]';
% 
% Output:
% U_reg [1x(4*10)]
%   inertial parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 14:05
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function U_reg = S4PPPR5_energypot_fixb_reg2_slag_vp(qJ, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPPR5_energypot_fixb_reg2_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PPPR5_energypot_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4PPPR5_energypot_fixb_reg2_slag_vp: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 14:05:11
% EndTime: 2018-11-14 14:05:11
% DurationCPUTime: 0.04s
% Computational Cost: add. (32->25), mult. (40->26), div. (0->0), fcn. (34->4), ass. (0->13)
t28 = g(1) * qJ(1);
t21 = sin(pkin(5));
t22 = cos(pkin(5));
t27 = t22 * pkin(2) + t21 * qJ(3) + pkin(1);
t26 = t21 * pkin(2) - t22 * qJ(3) + qJ(1);
t25 = cos(qJ(4));
t24 = sin(qJ(4));
t23 = g(3) * qJ(2);
t17 = g(1) * t22 - g(2) * t21;
t16 = -g(1) * t21 - g(2) * t22;
t15 = t21 * t25 - t22 * t24;
t14 = -t21 * t24 - t22 * t25;
t1 = [0, 0, 0, 0, 0, 0, -g(2), -g(3), -g(1), -t28, 0, 0, 0, 0, 0, 0, t16, -t17, g(3), -g(2) * pkin(1) + t23 - t28, 0, 0, 0, 0, 0, 0, t16, g(3), t17, -g(1) * t26 - g(2) * t27 + t23, 0, 0, 0, 0, 0, 0, -g(1) * t15 + g(2) * t14, -g(1) * t14 - g(2) * t15, -g(3), -g(1) * (t21 * pkin(3) + t26) - g(2) * (t22 * pkin(3) + t27) - g(3) * (pkin(4) - qJ(2));];
U_reg  = t1;
