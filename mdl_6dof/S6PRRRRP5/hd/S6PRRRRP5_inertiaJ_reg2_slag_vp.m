% Calculate inertial parameters regressor of joint inertia matrix for
% S6PRRRRP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d5,theta1]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 00:27
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6PRRRRP5_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRP5_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRRP5_inertiaJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 10:06:30
% EndTime: 2019-05-05 10:06:38
% DurationCPUTime: 2.23s
% Computational Cost: add. (1926->237), mult. (4943->431), div. (0->0), fcn. (5769->12), ass. (0->140)
t100 = cos(qJ(4));
t101 = cos(qJ(3));
t102 = cos(qJ(2));
t93 = cos(pkin(7));
t97 = sin(qJ(3));
t131 = t93 * t97;
t91 = sin(pkin(7));
t133 = t91 * t97;
t92 = sin(pkin(6));
t94 = cos(pkin(6));
t98 = sin(qJ(2));
t39 = t94 * t133 + (t101 * t98 + t102 * t131) * t92;
t120 = t92 * t102;
t55 = -t91 * t120 + t94 * t93;
t96 = sin(qJ(4));
t23 = -t55 * t100 + t39 * t96;
t153 = t23 ^ 2;
t121 = t91 * t101;
t123 = t101 * t93;
t132 = t92 * t98;
t37 = -t120 * t123 - t94 * t121 + t97 * t132;
t152 = t37 ^ 2;
t57 = -t100 * t93 + t96 * t133;
t56 = t57 ^ 2;
t59 = t100 * t133 + t96 * t93;
t95 = sin(qJ(5));
t99 = cos(qJ(5));
t42 = t99 * t121 + t95 * t59;
t151 = -0.2e1 * t42;
t150 = -0.2e1 * t59;
t149 = 0.2e1 * t91;
t148 = -0.2e1 * t96;
t147 = 0.2e1 * t96;
t146 = 0.2e1 * t100;
t145 = pkin(2) * t97;
t144 = pkin(4) * t99;
t143 = pkin(10) * t95;
t142 = t57 * pkin(5);
t88 = t96 ^ 2;
t141 = t88 * pkin(10);
t140 = t95 * pkin(5);
t139 = t96 * pkin(10);
t138 = t23 * t96;
t137 = t23 * t99;
t115 = pkin(9) * t121;
t51 = t115 + (pkin(10) + t145) * t93;
t52 = (-pkin(3) * t101 - pkin(10) * t97 - pkin(2)) * t91;
t29 = t100 * t52 - t96 * t51;
t27 = pkin(4) * t121 - t29;
t136 = t27 * t95;
t135 = t27 * t99;
t35 = t42 * t99;
t44 = -t95 * t121 + t99 * t59;
t36 = t44 * t95;
t134 = t59 * t96;
t53 = t95 * t57;
t130 = t95 * t96;
t129 = t95 * t99;
t128 = t96 * t57;
t54 = t99 * t57;
t82 = t99 * t96;
t127 = -qJ(6) - pkin(11);
t87 = t95 ^ 2;
t89 = t99 ^ 2;
t126 = t87 + t89;
t125 = qJ(6) * t96;
t85 = t91 ^ 2;
t124 = t101 * t85;
t122 = t57 * t100;
t119 = t95 * t100;
t118 = t99 * t100;
t117 = 0.2e1 * t121;
t116 = t96 * t146;
t114 = t42 * t130;
t113 = pkin(10) * t118;
t112 = t96 * t121;
t111 = t100 * t121;
t75 = pkin(9) * t133;
t50 = t75 + (-pkin(2) * t101 - pkin(3)) * t93;
t26 = t57 * pkin(4) - t59 * pkin(11) + t50;
t30 = t100 * t51 + t96 * t52;
t28 = -pkin(11) * t121 + t30;
t11 = t99 * t26 - t95 * t28;
t66 = -t100 * pkin(4) - t96 * pkin(11) - pkin(3);
t62 = t99 * t66;
t110 = -t99 * t125 + t62;
t12 = t95 * t26 + t99 * t28;
t109 = -t11 * t95 + t12 * t99;
t25 = t39 * t100 + t55 * t96;
t13 = -t25 * t95 + t37 * t99;
t14 = t25 * t99 + t37 * t95;
t6 = -t13 * t95 + t14 * t99;
t47 = -pkin(10) * t119 + t62;
t48 = t95 * t66 + t113;
t108 = -t47 * t95 + t48 * t99;
t107 = t25 * t100 + t138;
t106 = t30 * t100 - t29 * t96;
t105 = -t44 * qJ(6) + t11;
t104 = pkin(10) ^ 2;
t90 = t100 ^ 2;
t84 = t88 * t104;
t83 = -t99 * pkin(5) - pkin(4);
t81 = t89 * t88;
t80 = t87 * t88;
t78 = t85 * t101 ^ 2;
t77 = 0.2e1 * t129;
t74 = t95 * t82;
t71 = t118 * t148;
t70 = -0.2e1 * t88 * t129;
t69 = t95 * t116;
t68 = t127 * t99;
t67 = t127 * t95;
t65 = (pkin(10) + t140) * t96;
t63 = (-t87 + t89) * t96;
t61 = pkin(2) * t131 + t115;
t60 = pkin(2) * t123 - t75;
t45 = t113 + (t66 - t125) * t95;
t41 = t44 ^ 2;
t40 = t42 ^ 2;
t34 = (-pkin(5) - t143) * t100 + t110;
t33 = t44 * t82;
t32 = 0.2e1 * t44 * t57;
t31 = t57 * t151;
t22 = -t44 * t100 + t57 * t82;
t21 = t42 * t100 - t95 * t128;
t19 = t23 * t95;
t18 = t44 * t151;
t17 = -t95 * t42 + t44 * t99;
t16 = (-t36 - t35) * t96;
t15 = t42 * pkin(5) + t27;
t10 = -t42 * qJ(6) + t12;
t9 = t14 * t100 + t23 * t82;
t8 = -t13 * t100 + t23 * t130;
t7 = t105 + t142;
t5 = -t14 * t57 + t23 * t44;
t4 = t13 * t57 + t23 * t42;
t3 = (-t13 * t99 - t14 * t95) * t96;
t2 = t13 ^ 2 + t14 ^ 2 + t153;
t1 = -t13 * t44 - t14 * t42;
t20 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t94 ^ 2 + (t102 ^ 2 + t98 ^ 2) * t92 ^ 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, t39 ^ 2 + t55 ^ 2 + t152, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25 ^ 2 + t152 + t153, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t120, -t132, 0, 0, 0, 0, 0, 0, 0, 0, -t55 * t121 - t37 * t93, t55 * t133 - t39 * t93 (t101 * t39 + t37 * t97) * t91, -t55 * t91 * pkin(2) - t37 * t60 + t39 * t61, 0, 0, 0, 0, 0, 0, t23 * t121 + t37 * t57, t25 * t121 + t37 * t59, t23 * t59 - t25 * t57, -t23 * t29 + t25 * t30 + t37 * t50, 0, 0, 0, 0, 0, 0, t4, t5, t1, t13 * t11 + t14 * t12 + t23 * t27, 0, 0, 0, 0, 0, 0, t4, t5, t1, t14 * t10 + t13 * t7 + t23 * t15; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t85 * t97 ^ 2, 0.2e1 * t97 * t124, t131 * t149, t78, t93 * t117, t93 ^ 2, 0.2e1 * pkin(2) * t124 + 0.2e1 * t60 * t93, -0.2e1 * t85 * t145 - 0.2e1 * t61 * t93 (t101 * t61 - t60 * t97) * t149, t85 * pkin(2) ^ 2 + t60 ^ 2 + t61 ^ 2, t59 ^ 2, t57 * t150, t121 * t150, t56, t57 * t117, t78, -0.2e1 * t29 * t121 + 0.2e1 * t50 * t57, 0.2e1 * t30 * t121 + 0.2e1 * t50 * t59, -0.2e1 * t29 * t59 - 0.2e1 * t30 * t57, t29 ^ 2 + t30 ^ 2 + t50 ^ 2, t41, t18, t32, t40, t31, t56, 0.2e1 * t11 * t57 + 0.2e1 * t27 * t42, -0.2e1 * t12 * t57 + 0.2e1 * t27 * t44, -0.2e1 * t11 * t44 - 0.2e1 * t12 * t42, t11 ^ 2 + t12 ^ 2 + t27 ^ 2, t41, t18, t32, t40, t31, t56, 0.2e1 * t15 * t42 + 0.2e1 * t7 * t57, -0.2e1 * t10 * t57 + 0.2e1 * t15 * t44, -0.2e1 * t10 * t42 - 0.2e1 * t7 * t44, t10 ^ 2 + t15 ^ 2 + t7 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t37, -t39, 0, 0, 0, 0, 0, 0, 0, 0, -t37 * t100, t37 * t96, t107, -t37 * pkin(3) + t107 * pkin(10), 0, 0, 0, 0, 0, 0, t8, t9, t3, pkin(10) * t138 + t13 * t47 + t14 * t48, 0, 0, 0, 0, 0, 0, t8, t9, t3, t13 * t34 + t14 * t45 + t23 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t133, 0, t121, t93, t60, -t61, 0, 0, t134, t59 * t100 - t128, -t112, -t122, -t111, 0, -pkin(3) * t57 + pkin(10) * t112 - t50 * t100, -pkin(3) * t59 + pkin(10) * t111 + t50 * t96 (-t122 + t134) * pkin(10) + t106, -t50 * pkin(3) + t106 * pkin(10), t33, t16, t22, t114, t21, -t122, -t11 * t100 + t47 * t57 + (pkin(10) * t42 + t136) * t96, t12 * t100 - t48 * t57 + (pkin(10) * t44 + t135) * t96, -t48 * t42 - t47 * t44 + (-t11 * t99 - t12 * t95) * t96, t11 * t47 + t12 * t48 + t27 * t139, t33, t16, t22, t114, t21, -t122, -t7 * t100 + t15 * t130 + t34 * t57 + t65 * t42, t10 * t100 + t15 * t82 + t65 * t44 - t45 * t57, -t34 * t44 - t45 * t42 + (-t10 * t95 - t7 * t99) * t96, t10 * t45 + t15 * t65 + t7 * t34; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t88, t116, 0, t90, 0, 0, pkin(3) * t146, pkin(3) * t148, 0.2e1 * (t88 + t90) * pkin(10), pkin(3) ^ 2 + t90 * t104 + t84, t81, t70, t71, t80, t69, t90, -0.2e1 * t47 * t100 + 0.2e1 * t95 * t141, 0.2e1 * t48 * t100 + 0.2e1 * t99 * t141 (-t47 * t99 - t48 * t95) * t147, t47 ^ 2 + t48 ^ 2 + t84, t81, t70, t71, t80, t69, t90, -0.2e1 * t34 * t100 + 0.2e1 * t130 * t65, 0.2e1 * t45 * t100 + 0.2e1 * t65 * t82 (-t34 * t99 - t45 * t95) * t147, t34 ^ 2 + t45 ^ 2 + t65 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t23, -t25, 0, 0, 0, 0, 0, 0, 0, 0, -t137, t19, t6, -t23 * pkin(4) + pkin(11) * t6, 0, 0, 0, 0, 0, 0, -t137, t19, t6, t13 * t67 - t14 * t68 + t23 * t83; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t59, 0, -t57, -t121, t29, -t30, 0, 0, t36, t17, t53, -t35, t54, 0, -pkin(4) * t42 - pkin(11) * t53 - t135, -pkin(4) * t44 - pkin(11) * t54 + t136 (t36 - t35) * pkin(11) + t109, -t27 * pkin(4) + pkin(11) * t109, t36, t17, t53, -t35, t54, 0, -t15 * t99 + t83 * t42 + t67 * t57, t15 * t95 + t83 * t44 + t68 * t57, t10 * t99 + t68 * t42 - t67 * t44 - t7 * t95, -t10 * t68 + t15 * t83 + t7 * t67; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, 0, t100, 0, -t139, -t100 * pkin(10), 0, 0, t74, t63, -t119, -t74, -t118, 0, -pkin(10) * t82 + (-pkin(4) * t96 + pkin(11) * t100) * t95, pkin(11) * t118 + (t143 - t144) * t96, t108, -pkin(4) * t139 + pkin(11) * t108, t74, t63, -t119, -t74, -t118, 0, -t67 * t100 + t130 * t83 - t65 * t99, -t68 * t100 + t65 * t95 + t82 * t83 (-t67 * t96 + t45) * t99 + (t68 * t96 - t34) * t95, t34 * t67 - t45 * t68 + t65 * t83; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t87, t77, 0, t89, 0, 0, 0.2e1 * t144, -0.2e1 * pkin(4) * t95, 0.2e1 * t126 * pkin(11), t126 * pkin(11) ^ 2 + pkin(4) ^ 2, t87, t77, 0, t89, 0, 0, -0.2e1 * t83 * t99, 0.2e1 * t83 * t95, -0.2e1 * t67 * t95 - 0.2e1 * t68 * t99, t67 ^ 2 + t68 ^ 2 + t83 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t13, -t14, 0, 0, 0, 0, 0, 0, 0, 0, t13, -t14, 0, t13 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, 0, -t42, t57, t11, -t12, 0, 0, 0, 0, t44, 0, -t42, t57, t105 + 0.2e1 * t142, -t10, -t44 * pkin(5), t7 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t82, 0, -t130, -t100, t47, -t48, 0, 0, 0, 0, t82, 0, -t130, -t100 (-0.2e1 * pkin(5) - t143) * t100 + t110, -t45, -pkin(5) * t82, t34 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t95, 0, t99, 0, -t95 * pkin(11), -t99 * pkin(11), 0, 0, 0, 0, t95, 0, t99, 0, t67, t68, -t140, t67 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * pkin(5), 0, 0, pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t23; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t42, t44, 0, t15; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t130, t82, 0, t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t99, t95, 0, t83; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t20;
