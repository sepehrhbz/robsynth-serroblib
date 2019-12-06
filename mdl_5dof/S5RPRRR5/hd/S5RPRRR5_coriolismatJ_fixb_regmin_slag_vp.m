% Calculate minimal parameter regressor of coriolis matrix for
% S5RPRRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5,theta2]';
% 
% Output:
% cmat_reg [(5*%NQJ)%x21]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:17
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RPRRR5_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR5_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR5_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR5_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:16:31
% EndTime: 2019-12-05 18:16:33
% DurationCPUTime: 0.80s
% Computational Cost: add. (1172->137), mult. (2310->168), div. (0->0), fcn. (2226->8), ass. (0->113)
t111 = qJD(4) + qJD(5);
t88 = cos(qJ(5));
t89 = cos(qJ(4));
t136 = t88 * t89;
t85 = sin(qJ(5));
t86 = sin(qJ(4));
t140 = t85 * t86;
t70 = -t136 + t140;
t160 = t111 * t70;
t112 = qJD(1) + qJD(3);
t137 = t88 * t86;
t139 = t85 * t89;
t72 = t137 + t139;
t24 = t70 ^ 2 - t72 ^ 2;
t159 = t112 * t24;
t77 = -t86 ^ 2 + t89 ^ 2;
t158 = t112 * t77;
t157 = t112 * t89;
t150 = pkin(7) + pkin(8);
t75 = t150 * t86;
t76 = t150 * t89;
t156 = t111 * (t75 * t85 - t76 * t88);
t155 = t111 * (t75 * t88 + t76 * t85);
t145 = cos(qJ(3));
t149 = pkin(1) * sin(pkin(9));
t87 = sin(qJ(3));
t98 = cos(pkin(9)) * pkin(1) + pkin(2);
t63 = t145 * t149 + t87 * t98;
t61 = pkin(7) + t63;
t146 = pkin(8) + t61;
t42 = t146 * t86;
t43 = t146 * t89;
t154 = t111 * (t42 * t85 - t43 * t88);
t153 = t111 * (t42 * t88 + t43 * t85);
t152 = -pkin(3) / 0.2e1;
t151 = t89 / 0.2e1;
t148 = pkin(4) * t86;
t147 = t89 * pkin(4);
t62 = -t145 * t98 + t149 * t87;
t60 = -pkin(3) + t62;
t50 = t60 - t147;
t144 = t50 * t70;
t143 = t50 * t72;
t80 = -pkin(3) - t147;
t142 = t80 * t70;
t141 = t80 * t72;
t138 = t86 * t62;
t135 = -t144 / 0.2e1 - t142 / 0.2e1;
t102 = t62 * t151;
t134 = t88 * t102 - t85 * t138 / 0.2e1;
t133 = pkin(3) * qJD(3);
t132 = pkin(4) * qJD(5);
t131 = qJD(4) * pkin(4);
t128 = qJD(1) * t50;
t127 = qJD(1) * t60;
t126 = qJD(3) * t80;
t64 = t70 * t148;
t18 = t64 + t143;
t123 = t18 * qJD(1);
t110 = t72 * t148;
t19 = t110 - t144;
t122 = t19 * qJD(1);
t117 = t62 * qJD(1);
t116 = t63 * qJD(1);
t59 = t63 * qJD(3);
t115 = t70 * qJD(5);
t114 = t72 * qJD(5);
t113 = t86 * qJD(4);
t83 = t89 * qJD(4);
t109 = t70 * t128;
t108 = t72 * t128;
t107 = t86 * t127;
t106 = t89 * t127;
t105 = t70 * t116;
t104 = t72 * t116;
t103 = t86 * t116;
t101 = t80 / 0.2e1 + t50 / 0.2e1;
t100 = pkin(4) * t111;
t39 = t111 * t72;
t99 = t62 / 0.2e1 + pkin(3) / 0.2e1 - t60 / 0.2e1;
t97 = t110 + t135;
t90 = (t139 / 0.2e1 + t137 / 0.2e1) * t62;
t5 = -t101 * t72 + t90;
t1 = -t64 + t5;
t29 = t64 + t141;
t96 = qJD(1) * t1 - qJD(3) * t29;
t3 = (-t136 / 0.2e1 + t140 / 0.2e1) * t62 + t97;
t30 = t110 - t142;
t95 = -qJD(1) * t3 - qJD(3) * t30;
t20 = t99 * t86;
t94 = qJD(1) * t20 + t133 * t86;
t21 = t99 * t89;
t93 = qJD(1) * t21 + t133 * t89;
t92 = qJD(1) * t5 - t126 * t72;
t6 = t101 * t70 + t134;
t91 = qJD(1) * t6 + t126 * t70;
t8 = t141 / 0.2e1 + t143 / 0.2e1 + t90;
t78 = t86 * t83;
t74 = t77 * qJD(4);
t65 = t86 * t157;
t58 = t62 * qJD(3);
t53 = t86 * t59;
t32 = t72 * t59;
t31 = t70 * t59;
t23 = t151 * t60 + t152 * t89 + t102;
t22 = t138 / 0.2e1 + (t152 + t60 / 0.2e1) * t86;
t17 = t112 * t72 * t70;
t16 = t70 * t39;
t11 = t111 * t24;
t7 = t134 + t135;
t4 = t97 + t134;
t2 = t64 + t8;
t9 = [0, 0, 0, 0, 0, -t59, t58, t78, t74, 0, 0, 0, t113 * t60 - t59 * t89, t60 * t83 + t53, -t16, t11, 0, 0, 0, qJD(4) * t18 + t114 * t50 + t31, qJD(4) * t19 - t115 * t50 + t32; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, -t59 - t116, t58 + t117, t78, t74, 0, 0, 0, t22 * qJD(4) - t157 * t63, qJD(4) * t23 + t103 + t53, -t16, t11, 0, 0, 0, qJD(4) * t2 + qJD(5) * t8 + t105 + t31, qJD(4) * t4 + qJD(5) * t7 + t104 + t32; 0, 0, 0, 0, 0, 0, 0, t65, t158, t83, -t113, 0, qJD(3) * t22 - t61 * t83 + t107, qJD(3) * t23 + t113 * t61 + t106, -t17, t159, -t160, -t39, 0, qJD(3) * t2 + t123 + t154, qJD(3) * t4 + t122 + t153; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t17, t159, -t160, -t39, 0, qJD(3) * t8 + t108 + t154, qJD(3) * t7 - t109 + t153; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t113, -t83, 0, 0, 0, 0, 0, -t39, t160; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t39, t160; 0, 0, 0, 0, 0, t116, -t117, t78, t74, 0, 0, 0, -qJD(4) * t20 + t116 * t89, -qJD(4) * t21 - t103, -t16, t11, 0, 0, 0, -qJD(4) * t1 - qJD(5) * t5 - t105, qJD(4) * t3 - qJD(5) * t6 - t104; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, t78, t74, 0, 0, 0, -pkin(3) * t113, -pkin(3) * t83, -t16, t11, 0, 0, 0, qJD(4) * t29 + t114 * t80, qJD(4) * t30 - t115 * t80; 0, 0, 0, 0, 0, 0, 0, t65, t158, t83, -t113, 0, -pkin(7) * t83 - t94, pkin(7) * t113 - t93, -t17, t159, -t160, -t39, 0, -t96 + t156, -t95 + t155; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t17, t159, -t160, -t39, 0, -t92 + t156, -t91 + t155; 0, 0, 0, 0, 0, 0, 0, -t65, -t158, 0, 0, 0, qJD(3) * t20 - t107, qJD(3) * t21 - t106, t17, -t159, 0, 0, 0, qJD(3) * t1 - t123, -qJD(3) * t3 - t122; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, -t65, -t158, 0, 0, 0, t94, t93, t17, -t159, 0, 0, 0, t96, t95; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t85 * t132, -t88 * t132; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t85 * t100, -t88 * t100; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t17, -t159, 0, 0, 0, qJD(3) * t5 - t108, qJD(3) * t6 + t109; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t17, -t159, 0, 0, 0, t92, t91; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t85 * t131, t88 * t131; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t9;
