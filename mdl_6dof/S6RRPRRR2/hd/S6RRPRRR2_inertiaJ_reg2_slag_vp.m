% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRPRRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,d6,theta3]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 13:20
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPRRR2_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR2_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRR2_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 19:55:44
% EndTime: 2019-05-06 19:55:56
% DurationCPUTime: 2.30s
% Computational Cost: add. (3178->169), mult. (5975->306), div. (0->0), fcn. (7319->10), ass. (0->115)
t94 = sin(qJ(5));
t87 = t94 ^ 2;
t98 = cos(qJ(5));
t89 = t98 ^ 2;
t110 = t87 + t89;
t124 = cos(qJ(4));
t91 = sin(pkin(11));
t132 = t91 * pkin(2);
t92 = cos(pkin(11));
t131 = t92 * pkin(2);
t80 = pkin(3) + t131;
t95 = sin(qJ(4));
t64 = t124 * t132 + t95 * t80;
t62 = pkin(9) + t64;
t112 = t110 * t62;
t96 = sin(qJ(2));
t99 = cos(qJ(2));
t66 = -t91 * t96 + t92 * t99;
t67 = t91 * t99 + t92 * t96;
t48 = t124 * t67 + t95 * t66;
t142 = -0.2e1 * t48;
t116 = -qJ(3) - pkin(7);
t73 = t116 * t96;
t74 = t116 * t99;
t49 = t92 * t73 + t91 * t74;
t104 = -t67 * pkin(8) + t49;
t50 = t91 * t73 - t92 * t74;
t36 = t66 * pkin(8) + t50;
t21 = -t124 * t104 + t95 * t36;
t141 = t21 ^ 2;
t46 = -t124 * t66 + t95 * t67;
t43 = t46 ^ 2;
t140 = 0.2e1 * t46;
t127 = t98 * pkin(5);
t63 = t124 * t80 - t95 * t132;
t61 = -pkin(4) - t63;
t56 = t61 - t127;
t139 = 0.2e1 * t56;
t83 = -t99 * pkin(2) - pkin(1);
t59 = -t66 * pkin(3) + t83;
t138 = 0.2e1 * t59;
t137 = 0.2e1 * t67;
t82 = -pkin(4) - t127;
t136 = 0.2e1 * t82;
t135 = 0.2e1 * t99;
t118 = t98 * t48;
t133 = t46 * pkin(5);
t20 = t46 * pkin(4) - t48 * pkin(9) + t59;
t23 = t95 * t104 + t124 * t36;
t9 = t98 * t20 - t94 * t23;
t7 = -pkin(10) * t118 + t133 + t9;
t119 = t98 * t23;
t8 = t119 + (-pkin(10) * t48 + t20) * t94;
t93 = sin(qJ(6));
t97 = cos(qJ(6));
t3 = t97 * t7 - t93 * t8;
t128 = t97 * t8;
t4 = t93 * t7 + t128;
t70 = t93 * t94 - t97 * t98;
t72 = t93 * t98 + t97 * t94;
t134 = -t3 * t72 - t4 * t70;
t130 = t93 * pkin(5);
t129 = t97 * pkin(5);
t126 = t98 * pkin(9);
t125 = pkin(4) - t61;
t123 = t21 * t98;
t121 = t94 * t48;
t26 = t97 * t118 - t93 * t121;
t122 = t26 * t70;
t34 = t72 * t46;
t41 = t94 * t46;
t120 = t94 * t98;
t117 = t98 * t62;
t52 = (-pkin(10) - t62) * t94;
t86 = t98 * pkin(10);
t53 = t86 + t117;
t30 = t97 * t52 - t93 * t53;
t31 = t93 * t52 + t97 * t53;
t115 = -t30 * t72 - t31 * t70;
t75 = (-pkin(10) - pkin(9)) * t94;
t76 = t86 + t126;
t54 = t97 * t75 - t93 * t76;
t55 = t93 * t75 + t97 * t76;
t114 = -t54 * t72 - t55 * t70;
t113 = t56 + t82;
t111 = t110 * pkin(9);
t88 = t96 ^ 2;
t90 = t99 ^ 2;
t109 = t88 + t90;
t108 = t46 * t142;
t107 = -pkin(4) * t48 - pkin(9) * t46;
t10 = t94 * t20 + t119;
t5 = t10 * t98 - t9 * t94;
t106 = t10 * t94 + t9 * t98;
t105 = -t46 * t62 + t48 * t61;
t78 = 0.2e1 * t120;
t69 = t72 ^ 2;
t68 = t70 ^ 2;
t51 = -0.2e1 * t72 * t70;
t45 = (-t70 * t93 - t72 * t97) * pkin(5);
t44 = t48 ^ 2;
t42 = t98 * t46;
t38 = t94 * t118;
t33 = t70 * t46;
t27 = (-t87 + t89) * t48;
t24 = t72 * t48;
t19 = t72 * t24;
t18 = t26 * t72;
t17 = t24 * t70;
t16 = t21 * t94;
t14 = pkin(5) * t121 + t21;
t13 = t14 * t72;
t12 = t14 * t70;
t11 = -t19 - t122;
t1 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t88, t96 * t135, 0, t90, 0, 0, pkin(1) * t135, -0.2e1 * pkin(1) * t96, 0.2e1 * t109 * pkin(7), t109 * pkin(7) ^ 2 + pkin(1) ^ 2, t67 ^ 2, t66 * t137, 0, t66 ^ 2, 0, 0, -0.2e1 * t83 * t66, t83 * t137, -0.2e1 * t49 * t67 + 0.2e1 * t50 * t66, t49 ^ 2 + t50 ^ 2 + t83 ^ 2, t44, t108, 0, t43, 0, 0, t46 * t138, t48 * t138, 0.2e1 * t21 * t48 - 0.2e1 * t23 * t46, t23 ^ 2 + t59 ^ 2 + t141, t89 * t44, -0.2e1 * t44 * t120, t118 * t140, t87 * t44, t94 * t108, t43, 0.2e1 * t21 * t121 + 0.2e1 * t9 * t46, -0.2e1 * t10 * t46 + 0.2e1 * t21 * t118, t106 * t142, t10 ^ 2 + t9 ^ 2 + t141, t26 ^ 2, -0.2e1 * t26 * t24, t26 * t140, t24 ^ 2, -t24 * t140, t43, 0.2e1 * t14 * t24 + 0.2e1 * t3 * t46, 0.2e1 * t14 * t26 - 0.2e1 * t4 * t46, -0.2e1 * t4 * t24 - 0.2e1 * t3 * t26, t14 ^ 2 + t3 ^ 2 + t4 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, 0, t99, 0, -t96 * pkin(7), -t99 * pkin(7), 0, 0, 0, 0, t67, 0, t66, 0, t49, -t50 (t66 * t91 - t67 * t92) * pkin(2) (t49 * t92 + t50 * t91) * pkin(2), 0, 0, t48, 0, -t46, 0, -t21, -t23, -t64 * t46 - t63 * t48, -t21 * t63 + t23 * t64, t38, t27, t41, -t38, t42, 0, t105 * t94 - t123, t105 * t98 + t16, t5, t21 * t61 + t5 * t62, t18, t11, t34, t17, -t33, 0, t56 * t24 + t30 * t46 + t12, t56 * t26 - t31 * t46 + t13, -t31 * t24 - t30 * t26 + t134, t14 * t56 + t3 * t30 + t4 * t31; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t131, -0.2e1 * t132, 0 (t91 ^ 2 + t92 ^ 2) * pkin(2) ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t63, -0.2e1 * t64, 0, t63 ^ 2 + t64 ^ 2, t87, t78, 0, t89, 0, 0, -0.2e1 * t61 * t98, 0.2e1 * t61 * t94, 0.2e1 * t112, t110 * t62 ^ 2 + t61 ^ 2, t69, t51, 0, t68, 0, 0, t70 * t139, t72 * t139, 0.2e1 * t115, t30 ^ 2 + t31 ^ 2 + t56 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t66, t67, 0, t83, 0, 0, 0, 0, 0, 0, t46, t48, 0, t59, 0, 0, 0, 0, 0, 0, t42, -t41, -t110 * t48, t106, 0, 0, 0, 0, 0, 0, -t33, -t34, -t19 + t122, -t3 * t70 + t4 * t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t30 * t70 + t31 * t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t110, 0, 0, 0, 0, 0, 0, 0, 0, 0, t69 + t68; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t48, 0, -t46, 0, -t21, -t23, 0, 0, t38, t27, t41, -t38, t42, 0, t107 * t94 - t123, t107 * t98 + t16, t5, -t21 * pkin(4) + t5 * pkin(9), t18, t11, t34, t17, -t33, 0, t82 * t24 + t54 * t46 + t12, t82 * t26 - t55 * t46 + t13, -t55 * t24 - t54 * t26 + t134, t14 * t82 + t3 * t54 + t4 * t55; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t63, -t64, 0, 0, t87, t78, 0, t89, 0, 0, t125 * t98, -t125 * t94, t111 + t112, -t61 * pkin(4) + pkin(9) * t112, t69, t51, 0, t68, 0, 0, t113 * t70, t113 * t72, t114 + t115, t30 * t54 + t31 * t55 + t56 * t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t70 * t54 + t72 * t55; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t87, t78, 0, t89, 0, 0, 0.2e1 * pkin(4) * t98, -0.2e1 * pkin(4) * t94, 0.2e1 * t111, t110 * pkin(9) ^ 2 + pkin(4) ^ 2, t69, t51, 0, t68, 0, 0, t70 * t136, t72 * t136, 0.2e1 * t114, t54 ^ 2 + t55 ^ 2 + t82 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t118, 0, -t121, t46, t9, -t10, 0, 0, 0, 0, t26, 0, -t24, t46, t46 * t129 + t3, -t128 + (-t7 - t133) * t93 (-t24 * t93 - t26 * t97) * pkin(5) (t3 * t97 + t4 * t93) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t94, 0, t98, 0, -t94 * t62, -t117, 0, 0, 0, 0, t72, 0, -t70, 0, t30, -t31, t45 (t30 * t97 + t31 * t93) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t98, -t94, 0, 0, 0, 0, 0, 0, 0, 0, -t70, -t72, 0 (-t70 * t97 + t72 * t93) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t94, 0, t98, 0, -t94 * pkin(9), -t126, 0, 0, 0, 0, t72, 0, -t70, 0, t54, -t55, t45 (t54 * t97 + t55 * t93) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t129, -0.2e1 * t130, 0 (t93 ^ 2 + t97 ^ 2) * pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t26, 0, -t24, t46, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t72, 0, -t70, 0, t30, -t31, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t70, -t72, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t72, 0, -t70, 0, t54, -t55, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t129, -t130, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t1;
