% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRPRR14
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,d6]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 20:23
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRPRR14_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR14_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRR14_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 16:43:13
% EndTime: 2019-05-07 16:43:27
% DurationCPUTime: 3.36s
% Computational Cost: add. (3048->258), mult. (6682->459), div. (0->0), fcn. (7494->10), ass. (0->152)
t96 = sin(qJ(3));
t88 = t96 ^ 2;
t100 = cos(qJ(3));
t90 = t100 ^ 2;
t176 = t88 + t90;
t94 = sin(qJ(6));
t95 = sin(qJ(5));
t98 = cos(qJ(6));
t99 = cos(qJ(5));
t59 = t94 * t99 + t98 * t95;
t61 = -t94 * t95 + t98 * t99;
t175 = (t59 * t94 + t61 * t98) * pkin(5);
t172 = t59 ^ 2;
t58 = t61 ^ 2;
t174 = t58 + t172;
t92 = sin(pkin(6));
t97 = sin(qJ(2));
t147 = t92 * t97;
t93 = cos(pkin(6));
t50 = -t93 * t100 + t96 * t147;
t173 = t50 ^ 2;
t52 = t100 * t147 + t93 * t96;
t48 = t52 ^ 2;
t171 = -0.2e1 * t52;
t170 = 0.2e1 * t52;
t77 = t95 * pkin(5) + qJ(4);
t169 = 0.2e1 * t77;
t168 = 0.2e1 * t92;
t167 = -0.2e1 * t96;
t166 = 0.2e1 * t96;
t165 = 0.2e1 * qJ(4);
t164 = 0.2e1 * t100;
t163 = pkin(3) + pkin(10);
t162 = pkin(1) * t97;
t161 = t52 * pkin(5);
t160 = t94 * pkin(5);
t159 = t96 * pkin(5);
t158 = t98 * pkin(5);
t101 = cos(qJ(2));
t138 = t92 * t101;
t31 = t95 * t138 + t50 * t99;
t129 = pkin(8) * t138;
t40 = t129 + (pkin(9) + t162) * t93;
t41 = (-pkin(2) * t101 - pkin(9) * t97 - pkin(1)) * t92;
t22 = t100 * t41 - t96 * t40;
t73 = pkin(3) * t138;
t21 = -t22 + t73;
t12 = t52 * pkin(4) + pkin(10) * t138 + t21;
t156 = pkin(1) * t101;
t72 = pkin(8) * t147;
t39 = t72 + (-pkin(2) - t156) * t93;
t106 = -t52 * qJ(4) + t39;
t13 = t163 * t50 + t106;
t7 = t95 * t12 + t99 * t13;
t5 = t31 * pkin(11) + t7;
t157 = t98 * t5;
t32 = t99 * t138 - t50 * t95;
t18 = t94 * t31 - t98 * t32;
t155 = t18 * t61;
t154 = t31 * t95;
t153 = t52 * t95;
t43 = t52 * t96;
t16 = -t98 * t31 - t94 * t32;
t152 = t59 * t16;
t134 = t99 * t100;
t137 = t95 * t100;
t45 = -t98 * t134 + t94 * t137;
t151 = t59 * t45;
t150 = t59 * t52;
t149 = t59 * t96;
t46 = t59 * t100;
t148 = t61 * t46;
t82 = t96 * pkin(9);
t68 = t96 * pkin(4) + t82;
t146 = t95 * t68;
t145 = t95 * t96;
t122 = -t96 * qJ(4) - pkin(2);
t57 = -t163 * t100 + t122;
t121 = pkin(11) * t100 - t57;
t26 = -t121 * t99 + t146;
t144 = t98 * t26;
t143 = t99 * t32;
t142 = t99 * t95;
t23 = t100 * t40 + t96 * t41;
t141 = t176 * pkin(9) ^ 2;
t84 = t100 * pkin(9);
t69 = t100 * pkin(4) + t84;
t87 = t95 ^ 2;
t89 = t99 ^ 2;
t71 = t87 + t89;
t86 = t92 ^ 2;
t140 = t101 * t86;
t139 = t50 * t100;
t136 = t95 * t163;
t135 = t96 * t100;
t80 = t99 * t163;
t133 = qJ(4) * t100;
t132 = t50 * t171;
t131 = t93 * t168;
t130 = -0.2e1 * t135;
t128 = t52 * t138;
t127 = t50 * t138;
t126 = t96 * t138;
t125 = t95 * t134;
t124 = qJ(4) * t138;
t123 = t100 * t138;
t6 = t99 * t12 - t95 * t13;
t4 = t32 * pkin(11) + t161 + t6;
t1 = t98 * t4 - t94 * t5;
t62 = t99 * t68;
t25 = t121 * t95 + t159 + t62;
t9 = t98 * t25 - t94 * t26;
t120 = pkin(9) * t126;
t119 = pkin(9) * t123;
t2 = t94 * t4 + t157;
t118 = t1 * t61 + t2 * t59;
t117 = t6 * t99 + t7 * t95;
t10 = t94 * t25 + t144;
t116 = t10 * t59 + t9 * t61;
t28 = -t95 * t57 + t62;
t29 = t99 * t57 + t146;
t15 = t28 * t99 + t29 * t95;
t115 = t143 + t154;
t65 = (-pkin(11) - t163) * t95;
t66 = -t99 * pkin(11) - t80;
t34 = -t94 * t65 + t98 * t66;
t35 = t98 * t65 + t94 * t66;
t114 = t34 * t61 + t35 * t59;
t112 = -pkin(3) * t96 + t133;
t20 = t124 - t23;
t111 = -t20 * t100 + t21 * t96;
t110 = t23 * t100 - t22 * t96;
t109 = t52 * t100 - t96 * t50;
t108 = -t163 * t96 + t133;
t107 = (-t139 + t43) * pkin(9);
t14 = -t50 * pkin(4) - t20;
t103 = qJ(4) ^ 2;
t79 = t99 * t96;
t75 = t86 * t101 ^ 2;
t74 = 0.2e1 * t135;
t67 = -t100 * pkin(3) + t122;
t64 = 0.2e1 * t176 * pkin(9);
t63 = t71 * t163;
t56 = t93 * t162 + t129;
t55 = t93 * t156 - t72;
t54 = t61 * t96;
t49 = pkin(5) * t134 + t69;
t44 = t52 * t99;
t30 = t61 * t52;
t19 = t50 * pkin(3) + t106;
t8 = -t31 * pkin(5) + t14;
t3 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t86 * t97 ^ 2, 0.2e1 * t97 * t140, t97 * t131, t75, t101 * t131, t93 ^ 2, 0.2e1 * pkin(1) * t140 + 0.2e1 * t55 * t93, -0.2e1 * t86 * t162 - 0.2e1 * t56 * t93 (t101 * t56 - t55 * t97) * t168, t86 * pkin(1) ^ 2 + t55 ^ 2 + t56 ^ 2, t48, t132, -0.2e1 * t128, t173, 0.2e1 * t127, t75, -0.2e1 * t138 * t22 + 0.2e1 * t39 * t50, 0.2e1 * t138 * t23 + 0.2e1 * t39 * t52, -0.2e1 * t22 * t52 - 0.2e1 * t23 * t50, t22 ^ 2 + t23 ^ 2 + t39 ^ 2, t75, 0.2e1 * t128, -0.2e1 * t127, t48, t132, t173, 0.2e1 * t20 * t50 + 0.2e1 * t21 * t52, -0.2e1 * t138 * t21 - 0.2e1 * t19 * t50, 0.2e1 * t138 * t20 - 0.2e1 * t19 * t52, t19 ^ 2 + t20 ^ 2 + t21 ^ 2, t32 ^ 2, -0.2e1 * t32 * t31, t32 * t171, t31 ^ 2, t31 * t170, t48, -0.2e1 * t14 * t31 + 0.2e1 * t6 * t52, -0.2e1 * t14 * t32 - 0.2e1 * t7 * t52, 0.2e1 * t7 * t31 + 0.2e1 * t6 * t32, t14 ^ 2 + t6 ^ 2 + t7 ^ 2, t18 ^ 2, -0.2e1 * t18 * t16, t18 * t170, t16 ^ 2, t16 * t171, t48, 0.2e1 * t1 * t52 + 0.2e1 * t8 * t16, 0.2e1 * t8 * t18 - 0.2e1 * t2 * t52, -0.2e1 * t1 * t18 - 0.2e1 * t2 * t16, t1 ^ 2 + t2 ^ 2 + t8 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t147, 0, t138, t93, t55, -t56, 0, 0, t43, t109, -t126, -t139, -t123, 0, -pkin(2) * t50 - t39 * t100 + t120, -pkin(2) * t52 + t39 * t96 + t119, t107 + t110, -t39 * pkin(2) + pkin(9) * t110, 0, t126, t123, t43, t109, -t139, t107 + t111, t19 * t100 - t67 * t50 - t120, -t19 * t96 - t67 * t52 - t119, pkin(9) * t111 + t19 * t67, t32 * t137 (t143 - t154) * t100, -t137 * t52 - t32 * t96, -t31 * t134, -t134 * t52 + t31 * t96, t43, t134 * t14 + t28 * t52 - t69 * t31 + t6 * t96, -t137 * t14 - t29 * t52 - t69 * t32 - t7 * t96, t28 * t32 + t29 * t31 + (t6 * t95 - t7 * t99) * t100, t14 * t69 + t6 * t28 + t7 * t29, -t18 * t46, t46 * t16 + t18 * t45, t18 * t96 - t46 * t52, -t16 * t45, -t16 * t96 + t45 * t52, t43, t1 * t96 + t49 * t16 - t8 * t45 + t9 * t52, -t10 * t52 + t49 * t18 - t2 * t96 - t8 * t46, t1 * t46 - t10 * t16 - t9 * t18 + t2 * t45, t1 * t9 + t2 * t10 + t8 * t49; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t88, t74, 0, t90, 0, 0, pkin(2) * t164, pkin(2) * t167, t64, pkin(2) ^ 2 + t141, 0, 0, 0, t88, t74, t90, t64, t67 * t164, t67 * t167, t67 ^ 2 + t141, t87 * t90, 0.2e1 * t90 * t142, t95 * t130, t89 * t90, t99 * t130, t88, 0.2e1 * t134 * t69 + 0.2e1 * t28 * t96, -0.2e1 * t137 * t69 - 0.2e1 * t29 * t96 (t28 * t95 - t29 * t99) * t164, t28 ^ 2 + t29 ^ 2 + t69 ^ 2, t46 ^ 2, -0.2e1 * t46 * t45, -t46 * t166, t45 ^ 2, t45 * t166, t88, -0.2e1 * t49 * t45 + 0.2e1 * t9 * t96, -0.2e1 * t10 * t96 - 0.2e1 * t49 * t46, 0.2e1 * t10 * t45 + 0.2e1 * t9 * t46, t10 ^ 2 + t49 ^ 2 + t9 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t52, 0, -t50, -t138, t22, -t23, 0, 0, -t138, -t52, t50, 0, 0, 0, -t52 * pkin(3) - qJ(4) * t50, -t22 + 0.2e1 * t73, -0.2e1 * t124 + t23, -t21 * pkin(3) - t20 * qJ(4), -t143, t99 * t31 + t32 * t95, t44, -t154, -t153, 0, -qJ(4) * t31 + t14 * t95 - t52 * t80, -qJ(4) * t32 + t136 * t52 + t14 * t99, -t115 * t163 - t117, t14 * qJ(4) - t117 * t163, t155, -t61 * t16 - t18 * t59, t30, t152, -t150, 0, t77 * t16 + t34 * t52 + t8 * t59, t77 * t18 - t35 * t52 + t8 * t61, -t35 * t16 - t34 * t18 - t118, t1 * t34 + t2 * t35 + t8 * t77; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, 0, t100, 0, -t82, -t84, 0, 0, 0, -t96, -t100, 0, 0, 0, t112, t82, t84, t112 * pkin(9), -t125 (t87 - t89) * t100, t79, t125, -t145, 0, t108 * t99 + t69 * t95, -t108 * t95 + t69 * t99, -t15, t69 * qJ(4) - t15 * t163, -t148, t61 * t45 + t46 * t59, t54, -t151, -t149, 0, t34 * t96 - t77 * t45 + t49 * t59, -t35 * t96 - t77 * t46 + t49 * t61, t34 * t46 + t35 * t45 - t116, t10 * t35 + t9 * t34 + t49 * t77; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -0.2e1 * pkin(3), t165, pkin(3) ^ 2 + t103, t89, -0.2e1 * t142, 0, t87, 0, 0, t95 * t165, t99 * t165, 0.2e1 * t63, t163 ^ 2 * t71 + t103, t58, -0.2e1 * t61 * t59, 0, t172, 0, 0, t59 * t169, t61 * t169, -0.2e1 * t114, t34 ^ 2 + t35 ^ 2 + t77 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t52, -t138, 0, t21, 0, 0, 0, 0, 0, 0, t44, -t153, t115, t117, 0, 0, 0, 0, 0, 0, t30, -t150, -t152 - t155, t118; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, 0, 0, t82, 0, 0, 0, 0, 0, 0, t79, -t145, 0, t15, 0, 0, 0, 0, 0, 0, t54, -t149, t148 + t151, t116; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(3), 0, 0, 0, 0, 0, 0, 0, 0, -t71, -t63, 0, 0, 0, 0, 0, 0, 0, 0, -t174, t114; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71, 0, 0, 0, 0, 0, 0, 0, 0, 0, t174; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t32, 0, t31, t52, t6, -t7, 0, 0, 0, 0, t18, 0, -t16, t52, t52 * t158 + t1, -t157 + (-t4 - t161) * t94 (-t16 * t94 - t18 * t98) * pkin(5) (t1 * t98 + t2 * t94) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t137, 0, -t134, t96, t28, -t29, 0, 0, 0, 0, -t46, 0, t45, t96, t96 * t158 + t9, -t144 + (-t25 - t159) * t94 (t45 * t94 + t46 * t98) * pkin(5) (t10 * t94 + t9 * t98) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t99, 0, -t95, 0, -t80, t136, 0, 0, 0, 0, t61, 0, -t59, 0, t34, -t35, -t175 (t34 * t98 + t35 * t94) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t99, -t95, 0, 0, 0, 0, 0, 0, 0, 0, t61, -t59, 0, t175; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t158, -0.2e1 * t160, 0 (t94 ^ 2 + t98 ^ 2) * pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18, 0, -t16, t52, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t46, 0, t45, t96, t9, -t10, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61, 0, -t59, 0, t34, -t35, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61, -t59, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t158, -t160, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t3;
