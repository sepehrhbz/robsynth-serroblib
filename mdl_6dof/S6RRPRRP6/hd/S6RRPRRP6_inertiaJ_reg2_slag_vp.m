% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRPRRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,theta3]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 12:15
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPRRP6_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP6_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRP6_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 18:05:41
% EndTime: 2019-05-06 18:05:51
% DurationCPUTime: 2.82s
% Computational Cost: add. (2940->220), mult. (7169->404), div. (0->0), fcn. (8056->10), ass. (0->150)
t96 = sin(qJ(5));
t88 = t96 ^ 2;
t99 = cos(qJ(5));
t90 = t99 ^ 2;
t173 = t88 + t90;
t97 = sin(qJ(4));
t146 = t88 * t97;
t81 = t90 * t97;
t61 = t81 + t146;
t100 = cos(qJ(4));
t101 = cos(qJ(2));
t92 = sin(pkin(11));
t93 = sin(pkin(6));
t94 = cos(pkin(11));
t98 = sin(qJ(2));
t53 = (t101 * t92 + t94 * t98) * t93;
t95 = cos(pkin(6));
t43 = t53 * t100 + t95 * t97;
t125 = t93 * t101;
t144 = t93 * t98;
t51 = -t94 * t125 + t92 * t144;
t29 = t43 * t99 + t51 * t96;
t129 = t29 * t100;
t41 = -t95 * t100 + t53 * t97;
t82 = t99 * t97;
t31 = t41 * t82;
t172 = t31 + t129;
t27 = t43 * t96 - t51 * t99;
t171 = t27 ^ 2;
t40 = t41 ^ 2;
t170 = t51 ^ 2;
t169 = -0.2e1 * t51;
t110 = -t99 * pkin(5) - t96 * qJ(6);
t65 = -pkin(4) + t110;
t168 = -0.2e1 * t65;
t167 = 0.2e1 * t95;
t166 = 0.2e1 * t97;
t139 = pkin(8) + qJ(3);
t154 = t95 * pkin(2);
t70 = t95 * t101 * pkin(1);
t44 = -t139 * t144 + t154 + t70;
t165 = pkin(1) * t98;
t120 = t95 * t165;
t48 = t139 * t125 + t120;
t136 = -t94 * t44 + t92 * t48;
t17 = -t95 * pkin(3) + t136;
t11 = t41 * pkin(4) - t43 * pkin(10) + t17;
t25 = t92 * t44 + t94 * t48;
t18 = t95 * pkin(9) + t25;
t62 = (-pkin(2) * t101 - pkin(1)) * t93;
t30 = t51 * pkin(3) - t53 * pkin(9) + t62;
t13 = t100 * t18 + t97 * t30;
t8 = t51 * pkin(10) + t13;
t4 = t96 * t11 + t99 * t8;
t164 = pkin(4) * t96;
t163 = pkin(4) * t99;
t162 = pkin(10) * t29;
t128 = t41 * qJ(6);
t1 = t128 + t4;
t161 = t1 * t99;
t160 = t4 * t99;
t159 = t41 * pkin(5);
t12 = t100 * t30 - t97 * t18;
t7 = -t51 * pkin(4) - t12;
t158 = t7 * t96;
t157 = t7 * t99;
t156 = t92 * pkin(2);
t155 = t94 * pkin(2);
t153 = t96 * pkin(10);
t152 = t99 * pkin(10);
t151 = t100 * pkin(4);
t150 = t27 * t99;
t149 = t29 * t27;
t148 = t41 * t27;
t76 = pkin(9) + t156;
t147 = t76 * t96;
t89 = t97 ^ 2;
t145 = t89 * t76;
t34 = t96 * t41;
t79 = t96 * t97;
t143 = t96 * t99;
t35 = t97 * t41;
t142 = t97 * t51;
t141 = t97 * t76;
t140 = t99 * t41;
t19 = t27 * t82;
t20 = t29 * t79;
t138 = -t19 - t20;
t137 = -t19 + t20;
t77 = -pkin(3) - t155;
t59 = -t97 * pkin(10) - t151 + t77;
t83 = t99 * t100;
t39 = t96 * t59 + t76 * t83;
t135 = t61 * pkin(10);
t134 = t173 * pkin(10) ^ 2;
t91 = t100 ^ 2;
t133 = t89 + t91;
t132 = t100 * t27;
t131 = t100 * t76;
t86 = t93 ^ 2;
t130 = t101 * t86;
t127 = t41 * t100;
t126 = t43 * t100;
t124 = t96 * t100;
t123 = t97 * t100;
t122 = t100 * qJ(6);
t121 = t93 * t167;
t119 = pkin(10) * t34;
t118 = pkin(10) * t140;
t117 = t27 * t79;
t116 = t96 * t35;
t115 = t89 * t143;
t114 = t96 * t123;
t113 = -t99 * t11 + t96 * t8;
t2 = t113 - t159;
t112 = t2 * t96 + t161;
t111 = t113 * t96 + t160;
t109 = -pkin(5) * t96 + t99 * qJ(6);
t108 = t96 * t27 - t29 * t99;
t32 = -t122 + t39;
t55 = t99 * t59;
t33 = -t55 + (pkin(5) + t147) * t100;
t107 = t32 * t99 + t33 * t96;
t38 = -t76 * t124 + t55;
t106 = -t38 * t96 + t39 * t99;
t105 = -t116 - t132;
t104 = t116 - t132;
t87 = t95 ^ 2;
t80 = t90 * t89;
t78 = t88 * t89;
t74 = t76 ^ 2;
t72 = pkin(10) * t124;
t69 = t96 * t82;
t67 = -0.2e1 * t97 * t83;
t66 = t89 * t74;
t64 = 0.2e1 * t173 * pkin(10);
t60 = -t81 + t146;
t58 = pkin(8) * t125 + t120;
t57 = -pkin(8) * t144 + t70;
t56 = t80 + t78 + t91;
t49 = t100 * t51;
t47 = (-t109 + t76) * t97;
t26 = t29 ^ 2;
t23 = t29 * t96;
t22 = pkin(10) * t150;
t21 = t29 * t82;
t15 = 0.2e1 * t29 * t41;
t14 = t31 - t129;
t5 = t27 * pkin(5) - t29 * qJ(6) + t7;
t3 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t86 * t98 ^ 2, 0.2e1 * t98 * t130, t98 * t121, t86 * t101 ^ 2, t101 * t121, t87, 0.2e1 * pkin(1) * t130 + 0.2e1 * t57 * t95, -0.2e1 * t86 * t165 - 0.2e1 * t58 * t95, 0.2e1 * (t101 * t58 - t57 * t98) * t93, t86 * pkin(1) ^ 2 + t57 ^ 2 + t58 ^ 2, t53 ^ 2, t53 * t169, t53 * t167, t170, t95 * t169, t87, -0.2e1 * t136 * t95 + 0.2e1 * t62 * t51, -0.2e1 * t25 * t95 + 0.2e1 * t62 * t53, 0.2e1 * t136 * t53 - 0.2e1 * t25 * t51, t136 ^ 2 + t25 ^ 2 + t62 ^ 2, t43 ^ 2, -0.2e1 * t43 * t41, 0.2e1 * t43 * t51, t40, t41 * t169, t170, 0.2e1 * t12 * t51 + 0.2e1 * t17 * t41, -0.2e1 * t13 * t51 + 0.2e1 * t17 * t43, -0.2e1 * t12 * t43 - 0.2e1 * t13 * t41, t12 ^ 2 + t13 ^ 2 + t17 ^ 2, t26, -0.2e1 * t149, t15, t171, -0.2e1 * t148, t40, -0.2e1 * t113 * t41 + 0.2e1 * t7 * t27, 0.2e1 * t7 * t29 - 0.2e1 * t4 * t41, 0.2e1 * t113 * t29 - 0.2e1 * t4 * t27, t113 ^ 2 + t4 ^ 2 + t7 ^ 2, t26, t15, 0.2e1 * t149, t40, 0.2e1 * t148, t171, -0.2e1 * t2 * t41 + 0.2e1 * t5 * t27, -0.2e1 * t1 * t27 + 0.2e1 * t2 * t29, 0.2e1 * t1 * t41 - 0.2e1 * t5 * t29, t1 ^ 2 + t2 ^ 2 + t5 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t144, 0, t125, t95, t57, -t58, 0, 0, 0, 0, t53, 0, -t51, t95, t94 * t154 - t136, -t92 * t154 - t25 (-t51 * t92 - t53 * t94) * pkin(2) (-t136 * t94 + t25 * t92) * pkin(2), t43 * t97, -t35 + t126, t142, -t127, t49, 0, -t17 * t100 - t141 * t51 + t77 * t41, -t131 * t51 + t17 * t97 + t77 * t43 (t43 * t76 - t12) * t97 + (-t41 * t76 + t13) * t100, t17 * t77 + (t13 * t100 - t12 * t97) * t76, t21, t138, t14, t117, -t104, -t127, t113 * t100 + t38 * t41 + (t27 * t76 + t158) * t97, t4 * t100 - t39 * t41 + (t29 * t76 + t157) * t97, -t39 * t27 - t38 * t29 + (t113 * t99 - t4 * t96) * t97, -t113 * t38 + t141 * t7 + t4 * t39, t21, t14, -t138, -t127, t104, t117, t2 * t100 + t47 * t27 - t33 * t41 + t5 * t79, -t32 * t27 + t33 * t29 + (-t1 * t96 + t2 * t99) * t97, -t1 * t100 - t47 * t29 + t32 * t41 - t5 * t82, t1 * t32 + t2 * t33 + t5 * t47; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t155, -0.2e1 * t156, 0 (t92 ^ 2 + t94 ^ 2) * pkin(2) ^ 2, t89, 0.2e1 * t123, 0, t91, 0, 0, -0.2e1 * t77 * t100, t77 * t166, 0.2e1 * t133 * t76, t91 * t74 + t77 ^ 2 + t66, t80, -0.2e1 * t115, t67, t78, 0.2e1 * t114, t91, -0.2e1 * t38 * t100 + 0.2e1 * t145 * t96, 0.2e1 * t39 * t100 + 0.2e1 * t145 * t99 (-t38 * t99 - t39 * t96) * t166, t38 ^ 2 + t39 ^ 2 + t66, t80, t67, 0.2e1 * t115, t91, -0.2e1 * t114, t78, 0.2e1 * t33 * t100 + 0.2e1 * t47 * t79 (-t32 * t96 + t33 * t99) * t166, -0.2e1 * t32 * t100 - 0.2e1 * t47 * t82, t32 ^ 2 + t33 ^ 2 + t47 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t51, t53, 0, t62, 0, 0, 0, 0, 0, 0, t49, -t142, -t35 - t126, t12 * t100 + t13 * t97, 0, 0, 0, 0, 0, 0, t105, -t172, t137, -t7 * t100 + t111 * t97, 0, 0, 0, 0, 0, 0, t105, t137, t172, -t5 * t100 + t112 * t97; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (t106 - t131) * t97, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t47 * t100 + t107 * t97; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t133, 0, 0, 0, 0, 0, 0, 0, 0, 0, t56, 0, 0, 0, 0, 0, 0, 0, 0, 0, t56; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t43, 0, -t41, t51, t12, -t13, 0, 0, t23, -t108, t34, -t150, t140, 0, -pkin(4) * t27 - t119 - t157, -pkin(4) * t29 - t118 + t158, t160 - t22 + (t113 + t162) * t96, -t7 * pkin(4) + pkin(10) * t111, t23, t34, t108, 0, -t140, -t150, t65 * t27 - t5 * t99 - t119, t161 - t22 + (t2 + t162) * t96, -t65 * t29 - t5 * t96 + t118, pkin(10) * t112 + t5 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t97, 0, t100, 0, -t141, -t131, 0, 0, t69, -t60, -t124, -t69, -t83, 0, t72 + (-t76 * t99 - t164) * t97, pkin(10) * t83 + (t147 - t163) * t97, t106, -pkin(4) * t141 + pkin(10) * t106, t69, -t124, t60, 0, t83, -t69, -t47 * t99 + t65 * t79 + t72, t107, -t47 * t96 + (-pkin(10) * t100 - t65 * t97) * t99, pkin(10) * t107 + t47 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, -t97, 0, 0, 0, 0, 0, 0, 0, 0, t83, -t124, t61, t135 + t151, 0, 0, 0, 0, 0, 0, t83, t61, t124, -t100 * t65 + t135; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t88, 0.2e1 * t143, 0, t90, 0, 0, 0.2e1 * t163, -0.2e1 * t164, t64, pkin(4) ^ 2 + t134, t88, 0, -0.2e1 * t143, 0, 0, t90, t99 * t168, t64, t96 * t168, t65 ^ 2 + t134; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t29, 0, -t27, t41, -t113, -t4, 0, 0, 0, t29, 0, t41, t27, 0, -t113 + 0.2e1 * t159, -t29 * pkin(5) - t27 * qJ(6), 0.2e1 * t128 + t4, -t2 * pkin(5) + t1 * qJ(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t82, 0, -t79, -t100, t38, -t39, 0, 0, 0, t82, 0, -t100, t79, 0, t55 + (-0.2e1 * pkin(5) - t147) * t100, t110 * t97, -0.2e1 * t122 + t39, -t33 * pkin(5) + t32 * qJ(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t79, -t82, 0, 0, 0, 0, 0, 0, 0, 0, -t79, 0, t82, t109 * t97; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, 0, t99, 0, -t153, -t152, 0, 0, 0, t96, 0, 0, -t99, 0, -t153, t109, t152, t109 * pkin(10); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.2e1 * pkin(5), 0, 0.2e1 * qJ(6), pkin(5) ^ 2 + qJ(6) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t41, t29, 0, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, t82, 0, t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, 0, t153; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t3;
