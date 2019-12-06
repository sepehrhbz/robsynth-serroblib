% Calculate inertial parameters regressor of fixed base kinetic energy for
% S5PRPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d4,d5,theta1,theta3]';
% 
% Output:
% T_reg [1x(5*10)]
%   inertial parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:48
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_reg = S5PRPRR3_energykin_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR3_energykin_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRR3_energykin_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPRR3_energykin_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:47:30
% EndTime: 2019-12-05 15:47:30
% DurationCPUTime: 0.16s
% Computational Cost: add. (155->35), mult. (368->95), div. (0->0), fcn. (229->8), ass. (0->33)
t32 = qJD(2) ^ 2;
t24 = t32 / 0.2e1;
t31 = cos(qJ(2));
t17 = qJD(2) * pkin(2) + t31 * qJD(1);
t25 = sin(pkin(9));
t26 = cos(pkin(9));
t29 = sin(qJ(2));
t38 = qJD(1) * t29;
t12 = t25 * t17 + t26 * t38;
t10 = qJD(2) * pkin(6) + t12;
t28 = sin(qJ(4));
t30 = cos(qJ(4));
t6 = t28 * qJD(3) + t30 * t10;
t39 = cos(qJ(5));
t37 = qJD(2) * t28;
t36 = qJD(2) * t30;
t35 = qJD(1) * qJD(2);
t34 = qJD(2) * qJD(4);
t11 = t26 * t17 - t25 * t38;
t33 = qJD(1) ^ 2;
t27 = sin(qJ(5));
t23 = qJD(4) + qJD(5);
t22 = t30 * qJD(3);
t15 = (t27 * t30 + t39 * t28) * qJD(2);
t13 = t27 * t37 - t39 * t36;
t9 = -qJD(2) * pkin(3) - t11;
t7 = (-pkin(4) * t30 - pkin(3)) * qJD(2) - t11;
t5 = -t28 * t10 + t22;
t4 = pkin(7) * t36 + t6;
t3 = qJD(4) * pkin(4) + t22 + (-pkin(7) * qJD(2) - t10) * t28;
t2 = t27 * t3 + t39 * t4;
t1 = -t27 * t4 + t39 * t3;
t8 = [0, 0, 0, 0, 0, 0, 0, 0, 0, t33 / 0.2e1, 0, 0, 0, 0, 0, t24, t31 * t35, -t29 * t35, 0, (t29 ^ 2 / 0.2e1 + t31 ^ 2 / 0.2e1) * t33, 0, 0, 0, 0, 0, t24, t11 * qJD(2), -t12 * qJD(2), 0, t12 ^ 2 / 0.2e1 + t11 ^ 2 / 0.2e1 + qJD(3) ^ 2 / 0.2e1, t28 ^ 2 * t24, t28 * t32 * t30, t28 * t34, t30 ^ 2 * t24, t30 * t34, qJD(4) ^ 2 / 0.2e1, t5 * qJD(4) - t9 * t36, -t6 * qJD(4) + t9 * t37, (-t28 * t5 + t30 * t6) * qJD(2), t6 ^ 2 / 0.2e1 + t5 ^ 2 / 0.2e1 + t9 ^ 2 / 0.2e1, t15 ^ 2 / 0.2e1, -t15 * t13, t15 * t23, t13 ^ 2 / 0.2e1, -t13 * t23, t23 ^ 2 / 0.2e1, t1 * t23 + t7 * t13, t7 * t15 - t2 * t23, -t1 * t15 - t2 * t13, t2 ^ 2 / 0.2e1 + t1 ^ 2 / 0.2e1 + t7 ^ 2 / 0.2e1;];
T_reg = t8;
