% Calculate vector of cutting forces with Newton-Euler
% S5RPPRP1
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,theta2,theta3]';
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
% f_new [3x6]
%   vector of cutting forces (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:36
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new = S5RPPRP1_invdynf_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRP1_invdynf_fixb_snew_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRP1_invdynf_fixb_snew_vp2: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPPRP1_invdynf_fixb_snew_vp2: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRP1_invdynf_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRP1_invdynf_fixb_snew_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPPRP1_invdynf_fixb_snew_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPPRP1_invdynf_fixb_snew_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RPPRP1_invdynf_fixb_snew_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_f_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:35:39
% EndTime: 2019-12-05 17:35:40
% DurationCPUTime: 0.60s
% Computational Cost: add. (4331->121), mult. (9010->161), div. (0->0), fcn. (4988->8), ass. (0->70)
t61 = sin(pkin(8));
t57 = t61 ^ 2;
t63 = cos(pkin(8));
t103 = (t63 ^ 2 + t57) * mrSges(4,3);
t75 = -pkin(3) * t63 - pkin(6) * t61;
t44 = t75 * qJD(1);
t69 = qJD(1) ^ 2;
t66 = sin(qJ(1));
t68 = cos(qJ(1));
t96 = t68 * g(2) + t66 * g(3);
t45 = qJDD(1) * pkin(1) + t96;
t81 = t66 * g(2) - t68 * g(3);
t46 = -t69 * pkin(1) + t81;
t62 = sin(pkin(7));
t64 = cos(pkin(7));
t97 = t62 * t45 + t64 * t46;
t24 = -t69 * pkin(2) + qJDD(1) * qJ(3) + t97;
t60 = -g(1) + qJDD(2);
t80 = -t61 * t24 + t63 * t60;
t83 = 0.2e1 * qJD(1) * qJD(3);
t94 = qJD(1) * t61;
t16 = t44 * t94 + t61 * t83 - t80;
t65 = sin(qJ(4));
t67 = cos(qJ(4));
t91 = qJD(1) * qJD(4);
t37 = (-qJDD(1) * t65 - t67 * t91) * t61;
t38 = (qJDD(1) * t67 - t65 * t91) * t61;
t93 = t63 * qJD(1);
t49 = qJD(4) - t93;
t86 = t65 * t94;
t30 = -t49 * mrSges(6,2) - mrSges(6,3) * t86;
t82 = qJ(5) * t94;
t32 = t49 * pkin(4) - t67 * t82;
t85 = t67 * t94;
t33 = t49 * mrSges(6,1) - mrSges(6,3) * t85;
t101 = t57 * t69;
t89 = t65 ^ 2 * t101;
t78 = m(6) * (-t37 * pkin(4) - qJ(5) * t89 + t32 * t85 + qJDD(5) + t16) + t30 * t86 + t33 * t85 + t38 * mrSges(6,2);
t102 = -m(5) * t16 - t38 * mrSges(5,2) + (mrSges(5,1) + mrSges(6,1)) * t37 - t78;
t77 = -0.2e1 * qJD(5) * t94;
t87 = t61 * t60 + (t24 + t83) * t63;
t17 = t44 * t93 + t87;
t79 = t64 * t45 - t62 * t46;
t71 = -t69 * qJ(3) + qJDD(3) - t79;
t20 = (-pkin(2) + t75) * qJDD(1) + t71;
t98 = t67 * t17 + t65 * t20;
t99 = m(6) * (-pkin(4) * t89 + t37 * qJ(5) - t49 * t32 + t65 * t77 + t98) + t37 * mrSges(6,3);
t92 = qJDD(1) * mrSges(4,3);
t74 = -t63 * mrSges(4,1) + t61 * mrSges(4,2);
t43 = t74 * qJD(1);
t31 = -t49 * mrSges(5,2) - mrSges(5,3) * t86;
t34 = t49 * mrSges(5,1) - mrSges(5,3) * t85;
t73 = t31 * t65 + t34 * t67;
t10 = m(4) * t80 + (-t92 + (-0.2e1 * m(4) * qJD(3) - t43 - t73) * qJD(1)) * t61 + t102;
t19 = t67 * t20;
t48 = -t63 * qJDD(1) + qJDD(4);
t35 = (mrSges(6,1) * t65 + mrSges(6,2) * t67) * t94;
t76 = (-t35 - (mrSges(5,1) * t65 + mrSges(5,2) * t67) * t94) * t94;
t88 = m(6) * (t67 * t77 + t48 * pkin(4) - t38 * qJ(5) + t19 + (-pkin(4) * t67 * t101 - t49 * t82 - t17) * t65) + t49 * t30 + t48 * mrSges(6,1);
t7 = m(5) * (-t65 * t17 + t19) + t48 * mrSges(5,1) + t49 * t31 + (-mrSges(5,3) - mrSges(6,3)) * t38 + t67 * t76 + t88;
t8 = m(5) * t98 + t37 * mrSges(5,3) + (-t34 - t33) * t49 + (-mrSges(5,2) - mrSges(6,2)) * t48 + t65 * t76 + t99;
t6 = m(4) * t87 + t67 * t8 - t65 * t7 + (qJD(1) * t43 + t92) * t63;
t90 = m(3) * t60 + t63 * t10 + t61 * t6;
t84 = t35 * t94;
t72 = m(4) * (-qJDD(1) * pkin(2) + t71) + t65 * t8 + t67 * t7;
t4 = m(3) * t79 + (-mrSges(3,2) + t103) * t69 + (mrSges(3,1) - t74) * qJDD(1) - t72;
t3 = m(3) * t97 - t69 * mrSges(3,1) - qJDD(1) * mrSges(3,2) - t61 * t10 + t63 * t6;
t2 = m(2) * t96 + qJDD(1) * mrSges(2,1) - t69 * mrSges(2,2) + t62 * t3 + t64 * t4;
t1 = m(2) * t81 - t69 * mrSges(2,1) - qJDD(1) * mrSges(2,2) + t64 * t3 - t62 * t4;
t5 = [(-m(1) - m(2)) * g(1) + t90, t1, t3, t6, t8, -t48 * mrSges(6,2) - t49 * t33 - t65 * t84 + t99; -m(1) * g(2) - t66 * t1 - t68 * t2, t2, t4, t10, t7, -t38 * mrSges(6,3) - t67 * t84 + t88; -m(1) * g(3) + t68 * t1 - t66 * t2, -m(2) * g(1) + t90, t90, t74 * qJDD(1) - t69 * t103 + t72, t73 * t94 - t102, -t37 * mrSges(6,1) + t78;];
f_new = t5;
