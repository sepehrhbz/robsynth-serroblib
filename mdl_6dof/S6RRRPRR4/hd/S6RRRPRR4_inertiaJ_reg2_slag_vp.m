% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRPRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 18:19
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRPRR4_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR4_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRR4_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 10:27:26
% EndTime: 2019-05-07 10:27:35
% DurationCPUTime: 2.81s
% Computational Cost: add. (3513->195), mult. (6716->358), div. (0->0), fcn. (8009->10), ass. (0->135)
t127 = sin(qJ(3));
t161 = t127 * pkin(2);
t111 = qJ(4) + t161;
t123 = sin(pkin(11));
t119 = t123 ^ 2;
t124 = cos(pkin(11));
t120 = t124 ^ 2;
t142 = t119 + t120;
t144 = t142 * t111;
t126 = sin(qJ(5));
t130 = cos(qJ(5));
t178 = -t126 * t123 + t130 * t124;
t132 = cos(qJ(2));
t168 = -pkin(8) - pkin(7);
t107 = t168 * t132;
t131 = cos(qJ(3));
t128 = sin(qJ(2));
t139 = t168 * t128;
t75 = -t127 * t107 - t131 * t139;
t177 = t75 ^ 2;
t98 = t127 * t128 - t131 * t132;
t96 = t98 ^ 2;
t112 = -t124 * pkin(4) - pkin(3);
t158 = t131 * pkin(2);
t102 = t112 - t158;
t166 = t178 * pkin(5);
t78 = t102 - t166;
t176 = 0.2e1 * t78;
t79 = t112 - t166;
t175 = 0.2e1 * t79;
t174 = -0.2e1 * t98;
t173 = 0.2e1 * t98;
t172 = 0.2e1 * t102;
t171 = 0.2e1 * t112;
t115 = -t132 * pkin(2) - pkin(1);
t170 = 0.2e1 * t115;
t169 = 0.2e1 * t132;
t125 = sin(qJ(6));
t129 = cos(qJ(6));
t100 = t127 * t132 + t131 * t128;
t148 = t124 * t100;
t63 = t98 * pkin(3) - t100 * qJ(4) + t115;
t77 = -t131 * t107 + t127 * t139;
t36 = -t123 * t77 + t124 * t63;
t26 = t98 * pkin(4) - pkin(9) * t148 + t36;
t150 = t123 * t100;
t37 = t123 * t63 + t124 * t77;
t29 = -pkin(9) * t150 + t37;
t11 = -t126 * t29 + t130 * t26;
t164 = t98 * pkin(5);
t56 = t178 * t100;
t6 = -t56 * pkin(10) + t11 + t164;
t12 = t126 * t26 + t130 * t29;
t95 = t130 * t123 + t126 * t124;
t54 = t95 * t100;
t8 = -t54 * pkin(10) + t12;
t3 = -t125 * t8 + t129 * t6;
t159 = t129 * t8;
t4 = t125 * t6 + t159;
t64 = t125 * t95 - t129 * t178;
t66 = t125 * t178 + t129 * t95;
t167 = -t3 * t66 - t4 * t64;
t165 = t95 * pkin(10);
t163 = -t11 * t95 + t12 * t178;
t162 = t125 * pkin(5);
t160 = t129 * pkin(5);
t114 = -pkin(3) - t158;
t157 = pkin(3) - t114;
t87 = (-pkin(9) - t111) * t123;
t118 = t124 * pkin(9);
t88 = t124 * t111 + t118;
t59 = -t126 * t88 + t130 * t87;
t42 = t59 - t165;
t60 = t126 * t87 + t130 * t88;
t89 = t178 * pkin(10);
t43 = t60 + t89;
t22 = -t125 * t43 + t129 * t42;
t23 = t125 * t42 + t129 * t43;
t156 = -t22 * t66 - t23 * t64;
t103 = (-pkin(9) - qJ(4)) * t123;
t104 = t124 * qJ(4) + t118;
t71 = t130 * t103 - t126 * t104;
t49 = t71 - t165;
t72 = t126 * t103 + t130 * t104;
t50 = t72 + t89;
t27 = -t125 * t50 + t129 * t49;
t28 = t125 * t49 + t129 * t50;
t155 = -t27 * t66 - t28 * t64;
t154 = t178 * t60 - t59 * t95;
t153 = t178 * t72 - t71 * t95;
t152 = t78 + t79;
t151 = t75 * t124;
t149 = t123 * t124;
t145 = t102 + t112;
t143 = t142 * qJ(4);
t121 = t128 ^ 2;
t122 = t132 ^ 2;
t141 = t121 + t122;
t140 = t100 * t174;
t48 = pkin(4) * t150 + t75;
t138 = -pkin(3) * t100 - qJ(4) * t98;
t15 = -t36 * t123 + t37 * t124;
t137 = t100 * t114 - t111 * t98;
t108 = 0.2e1 * t149;
t97 = t100 ^ 2;
t91 = t95 ^ 2;
t90 = t178 ^ 2;
t86 = t124 * t98;
t85 = t123 * t98;
t80 = t123 * t148;
t74 = t95 * t98;
t73 = t178 * t98;
t70 = 0.2e1 * t95 * t178;
t69 = t75 * t123;
t67 = (-t119 + t120) * t100;
t62 = t66 ^ 2;
t61 = t64 ^ 2;
t47 = t66 * t98;
t46 = t64 * t98;
t41 = t56 * t95;
t40 = t54 * t178;
t39 = t48 * t95;
t38 = t48 * t178;
t35 = -0.2e1 * t66 * t64;
t34 = (-t125 * t64 - t129 * t66) * pkin(5);
t33 = t54 * pkin(5) + t48;
t32 = -t125 * t54 + t129 * t56;
t30 = t125 * t56 + t129 * t54;
t24 = t178 * t56 - t95 * t54;
t21 = t33 * t66;
t20 = t33 * t64;
t19 = t32 * t66;
t18 = t30 * t64;
t7 = -t66 * t30 - t32 * t64;
t1 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t121, t128 * t169, 0, t122, 0, 0, pkin(1) * t169, -0.2e1 * pkin(1) * t128, 0.2e1 * t141 * pkin(7), t141 * pkin(7) ^ 2 + pkin(1) ^ 2, t97, t140, 0, t96, 0, 0, t98 * t170, t100 * t170, 0.2e1 * t75 * t100 - 0.2e1 * t77 * t98, t115 ^ 2 + t77 ^ 2 + t177, t120 * t97, -0.2e1 * t97 * t149, t148 * t173, t119 * t97, t123 * t140, t96, 0.2e1 * t150 * t75 + 0.2e1 * t36 * t98, 0.2e1 * t148 * t75 - 0.2e1 * t37 * t98, 0.2e1 * (-t123 * t37 - t124 * t36) * t100, t36 ^ 2 + t37 ^ 2 + t177, t56 ^ 2, -0.2e1 * t56 * t54, t56 * t173, t54 ^ 2, -t54 * t173, t96, 0.2e1 * t11 * t98 + 0.2e1 * t48 * t54, -0.2e1 * t12 * t98 + 0.2e1 * t48 * t56, -0.2e1 * t11 * t56 - 0.2e1 * t12 * t54, t11 ^ 2 + t12 ^ 2 + t48 ^ 2, t32 ^ 2, -0.2e1 * t32 * t30, t32 * t173, t30 ^ 2, t30 * t174, t96, 0.2e1 * t3 * t98 + 0.2e1 * t33 * t30, 0.2e1 * t33 * t32 - 0.2e1 * t4 * t98, -0.2e1 * t3 * t32 - 0.2e1 * t4 * t30, t3 ^ 2 + t33 ^ 2 + t4 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t128, 0, t132, 0, -t128 * pkin(7), -t132 * pkin(7), 0, 0, 0, 0, t100, 0, -t98, 0, -t75, -t77 (-t100 * t131 - t127 * t98) * pkin(2) (t127 * t77 - t131 * t75) * pkin(2), t80, t67, t85, -t80, t86, 0, t123 * t137 - t151, t124 * t137 + t69, t15, t111 * t15 + t75 * t114, t41, t24, t74, -t40, t73, 0, t102 * t54 + t59 * t98 - t38, t102 * t56 - t60 * t98 + t39, -t60 * t54 - t59 * t56 + t163, t48 * t102 + t11 * t59 + t12 * t60, t19, t7, t47, t18, -t46, 0, t22 * t98 + t78 * t30 + t20, -t23 * t98 + t78 * t32 + t21, -t22 * t32 - t23 * t30 + t167, t3 * t22 + t4 * t23 + t33 * t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t158, -0.2e1 * t161, 0 (t127 ^ 2 + t131 ^ 2) * pkin(2) ^ 2, t119, t108, 0, t120, 0, 0, -0.2e1 * t114 * t124, 0.2e1 * t114 * t123, 0.2e1 * t144, t142 * t111 ^ 2 + t114 ^ 2, t91, t70, 0, t90, 0, 0, -t178 * t172, t95 * t172, 0.2e1 * t154, t102 ^ 2 + t59 ^ 2 + t60 ^ 2, t62, t35, 0, t61, 0, 0, t64 * t176, t66 * t176, 0.2e1 * t156, t22 ^ 2 + t23 ^ 2 + t78 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, 0, -t98, 0, -t75, -t77, 0, 0, t80, t67, t85, -t80, t86, 0, t123 * t138 - t151, t124 * t138 + t69, t15, -t75 * pkin(3) + qJ(4) * t15, t41, t24, t74, -t40, t73, 0, t112 * t54 + t71 * t98 - t38, t112 * t56 - t72 * t98 + t39, -t72 * t54 - t71 * t56 + t163, t11 * t71 + t48 * t112 + t12 * t72, t19, t7, t47, t18, -t46, 0, t27 * t98 + t79 * t30 + t20, -t28 * t98 + t79 * t32 + t21, -t27 * t32 - t28 * t30 + t167, t3 * t27 + t4 * t28 + t33 * t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t158, -t161, 0, 0, t119, t108, 0, t120, 0, 0, t157 * t124, -t157 * t123, t143 + t144, -t114 * pkin(3) + qJ(4) * t144, t91, t70, 0, t90, 0, 0, -t145 * t178, t145 * t95, t153 + t154, t102 * t112 + t59 * t71 + t60 * t72, t62, t35, 0, t61, 0, 0, t152 * t64, t152 * t66, t155 + t156, t22 * t27 + t23 * t28 + t78 * t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t119, t108, 0, t120, 0, 0, 0.2e1 * pkin(3) * t124, -0.2e1 * pkin(3) * t123, 0.2e1 * t143, t142 * qJ(4) ^ 2 + pkin(3) ^ 2, t91, t70, 0, t90, 0, 0, -t178 * t171, t95 * t171, 0.2e1 * t153, t112 ^ 2 + t71 ^ 2 + t72 ^ 2, t62, t35, 0, t61, 0, 0, t64 * t175, t66 * t175, 0.2e1 * t155, t27 ^ 2 + t28 ^ 2 + t79 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t150, t148, 0, t75, 0, 0, 0, 0, 0, 0, t54, t56, 0, t48, 0, 0, 0, 0, 0, 0, t30, t32, 0, t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t124, t123, 0, t114, 0, 0, 0, 0, 0, 0, -t178, t95, 0, t102, 0, 0, 0, 0, 0, 0, t64, t66, 0, t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t124, t123, 0, -pkin(3), 0, 0, 0, 0, 0, 0, -t178, t95, 0, t112, 0, 0, 0, 0, 0, 0, t64, t66, 0, t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t56, 0, -t54, t98, t11, -t12, 0, 0, 0, 0, t32, 0, -t30, t98, t160 * t98 + t3, -t159 + (-t6 - t164) * t125 (-t125 * t30 - t129 * t32) * pkin(5) (t125 * t4 + t129 * t3) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t95, 0, t178, 0, t59, -t60, 0, 0, 0, 0, t66, 0, -t64, 0, t22, -t23, t34 (t125 * t23 + t129 * t22) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t95, 0, t178, 0, t71, -t72, 0, 0, 0, 0, t66, 0, -t64, 0, t27, -t28, t34 (t125 * t28 + t129 * t27) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t160, -0.2e1 * t162, 0 (t125 ^ 2 + t129 ^ 2) * pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t32, 0, -t30, t98, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, 0, -t64, 0, t22, -t23, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, 0, -t64, 0, t27, -t28, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t160, -t162, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t1;
