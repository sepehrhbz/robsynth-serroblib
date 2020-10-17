% Calculate inertial parameters regressor of joint inertia matrix for
% S6PRRRRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d5,d6,theta1]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 00:46
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6PRRRRR2_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRR2_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRRR2_inertiaJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 10:44:32
% EndTime: 2019-05-05 10:44:40
% DurationCPUTime: 2.33s
% Computational Cost: add. (1841->193), mult. (3881->345), div. (0->0), fcn. (4685->12), ass. (0->123)
t98 = sin(qJ(5));
t91 = t98 ^ 2;
t103 = cos(qJ(5));
t93 = t103 ^ 2;
t127 = t91 + t93;
t99 = sin(qJ(4));
t139 = t99 * pkin(3);
t83 = pkin(10) + t139;
t129 = t127 * t83;
t104 = cos(qJ(4));
t100 = sin(qJ(3));
t105 = cos(qJ(3));
t101 = sin(qJ(2));
t95 = sin(pkin(6));
t119 = t95 * t101;
t96 = cos(pkin(6));
t55 = -t100 * t119 + t105 * t96;
t56 = t100 * t96 + t105 * t119;
t29 = -t104 * t55 + t56 * t99;
t28 = t29 ^ 2;
t143 = -pkin(9) - pkin(8);
t114 = t143 * t100;
t75 = t143 * t105;
t48 = -t104 * t114 - t75 * t99;
t149 = t48 ^ 2;
t67 = t100 * t99 - t104 * t105;
t62 = t67 ^ 2;
t148 = 0.2e1 * t67;
t135 = t104 * pkin(3);
t85 = -pkin(5) * t103 - pkin(4);
t72 = t85 - t135;
t147 = 0.2e1 * t72;
t146 = 0.2e1 * t85;
t86 = -pkin(3) * t105 - pkin(2);
t145 = 0.2e1 * t86;
t144 = 0.2e1 * t105;
t102 = cos(qJ(6));
t70 = t100 * t104 + t105 * t99;
t122 = t103 * t70;
t41 = pkin(4) * t67 - pkin(10) * t70 + t86;
t51 = -t104 * t75 + t114 * t99;
t14 = t103 * t41 - t51 * t98;
t141 = pkin(5) * t67;
t12 = -pkin(11) * t122 + t14 + t141;
t123 = t103 * t51;
t13 = t123 + (-pkin(11) * t70 + t41) * t98;
t97 = sin(qJ(6));
t4 = t102 * t12 - t13 * t97;
t125 = t102 * t13;
t5 = t12 * t97 + t125;
t116 = t102 * t103;
t65 = t97 * t98 - t116;
t69 = t102 * t98 + t103 * t97;
t142 = -t4 * t69 - t5 * t65;
t140 = t97 * pkin(5);
t84 = -pkin(4) - t135;
t138 = pkin(4) - t84;
t137 = t102 * pkin(5);
t136 = t103 * pkin(10);
t134 = t29 * t48;
t133 = t98 * t70;
t59 = (-pkin(11) - t83) * t98;
t121 = t103 * t83;
t89 = t103 * pkin(11);
t60 = t89 + t121;
t38 = t102 * t59 - t60 * t97;
t39 = t102 * t60 + t59 * t97;
t132 = -t38 * t69 - t39 * t65;
t73 = (-pkin(11) - pkin(10)) * t98;
t74 = t89 + t136;
t47 = t102 * t73 - t74 * t97;
t50 = t102 * t74 + t73 * t97;
t131 = -t47 * t69 - t50 * t65;
t130 = t72 + t85;
t128 = t127 * pkin(10);
t92 = t100 ^ 2;
t94 = t105 ^ 2;
t126 = t92 + t94;
t124 = t103 * t48;
t120 = t29 * t103;
t106 = cos(qJ(2));
t118 = t95 * t106;
t117 = t98 * t103;
t115 = -0.2e1 * t70 * t67;
t113 = -pkin(4) * t70 - pkin(10) * t67;
t112 = -t67 * t83 + t70 * t84;
t15 = t41 * t98 + t123;
t6 = t103 * t15 - t14 * t98;
t31 = t104 * t56 + t55 * t99;
t20 = -t103 * t118 - t31 * t98;
t21 = t103 * t31 - t118 * t98;
t9 = t103 * t21 - t20 * t98;
t111 = -t100 * t55 + t105 * t56;
t90 = t95 ^ 2;
t80 = t90 * t106 ^ 2;
t78 = 0.2e1 * t117;
t64 = t70 ^ 2;
t63 = t69 ^ 2;
t61 = t65 ^ 2;
t58 = t103 * t67;
t57 = t98 * t67;
t54 = t70 * t117;
t46 = t69 * t67;
t45 = t65 * t67;
t44 = -0.2e1 * t69 * t65;
t43 = t48 * t98;
t42 = (-t91 + t93) * t70;
t40 = (-t102 * t69 - t65 * t97) * pkin(5);
t36 = t116 * t70 - t133 * t97;
t34 = t69 * t70;
t27 = pkin(5) * t133 + t48;
t26 = t29 * t98;
t23 = t36 * t69;
t22 = t34 * t65;
t19 = t29 * t69;
t18 = t29 * t65;
t17 = t27 * t69;
t16 = t27 * t65;
t10 = -t34 * t69 - t36 * t65;
t8 = t102 * t21 + t20 * t97;
t7 = t102 * t20 - t21 * t97;
t1 = -t65 * t8 - t69 * t7;
t2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t101 ^ 2 * t90 + t96 ^ 2 + t80, 0, 0, 0, 0, 0, 0, 0, 0, 0, t55 ^ 2 + t56 ^ 2 + t80, 0, 0, 0, 0, 0, 0, 0, 0, 0, t31 ^ 2 + t28 + t80, 0, 0, 0, 0, 0, 0, 0, 0, 0, t20 ^ 2 + t21 ^ 2 + t28, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7 ^ 2 + t8 ^ 2 + t28; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t118, -t119, 0, 0, 0, 0, 0, 0, 0, 0, t105 * t118, -t100 * t118, t111, pkin(2) * t118 + pkin(8) * t111, 0, 0, 0, 0, 0, 0, -t67 * t118, -t70 * t118, t29 * t70 - t31 * t67, -t118 * t86 + t31 * t51 + t134, 0, 0, 0, 0, 0, 0, t133 * t29 + t20 * t67, t120 * t70 - t21 * t67 (-t103 * t20 - t21 * t98) * t70, t14 * t20 + t15 * t21 + t134, 0, 0, 0, 0, 0, 0, t29 * t34 + t67 * t7, t29 * t36 - t67 * t8, -t34 * t8 - t36 * t7, t27 * t29 + t4 * t7 + t5 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t92, t100 * t144, 0, t94, 0, 0, pkin(2) * t144, -0.2e1 * pkin(2) * t100, 0.2e1 * t126 * pkin(8), pkin(8) ^ 2 * t126 + pkin(2) ^ 2, t64, t115, 0, t62, 0, 0, t67 * t145, t70 * t145, 0.2e1 * t48 * t70 - 0.2e1 * t51 * t67, t51 ^ 2 + t86 ^ 2 + t149, t93 * t64, -0.2e1 * t64 * t117, t122 * t148, t91 * t64, t98 * t115, t62, 0.2e1 * t133 * t48 + 0.2e1 * t14 * t67, 0.2e1 * t122 * t48 - 0.2e1 * t15 * t67, 0.2e1 * (-t103 * t14 - t15 * t98) * t70, t14 ^ 2 + t15 ^ 2 + t149, t36 ^ 2, -0.2e1 * t36 * t34, t36 * t148, t34 ^ 2, -t34 * t148, t62, 0.2e1 * t27 * t34 + 0.2e1 * t4 * t67, 0.2e1 * t27 * t36 - 0.2e1 * t5 * t67, -0.2e1 * t34 * t5 - 0.2e1 * t36 * t4, t27 ^ 2 + t4 ^ 2 + t5 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t55, -t56, 0, 0, 0, 0, 0, 0, 0, 0, -t29, -t31, 0 (-t104 * t29 + t31 * t99) * pkin(3), 0, 0, 0, 0, 0, 0, -t120, t26, t9, t29 * t84 + t83 * t9, 0, 0, 0, 0, 0, 0, t18, t19, t1, t29 * t72 + t38 * t7 + t39 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, 0, t105, 0, -t100 * pkin(8), -t105 * pkin(8), 0, 0, 0, 0, t70, 0, -t67, 0, -t48, -t51 (-t104 * t70 - t67 * t99) * pkin(3) (-t104 * t48 + t51 * t99) * pkin(3), t54, t42, t57, -t54, t58, 0, t112 * t98 - t124, t103 * t112 + t43, t6, t48 * t84 + t6 * t83, t23, t10, t46, t22, -t45, 0, t34 * t72 + t38 * t67 + t16, t36 * t72 - t39 * t67 + t17, -t34 * t39 - t36 * t38 + t142, t27 * t72 + t38 * t4 + t39 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t135, -0.2e1 * t139, 0 (t104 ^ 2 + t99 ^ 2) * pkin(3) ^ 2, t91, t78, 0, t93, 0, 0, -0.2e1 * t84 * t103, 0.2e1 * t84 * t98, 0.2e1 * t129, t127 * t83 ^ 2 + t84 ^ 2, t63, t44, 0, t61, 0, 0, t65 * t147, t69 * t147, 0.2e1 * t132, t38 ^ 2 + t39 ^ 2 + t72 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t29, -t31, 0, 0, 0, 0, 0, 0, 0, 0, -t120, t26, t9, -pkin(4) * t29 + pkin(10) * t9, 0, 0, 0, 0, 0, 0, t18, t19, t1, t29 * t85 + t47 * t7 + t50 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t70, 0, -t67, 0, -t48, -t51, 0, 0, t54, t42, t57, -t54, t58, 0, t113 * t98 - t124, t103 * t113 + t43, t6, -pkin(4) * t48 + pkin(10) * t6, t23, t10, t46, t22, -t45, 0, t34 * t85 + t47 * t67 + t16, t36 * t85 - t50 * t67 + t17, -t34 * t50 - t36 * t47 + t142, t27 * t85 + t4 * t47 + t5 * t50; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t135, -t139, 0, 0, t91, t78, 0, t93, 0, 0, t138 * t103, -t138 * t98, t128 + t129, -pkin(4) * t84 + pkin(10) * t129, t63, t44, 0, t61, 0, 0, t130 * t65, t130 * t69, t131 + t132, t38 * t47 + t39 * t50 + t72 * t85; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t91, t78, 0, t93, 0, 0, 0.2e1 * pkin(4) * t103, -0.2e1 * pkin(4) * t98, 0.2e1 * t128, pkin(10) ^ 2 * t127 + pkin(4) ^ 2, t63, t44, 0, t61, 0, 0, t65 * t146, t69 * t146, 0.2e1 * t131, t47 ^ 2 + t50 ^ 2 + t85 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t20, -t21, 0, 0, 0, 0, 0, 0, 0, 0, t7, -t8, 0 (t102 * t7 + t8 * t97) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t122, 0, -t133, t67, t14, -t15, 0, 0, 0, 0, t36, 0, -t34, t67, t137 * t67 + t4, -t125 + (-t12 - t141) * t97 (-t102 * t36 - t34 * t97) * pkin(5) (t102 * t4 + t5 * t97) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t98, 0, t103, 0, -t98 * t83, -t121, 0, 0, 0, 0, t69, 0, -t65, 0, t38, -t39, t40 (t102 * t38 + t39 * t97) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t98, 0, t103, 0, -t98 * pkin(10), -t136, 0, 0, 0, 0, t69, 0, -t65, 0, t47, -t50, t40 (t102 * t47 + t50 * t97) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t137, -0.2e1 * t140, 0 (t102 ^ 2 + t97 ^ 2) * pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7, -t8, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t36, 0, -t34, t67, t4, -t5, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t69, 0, -t65, 0, t38, -t39, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t69, 0, -t65, 0, t47, -t50, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t137, -t140, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t2;
