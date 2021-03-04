% Calculate vector of cutting torques with Newton-Euler for
% S2PP1
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [2x1]
%   Generalized joint coordinates (joint angles)
% qJD [2x1]
%   Generalized joint velocities
% qJDD [2x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2]';
% m [3x1]
%   mass of all robot links (including the base)
% mrSges [3x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [3x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
%
% Output:
% m [3x3]
%   vector of cutting torques (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2021-03-03 18:41
% Revision: 33b345ae0dd6ec4aa15499ab3d43edbbded0bea5 (2021-02-02)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new = S2PP1_invdynm_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(2,1),zeros(2,1),zeros(2,1),zeros(3,1),zeros(1,1),zeros(3,1),zeros(3,3),zeros(3,6)}
assert(isreal(qJ) && all(size(qJ) == [2 1]), ...
  'S2PP1_invdynm_fixb_snew_vp2: qJ has to be [2x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [2 1]), ...
  'S2PP1_invdynm_fixb_snew_vp2: qJD has to be [2x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [2 1]), ...
  'S2PP1_invdynm_fixb_snew_vp2: qJDD has to be [2x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S2PP1_invdynm_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S2PP1_invdynm_fixb_snew_vp2: pkin has to be [1x1] (double)');
assert(isreal(m) && all(size(m) == [3 1]), ...
  'S2PP1_invdynm_fixb_snew_vp2: m has to be [3x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [3,3]), ...
  'S2PP1_invdynm_fixb_snew_vp2: mrSges has to be [3x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [3 6]), ...
  'S2PP1_invdynm_fixb_snew_vp2: Ifges has to be [3x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_m_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2021-03-03 18:41:20
% EndTime: 2021-03-03 18:41:20
% DurationCPUTime: 0.09s
% Computational Cost: add. (62->33), mult. (58->30), div. (0->0), fcn. (0->0), ass. (0->14)
t23 = mrSges(2,1) * g(2) + mrSges(2,2) * g(3);
t12 = -g(1) + qJDD(1);
t14 = mrSges(3,1) * g(3);
t22 = (pkin(1) * m(3) + mrSges(2,1) - mrSges(3,2)) * t12 + t14;
t11 = -g(2) + qJDD(2);
t21 = pkin(1) * t11;
t20 = mrSges(1,1) + mrSges(2,3);
t8 = mrSges(3,2) * t11;
t19 = -mrSges(3,3) * g(3) + t8;
t18 = -qJ(2) * m(3) - mrSges(3,3);
t10 = mrSges(3,1) * t11;
t17 = mrSges(3,3) * t12 - t10;
t9 = mrSges(2,2) * t12;
t1 = [-m(3) * t21 + mrSges(1,3) * g(2) + t8 + (-mrSges(1,2) + t18) * g(3) + t23, -mrSges(2,3) * g(2) + t18 * t12 + t10 + t9, t19; -mrSges(1,3) * g(1) + (-qJ(1) * (-m(2) - m(3)) + t20) * g(3) + t22, -mrSges(2,3) * g(3) - t22, t17; mrSges(1,2) * g(1) + t9 + (qJ(1) * t11 - qJ(2) * t12) * m(3) + (-qJ(1) * m(2) - t20) * g(2) - t17, (-g(3) * qJ(2) - t21) * m(3) + t19 + t23, -mrSges(3,2) * t12 + t14;];
m_new = t1;
