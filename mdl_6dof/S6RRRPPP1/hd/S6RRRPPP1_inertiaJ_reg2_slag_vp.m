% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRPPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha4,d1,d2,d3,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 15:20
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRPPP1_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPP1_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPP1_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 04:01:45
% EndTime: 2019-05-07 04:01:57
% DurationCPUTime: 3.46s
% Computational Cost: add. (2773->284), mult. (6740->509), div. (0->0), fcn. (7303->8), ass. (0->139)
t100 = sin(pkin(6));
t101 = cos(pkin(10));
t102 = cos(pkin(6));
t103 = sin(qJ(3));
t105 = cos(qJ(3));
t152 = qJ(4) * t100;
t71 = -t105 * pkin(3) - t103 * t152 - pkin(2);
t151 = qJ(4) * t102;
t125 = pkin(9) + t151;
t73 = t125 * t103;
t170 = (t100 * t71 - t102 * t73) * t101;
t147 = t102 * t105;
t99 = sin(pkin(10));
t62 = -t101 * t147 + t99 * t103;
t64 = t101 * t103 + t99 * t147;
t110 = (t101 * t64 - t62 * t99) * t100;
t106 = cos(qJ(2));
t104 = sin(qJ(2));
t146 = t103 * t104;
t112 = -t100 * t106 - t102 * t146;
t143 = t105 * t104;
t36 = -t112 * t101 + t99 * t143;
t38 = t101 * t143 + t112 * t99;
t111 = (t101 * t38 - t36 * t99) * t100;
t142 = t105 * t106;
t79 = -t106 * pkin(2) - t104 * pkin(9) - pkin(1);
t52 = pkin(8) * t142 + t103 * t79;
t29 = t112 * qJ(4) + t52;
t165 = pkin(8) * t103;
t72 = t105 * t79;
t31 = -t143 * t151 + t72 + (-pkin(3) - t165) * t106;
t150 = t100 * t105;
t49 = (pkin(3) * t103 - qJ(4) * t150 + pkin(8)) * t104;
t7 = (t100 * t49 + t102 * t31) * t101 - t99 * t29;
t34 = t36 ^ 2;
t35 = t38 ^ 2;
t59 = t62 ^ 2;
t60 = t64 ^ 2;
t169 = 0.2e1 * t100;
t168 = -0.2e1 * t104;
t167 = 0.2e1 * t106;
t166 = pkin(2) * t105;
t164 = t100 * pkin(3);
t163 = t104 * pkin(8);
t162 = t36 * t38;
t24 = t36 * t62;
t25 = t38 * t64;
t70 = t100 * t146 - t106 * t102;
t161 = t38 * t70;
t160 = t62 * t64;
t159 = t70 * t36;
t158 = pkin(4) + qJ(6);
t74 = t125 * t105;
t68 = t99 * t74;
t157 = pkin(4) * t150 + t68;
t154 = t102 * t99;
t89 = t100 * t101;
t67 = pkin(3) * t154 + qJ(4) * t89;
t95 = t103 ^ 2;
t97 = t105 ^ 2;
t156 = t95 + t97;
t88 = t100 * t99;
t93 = t100 ^ 2;
t155 = t101 * t93;
t153 = t105 * t93;
t148 = t101 * t102;
t145 = t103 * t105;
t144 = t103 * t106;
t141 = -0.2e1 * t162;
t140 = -0.2e1 * t160;
t139 = t104 * t167;
t8 = t101 * t29 + t31 * t154 + t49 * t88;
t21 = t101 * t74 - t73 * t154 + t71 * t88;
t30 = t38 * t88;
t48 = t64 * t88;
t138 = t99 * t155;
t137 = t62 * t150;
t136 = t100 * t154;
t135 = t36 * t89;
t134 = t62 * t89;
t133 = t64 * t150;
t132 = t70 * t150;
t131 = t100 * t148;
t130 = t100 * t147;
t128 = t103 * t143;
t127 = -pkin(3) * t101 - pkin(4);
t126 = -qJ(5) * t99 - pkin(3);
t15 = -t100 * t31 + t102 * t49;
t32 = t100 * t73 + t102 * t71;
t50 = -t102 * qJ(5) - t67;
t124 = t36 * t64 + t62 * t38;
t51 = -pkin(8) * t144 + t72;
t119 = -t51 * t103 + t52 * t105;
t4 = -t70 * qJ(5) - t8;
t18 = t38 * t102 + t70 * t88;
t118 = t36 * t150 - t70 * t62;
t117 = t38 * t150 - t64 * t70;
t116 = -t64 * t102 + t99 * t153;
t115 = -t38 * qJ(5) + t15;
t114 = -t64 * qJ(5) + t32;
t113 = -t102 * t36 + t70 * t89;
t41 = t101 * t153 + t102 * t62;
t16 = qJ(5) * t150 - t21;
t108 = pkin(8) ^ 2;
t98 = t106 ^ 2;
t96 = t104 ^ 2;
t94 = t102 ^ 2;
t92 = t96 * t108;
t90 = t93 * t97;
t87 = t93 * t101 ^ 2;
t86 = t93 * t99 ^ 2;
t82 = t99 * t152;
t78 = -0.2e1 * t131;
t77 = 0.2e1 * t136;
t76 = 0.2e1 * t138;
t66 = pkin(3) * t148 - t82;
t61 = t70 ^ 2;
t56 = t70 * t102;
t54 = (-pkin(4) * t101 + t126) * t100;
t53 = t127 * t102 + t82;
t47 = -0.2e1 * t133;
t46 = -0.2e1 * t137;
t43 = (-t158 * t101 + t126) * t100;
t42 = pkin(5) * t89 - t50;
t33 = pkin(5) * t88 + t82 + (-qJ(6) + t127) * t102;
t23 = 0.2e1 * t159;
t22 = 0.2e1 * t161;
t20 = -t68 + t170;
t17 = t157 - t170;
t14 = t62 * pkin(4) + t114;
t11 = -t62 * pkin(5) - t16;
t10 = t158 * t62 + t114;
t9 = t73 * t148 + t64 * pkin(5) + (qJ(6) * t105 - t101 * t71) * t100 + t157;
t6 = t36 * pkin(4) + t115;
t5 = -t70 * pkin(4) - t7;
t3 = t158 * t36 + t115;
t2 = -t36 * pkin(5) - t4;
t1 = t38 * pkin(5) - t158 * t70 - t7;
t12 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t96, t139, 0, t98, 0, 0, pkin(1) * t167, pkin(1) * t168, 0.2e1 * (t96 + t98) * pkin(8), pkin(1) ^ 2 + t98 * t108 + t92, t97 * t96, -0.2e1 * t96 * t145, t142 * t168, t95 * t96, t103 * t139, t98, -0.2e1 * t51 * t106 + 0.2e1 * t96 * t165, 0.2e1 * t96 * pkin(8) * t105 + 0.2e1 * t52 * t106, 0.2e1 * (-t103 * t52 - t105 * t51) * t104, t51 ^ 2 + t52 ^ 2 + t92, t35, t141, t22, t34, -0.2e1 * t159, t61, 0.2e1 * t15 * t36 + 0.2e1 * t7 * t70, 0.2e1 * t15 * t38 - 0.2e1 * t8 * t70, -0.2e1 * t8 * t36 - 0.2e1 * t7 * t38, t15 ^ 2 + t7 ^ 2 + t8 ^ 2, t61, -0.2e1 * t161, t23, t35, t141, t34, 0.2e1 * t4 * t36 + 0.2e1 * t5 * t38, -0.2e1 * t6 * t36 + 0.2e1 * t5 * t70, -0.2e1 * t6 * t38 - 0.2e1 * t4 * t70, t4 ^ 2 + t5 ^ 2 + t6 ^ 2, t61, t23, t22, t34, 0.2e1 * t162, t35, 0.2e1 * t1 * t38 - 0.2e1 * t2 * t36, 0.2e1 * t2 * t70 - 0.2e1 * t3 * t38, -0.2e1 * t1 * t70 + 0.2e1 * t3 * t36, t1 ^ 2 + t2 ^ 2 + t3 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t104, 0, t106, 0, -t163, -t106 * pkin(8), 0, 0, t128 (-t95 + t97) * t104, -t144, -t128, -t142, 0, -pkin(8) * t143 + (-pkin(2) * t104 + pkin(9) * t106) * t103, pkin(9) * t142 + (t165 - t166) * t104, t119, -pkin(2) * t163 + pkin(9) * t119, t25, -t124, -t117, t24, t118, -t132, t15 * t62 - t7 * t150 + t20 * t70 + t32 * t36, t15 * t64 + t8 * t150 - t21 * t70 + t32 * t38, -t20 * t38 - t21 * t36 - t8 * t62 - t7 * t64, t15 * t32 + t7 * t20 + t8 * t21, -t132, t117, -t118, t25, -t124, t24, t16 * t36 + t17 * t38 + t4 * t62 + t5 * t64, -t14 * t36 - t5 * t150 + t17 * t70 - t6 * t62, -t14 * t38 + t4 * t150 - t16 * t70 - t6 * t64, t6 * t14 + t4 * t16 + t5 * t17, -t132, -t118, -t117, t24, t124, t25, t1 * t64 - t11 * t36 - t2 * t62 + t9 * t38, -t10 * t38 + t11 * t70 - t2 * t150 - t3 * t64, t1 * t150 + t10 * t36 + t3 * t62 - t9 * t70, t1 * t9 + t3 * t10 + t2 * t11; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t95, 0.2e1 * t145, 0, t97, 0, 0, 0.2e1 * t166, -0.2e1 * pkin(2) * t103, 0.2e1 * t156 * pkin(9), t156 * pkin(9) ^ 2 + pkin(2) ^ 2, t60, t140, t47, t59, 0.2e1 * t137, t90, -0.2e1 * t20 * t150 + 0.2e1 * t32 * t62, 0.2e1 * t21 * t150 + 0.2e1 * t32 * t64, -0.2e1 * t20 * t64 - 0.2e1 * t21 * t62, t20 ^ 2 + t21 ^ 2 + t32 ^ 2, t90, 0.2e1 * t133, t46, t60, t140, t59, 0.2e1 * t16 * t62 + 0.2e1 * t17 * t64, -0.2e1 * t14 * t62 - 0.2e1 * t17 * t150, -0.2e1 * t14 * t64 + 0.2e1 * t16 * t150, t14 ^ 2 + t16 ^ 2 + t17 ^ 2, t90, t46, t47, t59, 0.2e1 * t160, t60, -0.2e1 * t11 * t62 + 0.2e1 * t9 * t64, -0.2e1 * t10 * t64 - 0.2e1 * t11 * t150, 0.2e1 * t10 * t62 + 0.2e1 * t9 * t150, t10 ^ 2 + t11 ^ 2 + t9 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t143, 0, -t146, -t106, t51, -t52, 0, 0, t30, t111, t18, -t135, t113, t56, t7 * t102 + t66 * t70 + (-pkin(3) * t36 - t101 * t15) * t100, -t8 * t102 - t67 * t70 + (-pkin(3) * t38 + t15 * t99) * t100, -t67 * t36 - t66 * t38 + (t101 * t8 - t7 * t99) * t100, -t15 * t164 + t7 * t66 + t8 * t67, t56, -t18, -t113, t30, t111, -t135, t50 * t36 + t53 * t38 + (-t101 * t4 + t5 * t99) * t100, t5 * t102 - t54 * t36 + t53 * t70 + t6 * t89, -t4 * t102 - t54 * t38 - t50 * t70 - t6 * t88, t4 * t50 + t5 * t53 + t6 * t54, t56, -t113, t18, -t135, -t111, t30, t33 * t38 - t42 * t36 + (t1 * t99 + t101 * t2) * t100, t2 * t102 - t3 * t88 - t43 * t38 + t42 * t70, -t1 * t102 - t3 * t89 - t33 * t70 + t43 * t36, t1 * t33 + t2 * t42 + t3 * t43; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t103, 0, t105, 0, -t103 * pkin(9), -t105 * pkin(9), 0, 0, t48, t110, -t116, -t134, -t41, -t130, t20 * t102 + (-pkin(3) * t62 - t101 * t32 - t105 * t66) * t100, -t21 * t102 + (-pkin(3) * t64 + t105 * t67 + t32 * t99) * t100, -t67 * t62 - t66 * t64 + (t101 * t21 - t20 * t99) * t100, -t32 * t164 + t20 * t66 + t21 * t67, -t130, t116, t41, t48, t110, -t134, t50 * t62 + t53 * t64 + (-t101 * t16 + t17 * t99) * t100, t17 * t102 - t54 * t62 + (t101 * t14 - t105 * t53) * t100, -t16 * t102 - t54 * t64 + (t105 * t50 - t14 * t99) * t100, t14 * t54 + t16 * t50 + t17 * t53, -t130, t41, -t116, -t134, -t110, t48, t33 * t64 - t42 * t62 + (t101 * t11 + t9 * t99) * t100, t11 * t102 - t43 * t64 + (-t10 * t99 - t105 * t42) * t100, -t9 * t102 + t43 * t62 + (-t10 * t101 + t105 * t33) * t100, t10 * t43 + t11 * t42 + t9 * t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t86, t76, t77, t87, 0.2e1 * t131, t94, 0.2e1 * pkin(3) * t155 + 0.2e1 * t66 * t102, -0.2e1 * t93 * pkin(3) * t99 - 0.2e1 * t67 * t102 (t101 * t67 - t66 * t99) * t169, t93 * pkin(3) ^ 2 + t66 ^ 2 + t67 ^ 2, t94, -0.2e1 * t136, t78, t86, t76, t87 (-t101 * t50 + t53 * t99) * t169, 0.2e1 * t53 * t102 + 0.2e1 * t54 * t89, -0.2e1 * t50 * t102 - 0.2e1 * t54 * t88, t50 ^ 2 + t53 ^ 2 + t54 ^ 2, t94, t78, t77, t87, -0.2e1 * t138, t86 (t101 * t42 + t33 * t99) * t169, 0.2e1 * t42 * t102 - 0.2e1 * t43 * t88, -0.2e1 * t33 * t102 - 0.2e1 * t43 * t89, t33 ^ 2 + t42 ^ 2 + t43 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t36, t38, 0, t15, 0, 0, 0, 0, 0, 0, 0, -t36, -t38, t6, 0, 0, 0, 0, 0, 0, 0, -t38, t36, t3; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62, t64, 0, t32, 0, 0, 0, 0, 0, 0, 0, -t62, -t64, t14, 0, 0, 0, 0, 0, 0, 0, -t64, t62, t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t89, t88, 0, -t164, 0, 0, 0, 0, 0, 0, 0, t89, -t88, t54, 0, 0, 0, 0, 0, 0, 0, -t88, -t89, t43; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38, t70, 0, t5, 0, 0, 0, 0, 0, 0, t38, 0, -t70, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t64, -t150, 0, t17, 0, 0, 0, 0, 0, 0, t64, 0, t150, t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t88, t102, 0, t53, 0, 0, 0, 0, 0, 0, t88, 0, -t102, t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t36, t70, 0, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t62, -t150, 0, t11; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t89, t102, 0, t42; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t12;
