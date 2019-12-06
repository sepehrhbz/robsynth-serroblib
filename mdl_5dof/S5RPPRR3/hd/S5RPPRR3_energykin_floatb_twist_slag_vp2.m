% Calculate kinetic energy for
% S5RPPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,d5,theta2,theta3]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% mrSges [6x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [6x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:42
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5RPPRR3_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(6,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRR3_energykin_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRR3_energykin_floatb_twist_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S5RPPRR3_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPPRR3_energykin_floatb_twist_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPPRR3_energykin_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPPRR3_energykin_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RPPRR3_energykin_floatb_twist_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:41:33
% EndTime: 2019-12-05 17:41:34
% DurationCPUTime: 0.89s
% Computational Cost: add. (2001->132), mult. (2966->191), div. (0->0), fcn. (2344->10), ass. (0->49)
t46 = V_base(6) * pkin(5) + V_base(2);
t47 = -V_base(5) * pkin(5) + V_base(3);
t55 = sin(qJ(1));
t58 = cos(qJ(1));
t40 = -t46 * t58 - t47 * t55;
t43 = -t55 * V_base(5) + t58 * V_base(6);
t48 = V_base(4) + qJD(1);
t31 = pkin(1) * t48 - qJ(2) * t43 + t40;
t39 = -t46 * t55 + t58 * t47;
t44 = -t55 * V_base(6) - t58 * V_base(5);
t35 = qJ(2) * t44 + t39;
t50 = sin(pkin(8));
t52 = cos(pkin(8));
t27 = t50 * t31 + t52 * t35;
t22 = qJ(3) * t48 + t27;
t37 = t43 * t50 - t52 * t44;
t38 = t43 * t52 + t44 * t50;
t41 = -pkin(1) * t44 + qJD(2) + V_base(1);
t25 = pkin(2) * t37 - qJ(3) * t38 + t41;
t49 = sin(pkin(9));
t51 = cos(pkin(9));
t16 = t51 * t22 + t49 * t25;
t28 = -t38 * t49 + t48 * t51;
t12 = pkin(6) * t28 + t16;
t54 = sin(qJ(4));
t57 = cos(qJ(4));
t15 = -t22 * t49 + t51 * t25;
t29 = t38 * t51 + t48 * t49;
t9 = pkin(3) * t37 - pkin(6) * t29 + t15;
t6 = t57 * t12 + t54 * t9;
t5 = -t12 * t54 + t57 * t9;
t26 = t31 * t52 - t50 * t35;
t36 = qJD(4) + t37;
t21 = -pkin(2) * t48 + qJD(3) - t26;
t17 = -pkin(3) * t28 + t21;
t59 = V_base(1) ^ 2;
t56 = cos(qJ(5));
t53 = sin(qJ(5));
t34 = qJD(5) + t36;
t19 = t28 * t54 + t29 * t57;
t18 = t28 * t57 - t29 * t54;
t14 = t18 * t53 + t19 * t56;
t13 = t18 * t56 - t19 * t53;
t10 = -pkin(4) * t18 + t17;
t4 = pkin(7) * t18 + t6;
t3 = pkin(4) * t36 - pkin(7) * t19 + t5;
t2 = t3 * t53 + t4 * t56;
t1 = t3 * t56 - t4 * t53;
t7 = m(2) * (t39 ^ 2 + t40 ^ 2 + t59) / 0.2e1 + m(1) * (V_base(2) ^ 2 + V_base(3) ^ 2 + t59) / 0.2e1 + m(3) * (t26 ^ 2 + t27 ^ 2 + t41 ^ 2) / 0.2e1 + m(4) * (t15 ^ 2 + t16 ^ 2 + t21 ^ 2) / 0.2e1 + m(5) * (t17 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + m(6) * (t1 ^ 2 + t10 ^ 2 + t2 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (-V_base(1) * mrSges(2,1) + t39 * mrSges(2,3) + Ifges(2,2) * t44 / 0.2e1) * t44 + (t41 * mrSges(3,2) - t26 * mrSges(3,3) + Ifges(3,1) * t38 / 0.2e1) * t38 + (t5 * mrSges(5,1) - t6 * mrSges(5,2) + Ifges(5,3) * t36 / 0.2e1) * t36 + (t1 * mrSges(6,1) - t2 * mrSges(6,2) + Ifges(6,3) * t34 / 0.2e1) * t34 + (t21 * mrSges(4,2) - t15 * mrSges(4,3) + Ifges(4,1) * t29 / 0.2e1) * t29 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(1) * mrSges(2,2) - t40 * mrSges(2,3) + Ifges(2,4) * t44 + Ifges(2,1) * t43 / 0.2e1) * t43 + (-t21 * mrSges(4,1) + t16 * mrSges(4,3) + Ifges(4,4) * t29 + Ifges(4,2) * t28 / 0.2e1) * t28 + (t17 * mrSges(5,2) - t5 * mrSges(5,3) + Ifges(5,5) * t36 + Ifges(5,1) * t19 / 0.2e1) * t19 + (t10 * mrSges(6,2) - t1 * mrSges(6,3) + Ifges(6,5) * t34 + Ifges(6,1) * t14 / 0.2e1) * t14 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t17 * mrSges(5,1) + t6 * mrSges(5,3) + Ifges(5,4) * t19 + Ifges(5,6) * t36 + Ifges(5,2) * t18 / 0.2e1) * t18 + (-t10 * mrSges(6,1) + t2 * mrSges(6,3) + Ifges(6,4) * t14 + Ifges(6,6) * t34 + Ifges(6,2) * t13 / 0.2e1) * t13 + (t40 * mrSges(2,1) + t26 * mrSges(3,1) - t39 * mrSges(2,2) - t27 * mrSges(3,2) + Ifges(2,5) * t43 + Ifges(3,5) * t38 + Ifges(2,6) * t44 + (Ifges(2,3) / 0.2e1 + Ifges(3,3) / 0.2e1) * t48) * t48 + (t41 * mrSges(3,1) + t15 * mrSges(4,1) - t16 * mrSges(4,2) - t27 * mrSges(3,3) - Ifges(3,4) * t38 + Ifges(4,5) * t29 - Ifges(3,6) * t48 + Ifges(4,6) * t28 + (Ifges(3,2) / 0.2e1 + Ifges(4,3) / 0.2e1) * t37) * t37;
T = t7;
