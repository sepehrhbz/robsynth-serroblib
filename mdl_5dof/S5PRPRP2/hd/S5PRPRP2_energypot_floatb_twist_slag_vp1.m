% Calculate potential energy for
% S5PRPRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d4,theta1,theta3]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:31
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5PRPRP2_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRP2_energypot_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5PRPRP2_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRPRP2_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPRP2_energypot_floatb_twist_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRPRP2_energypot_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRPRP2_energypot_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:30:26
% EndTime: 2019-12-05 15:30:26
% DurationCPUTime: 0.36s
% Computational Cost: add. (165->79), mult. (141->88), div. (0->0), fcn. (125->8), ass. (0->32)
t43 = rSges(5,3) + pkin(6);
t42 = rSges(6,3) + qJ(5) + pkin(6);
t14 = sin(pkin(8));
t16 = cos(pkin(8));
t41 = rSges(4,1) * t16 - rSges(4,2) * t14;
t13 = pkin(7) + qJ(2);
t10 = cos(t13);
t9 = sin(t13);
t40 = g(1) * t10 + g(2) * t9;
t37 = t16 * t9;
t19 = sin(qJ(4));
t36 = t9 * t19;
t32 = t10 * t16;
t31 = t10 * t19;
t30 = t16 * t19;
t20 = cos(qJ(4));
t29 = t16 * t20;
t15 = sin(pkin(7));
t27 = t15 * pkin(1) + r_base(2);
t17 = cos(pkin(7));
t26 = t17 * pkin(1) + r_base(1);
t25 = qJ(1) + r_base(3);
t24 = t9 * pkin(2) + t27;
t23 = pkin(5) + t25;
t22 = t10 * pkin(2) + t9 * qJ(3) + t26;
t21 = -t10 * qJ(3) + t24;
t8 = t20 * pkin(4) + pkin(3);
t4 = t10 * t29 + t36;
t3 = -t10 * t30 + t9 * t20;
t2 = t9 * t29 - t31;
t1 = -t10 * t20 - t9 * t30;
t5 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (t17 * rSges(2,1) - t15 * rSges(2,2) + r_base(1)) + g(2) * (t15 * rSges(2,1) + t17 * rSges(2,2) + r_base(2)) + g(3) * (rSges(2,3) + t25)) - m(3) * (g(1) * (t10 * rSges(3,1) - t9 * rSges(3,2) + t26) + g(2) * (t9 * rSges(3,1) + t10 * rSges(3,2) + t27) + g(3) * (rSges(3,3) + t23)) - m(4) * (g(1) * (t9 * rSges(4,3) + t22) + g(2) * (t41 * t9 + t24) + g(3) * (t14 * rSges(4,1) + t16 * rSges(4,2) + t23) + (g(1) * t41 + g(2) * (-rSges(4,3) - qJ(3))) * t10) - m(5) * (g(1) * (t4 * rSges(5,1) + t3 * rSges(5,2) + pkin(3) * t32 + t22) + g(2) * (t2 * rSges(5,1) + t1 * rSges(5,2) + pkin(3) * t37 + t21) + g(3) * (-t43 * t16 + t23) + (g(3) * (rSges(5,1) * t20 - rSges(5,2) * t19 + pkin(3)) + t40 * t43) * t14) - m(6) * (g(1) * (t4 * rSges(6,1) + t3 * rSges(6,2) + pkin(4) * t36 + t8 * t32 + t22) + g(2) * (t2 * rSges(6,1) + t1 * rSges(6,2) - pkin(4) * t31 + t8 * t37 + t21) + g(3) * (-t42 * t16 + t23) + (g(3) * (rSges(6,1) * t20 - rSges(6,2) * t19 + t8) + t40 * t42) * t14);
U = t5;
