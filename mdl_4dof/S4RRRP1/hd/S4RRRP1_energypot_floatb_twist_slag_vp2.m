% Calculate potential energy for
% S4RRRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d3]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% mrSges [5x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 13:55
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function U = S4RRRP1_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(3,1),zeros(6,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRP1_energypot_floatb_twist_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S4RRRP1_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRRP1_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RRRP1_energypot_floatb_twist_slag_vp2: pkin has to be [6x1] (double)');
assert( isreal(m) && all(size(m) == [5 1]), ...
  'S4RRRP1_energypot_floatb_twist_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RRRP1_energypot_floatb_twist_slag_vp2: mrSges has to be [5x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 13:54:18
% EndTime: 2018-11-14 13:54:19
% DurationCPUTime: 0.15s
% Computational Cost: add. (87->42), mult. (58->31), div. (0->0), fcn. (28->6), ass. (0->18)
t21 = -m(4) - m(5);
t18 = mrSges(4,2) + mrSges(5,2);
t10 = qJ(1) + qJ(2);
t17 = pkin(4) + r_base(3);
t16 = pkin(5) + t17;
t15 = -m(1) - m(2) - m(3) + t21;
t14 = pkin(6) + t16;
t13 = -m(5) * pkin(3) - mrSges(4,1) - mrSges(5,1);
t12 = cos(qJ(1));
t11 = sin(qJ(1));
t9 = t12 * pkin(1);
t8 = t11 * pkin(1);
t7 = qJ(3) + t10;
t6 = cos(t10);
t5 = sin(t10);
t4 = cos(t7);
t3 = sin(t7);
t1 = (-m(1) * r_base(3) - mrSges(1,3) - m(2) * t17 - mrSges(2,3) - m(3) * t16 - mrSges(3,3) - m(4) * t14 - mrSges(4,3) - m(5) * (qJ(4) + t14) - mrSges(5,3)) * g(3) + (-m(3) * t8 - t11 * mrSges(2,1) - t5 * mrSges(3,1) - t12 * mrSges(2,2) - t6 * mrSges(3,2) + t13 * t3 + t15 * r_base(2) - t18 * t4 - mrSges(1,2) + t21 * (pkin(2) * t5 + t8)) * g(2) + (-m(3) * t9 - mrSges(2,1) * t12 - t6 * mrSges(3,1) + t11 * mrSges(2,2) + t5 * mrSges(3,2) + t13 * t4 + t15 * r_base(1) + t18 * t3 - mrSges(1,1) + t21 * (pkin(2) * t6 + t9)) * g(1);
U  = t1;
