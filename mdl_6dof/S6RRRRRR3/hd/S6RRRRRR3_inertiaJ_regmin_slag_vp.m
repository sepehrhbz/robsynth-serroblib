% Calculate minimal parameter regressor of joint inertia matrix for
% S6RRRRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5,d6]';
% 
% Output:
% MM_reg [((6+1)*6/2)x38]
%   minimal parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 03:45
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRRRR3_inertiaJ_regmin_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR3_inertiaJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRR3_inertiaJ_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 08:57:14
% EndTime: 2019-05-08 08:57:21
% DurationCPUTime: 1.45s
% Computational Cost: add. (1662->147), mult. (3305->235), div. (0->0), fcn. (4101->10), ass. (0->128)
t102 = cos(qJ(5));
t103 = cos(qJ(4));
t97 = sin(qJ(5));
t98 = sin(qJ(4));
t104 = t102 * t103 - t97 * t98;
t133 = t104 * pkin(5);
t122 = t103 * pkin(4);
t124 = cos(qJ(3));
t107 = t124 * pkin(2);
t88 = -t107 - pkin(3);
t77 = t88 - t122;
t55 = t77 - t133;
t140 = 0.2e1 * t55;
t89 = -pkin(3) - t122;
t56 = t89 - t133;
t139 = 0.2e1 * t56;
t100 = sin(qJ(2));
t125 = cos(qJ(2));
t99 = sin(qJ(3));
t72 = t99 * t100 - t124 * t125;
t138 = -0.2e1 * t72;
t137 = 0.2e1 * t72;
t136 = 0.2e1 * t77;
t135 = 0.2e1 * t89;
t90 = -t125 * pkin(2) - pkin(1);
t134 = 0.2e1 * t90;
t132 = t72 * pkin(4);
t131 = t72 * pkin(5);
t73 = t102 * t98 + t97 * t103;
t130 = t73 * pkin(11);
t96 = sin(qJ(6));
t129 = t96 * pkin(5);
t128 = t97 * pkin(4);
t127 = t99 * pkin(2);
t126 = pkin(3) - t88;
t101 = cos(qJ(6));
t91 = t101 * pkin(5);
t74 = t124 * t100 + t99 * t125;
t37 = t73 * t74;
t79 = (-pkin(7) - pkin(8)) * t100;
t108 = t125 * pkin(7);
t81 = t125 * pkin(8) + t108;
t54 = t124 * t81 + t99 * t79;
t116 = t103 * t54;
t42 = t72 * pkin(3) - t74 * pkin(9) + t90;
t19 = t116 + (-pkin(10) * t74 + t42) * t98;
t117 = t102 * t19;
t115 = t103 * t74;
t23 = t103 * t42 - t98 * t54;
t16 = -pkin(10) * t115 + t132 + t23;
t8 = t97 * t16 + t117;
t6 = -t37 * pkin(11) + t8;
t123 = t101 * t6;
t92 = t102 * pkin(4);
t121 = t103 * pkin(9);
t120 = t98 * t74;
t119 = t55 + t56;
t118 = t77 + t89;
t86 = pkin(9) + t127;
t114 = t103 * t86;
t52 = -t124 * t79 + t99 * t81;
t113 = t52 * t103;
t112 = t98 * t103;
t111 = 0.2e1 * t125;
t110 = t74 * t138;
t109 = t101 * t128;
t38 = t104 * t74;
t7 = t102 * t16 - t97 * t19;
t4 = -t38 * pkin(11) + t131 + t7;
t1 = t101 * t4 - t96 * t6;
t66 = (-pkin(10) - t86) * t98;
t93 = t103 * pkin(10);
t67 = t93 + t114;
t40 = t102 * t66 - t97 * t67;
t78 = (-pkin(9) - pkin(10)) * t98;
t80 = t93 + t121;
t51 = t102 * t78 - t97 * t80;
t87 = t92 + pkin(5);
t60 = t101 * t87 - t96 * t128;
t33 = pkin(4) * t120 + t52;
t106 = -pkin(3) * t74 - pkin(9) * t72;
t2 = t96 * t4 + t123;
t105 = -t72 * t86 + t74 * t88;
t41 = t102 * t67 + t97 * t66;
t53 = t102 * t80 + t97 * t78;
t95 = t103 ^ 2;
t94 = t98 ^ 2;
t83 = 0.2e1 * t112;
t70 = t74 ^ 2;
t69 = t73 ^ 2;
t68 = t72 ^ 2;
t65 = t104 * pkin(11);
t64 = t103 * t72;
t62 = t98 * t72;
t61 = t96 * t87 + t109;
t57 = t74 * t112;
t50 = t73 * t72;
t49 = t104 * t72;
t48 = 0.2e1 * t73 * t104;
t47 = t52 * t98;
t46 = t101 * t73 + t104 * t96;
t45 = (-t94 + t95) * t74;
t44 = -t101 * t104 + t96 * t73;
t43 = t46 ^ 2;
t36 = t53 + t65;
t35 = t51 - t130;
t32 = t46 * t72;
t31 = t44 * t72;
t30 = t41 + t65;
t29 = t40 - t130;
t28 = t38 * t73;
t27 = t33 * t73;
t26 = t33 * t104;
t25 = -0.2e1 * t46 * t44;
t24 = t98 * t42 + t116;
t22 = t37 * pkin(5) + t33;
t21 = t101 * t38 - t96 * t37;
t20 = t101 * t37 + t96 * t38;
t18 = t101 * t36 + t96 * t35;
t17 = t101 * t35 - t96 * t36;
t14 = t104 * t38 - t73 * t37;
t13 = t101 * t30 + t96 * t29;
t12 = t101 * t29 - t96 * t30;
t11 = t22 * t46;
t10 = t22 * t44;
t9 = t21 * t46;
t5 = -t46 * t20 - t21 * t44;
t3 = [1, 0, 0, t100 ^ 2, t100 * t111, 0, 0, 0, pkin(1) * t111, -0.2e1 * pkin(1) * t100, t70, t110, 0, 0, 0, t72 * t134, t74 * t134, t95 * t70, -0.2e1 * t70 * t112, t115 * t137, t98 * t110, t68, 0.2e1 * t52 * t120 + 0.2e1 * t23 * t72, 0.2e1 * t74 * t113 - 0.2e1 * t24 * t72, t38 ^ 2, -0.2e1 * t38 * t37, t38 * t137, t37 * t138, t68, 0.2e1 * t33 * t37 + 0.2e1 * t7 * t72, 0.2e1 * t33 * t38 - 0.2e1 * t8 * t72, t21 ^ 2, -0.2e1 * t21 * t20, t21 * t137, t20 * t138, t68, 0.2e1 * t1 * t72 + 0.2e1 * t22 * t20, -0.2e1 * t2 * t72 + 0.2e1 * t22 * t21; 0, 0, 0, 0, 0, t100, t125, 0, -t100 * pkin(7), -t108, 0, 0, t74, -t72, 0, -t52, -t54, t57, t45, t62, t64, 0, t105 * t98 - t113, t105 * t103 + t47, t28, t14, t50, t49, 0, t77 * t37 + t40 * t72 - t26, t77 * t38 - t41 * t72 + t27, t9, t5, t32, -t31, 0, t12 * t72 + t55 * t20 + t10, -t13 * t72 + t55 * t21 + t11; 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t107, -0.2e1 * t127, t94, t83, 0, 0, 0, -0.2e1 * t88 * t103, 0.2e1 * t88 * t98, t69, t48, 0, 0, 0, -t104 * t136, t73 * t136, t43, t25, 0, 0, 0, t44 * t140, t46 * t140; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, -t72, 0, -t52, -t54, t57, t45, t62, t64, 0, t106 * t98 - t113, t106 * t103 + t47, t28, t14, t50, t49, 0, t89 * t37 + t51 * t72 - t26, t89 * t38 - t53 * t72 + t27, t9, t5, t32, -t31, 0, t17 * t72 + t56 * t20 + t10, -t18 * t72 + t56 * t21 + t11; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t107, -t127, t94, t83, 0, 0, 0, t126 * t103, -t126 * t98, t69, t48, 0, 0, 0, -t118 * t104, t118 * t73, t43, t25, 0, 0, 0, t119 * t44, t119 * t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t94, t83, 0, 0, 0, 0.2e1 * pkin(3) * t103, -0.2e1 * pkin(3) * t98, t69, t48, 0, 0, 0, -t104 * t135, t73 * t135, t43, t25, 0, 0, 0, t44 * t139, t46 * t139; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t115, -t120, t72, t23, -t24, 0, 0, t38, -t37, t72, t72 * t92 + t7, -t117 + (-t16 - t132) * t97, 0, 0, t21, -t20, t72, t60 * t72 + t1, -t61 * t72 - t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t98, t103, 0, -t98 * t86, -t114, 0, 0, t73, t104, 0, t40, -t41, 0, 0, t46, -t44, 0, t12, -t13; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t98, t103, 0, -t98 * pkin(9), -t121, 0, 0, t73, t104, 0, t51, -t53, 0, 0, t46, -t44, 0, t17, -t18; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t92, -0.2e1 * t128, 0, 0, 0, 0, 1, 0.2e1 * t60, -0.2e1 * t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38, -t37, t72, t7, -t8, 0, 0, t21, -t20, t72, t72 * t91 + t1, -t123 + (-t4 - t131) * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, t104, 0, t40, -t41, 0, 0, t46, -t44, 0, t12, -t13; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, t104, 0, t51, -t53, 0, 0, t46, -t44, 0, t17, -t18; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t92, -t128, 0, 0, 0, 0, 1, t60 + t91, -t109 + (-pkin(5) - t87) * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t91, -0.2e1 * t129; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t21, -t20, t72, t1, -t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, -t44, 0, t12, -t13; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, -t44, 0, t17, -t18; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t60, -t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t91, -t129; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0;];
MM_reg  = t3;
