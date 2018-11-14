% Calculate vector of centrifugal and coriolis load on the joints for
% S4PRPP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% mrSges [5x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [5x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% tauc [4x1]
%   joint torques required to compensate coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 14:11
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function tauc = S4PRPP5_coriolisvecJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPP5_coriolisvecJ_fixb_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PRPP5_coriolisvecJ_fixb_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S4PRPP5_coriolisvecJ_fixb_slag_vp2: pkin has to be [4x1] (double)');
assert( isreal(m) && all(size(m) == [5 1]), ...
  'S4PRPP5_coriolisvecJ_fixb_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4PRPP5_coriolisvecJ_fixb_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4PRPP5_coriolisvecJ_fixb_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 14:10:12
% EndTime: 2018-11-14 14:10:12
% DurationCPUTime: 0.15s
% Computational Cost: add. (58->29), mult. (152->32), div. (0->0), fcn. (44->2), ass. (0->17)
t11 = cos(qJ(2));
t17 = qJD(1) * t11;
t13 = qJD(3) - t17;
t7 = (qJD(3) + t17) * qJD(2);
t10 = sin(qJ(2));
t18 = qJD(1) * t10;
t9 = qJD(2) * qJ(3) + t18;
t23 = t7 * qJ(3) + t13 * t9;
t19 = mrSges(4,3) + mrSges(5,2);
t22 = -pkin(2) - pkin(3);
t21 = t9 * qJD(2) * t11 + t7 * t10;
t16 = qJD(2) * t10;
t15 = qJD(1) * t16;
t12 = qJD(2) ^ 2;
t8 = -qJD(2) * pkin(2) + t13;
t4 = t22 * qJD(2) + t13;
t1 = [m(4) * ((t8 - t17) * t16 + t21) + m(5) * ((t4 - t17) * t16 + t21) + ((-mrSges(3,2) + t19) * t11 + (-mrSges(3,1) - mrSges(4,1) - mrSges(5,1)) * t10) * t12; (t22 * t15 - t4 * t18 + t23) * m(5) + (-pkin(2) * t15 - t8 * t18 + t23) * m(4) + (qJD(2) * t13 + t7) * t19; -t19 * t12 + (m(4) + m(5)) * qJD(2) * (-t9 + t18); 0;];
tauc  = t1(:);
