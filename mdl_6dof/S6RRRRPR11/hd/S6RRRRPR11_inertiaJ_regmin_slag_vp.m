% Calculate minimal parameter regressor of joint inertia matrix for
% S6RRRRPR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% MM_reg [((6+1)*6/2)x33]
%   minimal parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 23:28
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRRPR11_inertiaJ_regmin_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR11_inertiaJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR11_inertiaJ_regmin_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 23:37:09
% EndTime: 2019-05-07 23:37:16
% DurationCPUTime: 1.47s
% Computational Cost: add. (2675->197), mult. (6200->386), div. (0->0), fcn. (7234->12), ass. (0->121)
t131 = cos(qJ(6));
t100 = sin(qJ(3));
t102 = cos(qJ(4));
t94 = sin(pkin(12));
t96 = cos(pkin(12));
t99 = sin(qJ(4));
t72 = t94 * t102 + t96 * t99;
t61 = t72 * t100;
t113 = t102 * t100;
t116 = t99 * t100;
t62 = t96 * t113 - t94 * t116;
t98 = sin(qJ(6));
t38 = t131 * t62 - t98 * t61;
t141 = -0.2e1 * t38;
t71 = t96 * t102 - t94 * t99;
t87 = -t102 * pkin(4) - pkin(3);
t57 = -t71 * pkin(5) + t87;
t140 = 0.2e1 * t57;
t103 = cos(qJ(3));
t101 = sin(qJ(2));
t95 = sin(pkin(6));
t118 = t95 * t101;
t97 = cos(pkin(6));
t67 = t100 * t118 - t97 * t103;
t139 = -0.2e1 * t67;
t138 = 0.2e1 * t67;
t68 = t97 * t100 + t103 * t118;
t137 = -0.2e1 * t68;
t136 = -0.2e1 * t100;
t135 = 0.2e1 * t103;
t134 = pkin(3) * t99;
t133 = pkin(4) * t94;
t132 = pkin(9) * t99;
t130 = pkin(1) * t101;
t104 = cos(qJ(2));
t129 = pkin(1) * t104;
t128 = pkin(3) * t102;
t127 = pkin(9) * t102;
t117 = t95 * t104;
t110 = pkin(8) * t117;
t59 = t110 + (pkin(9) + t130) * t97;
t60 = (-pkin(2) * t104 - pkin(9) * t101 - pkin(1)) * t95;
t35 = -t100 * t59 + t103 * t60;
t33 = pkin(3) * t117 - t35;
t126 = t33 * t99;
t49 = t68 * t102 - t99 * t117;
t125 = t49 * t99;
t124 = t99 * t67;
t123 = -qJ(5) - pkin(10);
t82 = pkin(8) * t118;
t58 = t82 + (-pkin(2) - t129) * t97;
t32 = t67 * pkin(3) - t68 * pkin(10) + t58;
t36 = t100 * t60 + t103 * t59;
t34 = -pkin(10) * t117 + t36;
t18 = t102 * t32 - t99 * t34;
t12 = t67 * pkin(4) - t49 * qJ(5) + t18;
t19 = t102 * t34 + t99 * t32;
t48 = t102 * t117 + t68 * t99;
t15 = -t48 * qJ(5) + t19;
t7 = t94 * t12 + t96 * t15;
t78 = -t103 * pkin(3) - t100 * pkin(10) - pkin(2);
t73 = t102 * t78;
t45 = -qJ(5) * t113 + t73 + (-pkin(4) - t132) * t103;
t112 = t102 * t103;
t108 = pkin(9) * t112;
t50 = t108 + (-qJ(5) * t100 + t78) * t99;
t28 = t94 * t45 + t96 * t50;
t79 = t123 * t99;
t80 = t123 * t102;
t52 = t94 * t79 - t96 * t80;
t88 = t100 * pkin(9);
t77 = pkin(4) * t116 + t88;
t122 = t102 * t67;
t89 = t95 ^ 2;
t121 = t104 * t89;
t120 = t33 * t102;
t119 = t67 * t103;
t115 = t99 * t102;
t114 = t99 * t103;
t111 = 0.2e1 * t117;
t109 = t100 * t135;
t107 = t100 * t117;
t106 = t103 * t117;
t30 = -t94 * t48 + t96 * t49;
t6 = t96 * t12 - t94 * t15;
t4 = t67 * pkin(5) - t30 * pkin(11) + t6;
t29 = -t96 * t48 - t94 * t49;
t5 = t29 * pkin(11) + t7;
t1 = t131 * t4 - t98 * t5;
t27 = t96 * t45 - t94 * t50;
t21 = -t103 * pkin(5) - t62 * pkin(11) + t27;
t24 = -t61 * pkin(11) + t28;
t8 = t131 * t21 - t98 * t24;
t51 = t96 * t79 + t94 * t80;
t2 = t131 * t5 + t98 * t4;
t9 = t131 * t24 + t98 * t21;
t25 = t48 * pkin(4) + t33;
t93 = t103 ^ 2;
t92 = t102 ^ 2;
t91 = t100 ^ 2;
t90 = t99 ^ 2;
t86 = t96 * pkin(4) + pkin(5);
t70 = t97 * t130 + t110;
t69 = t97 * t129 - t82;
t66 = t67 ^ 2;
t64 = t131 * t133 + t98 * t86;
t63 = t131 * t86 - t98 * t133;
t56 = t99 * t78 + t108;
t55 = -pkin(9) * t114 + t73;
t46 = t61 * pkin(5) + t77;
t44 = t131 * t72 + t98 * t71;
t43 = -t131 * t71 + t98 * t72;
t40 = t71 * pkin(11) + t52;
t39 = -t72 * pkin(11) + t51;
t37 = t131 * t61 + t98 * t62;
t23 = t131 * t40 + t98 * t39;
t22 = t131 * t39 - t98 * t40;
t17 = t131 * t30 + t98 * t29;
t16 = -t131 * t29 + t98 * t30;
t13 = -t29 * pkin(5) + t25;
t3 = [1, 0, 0, t89 * t101 ^ 2, 0.2e1 * t101 * t121, 0.2e1 * t97 * t118, t97 * t111, t97 ^ 2, 0.2e1 * pkin(1) * t121 + 0.2e1 * t69 * t97, -0.2e1 * t89 * t130 - 0.2e1 * t70 * t97, t68 ^ 2, t67 * t137, t117 * t137, t67 * t111, t89 * t104 ^ 2, -0.2e1 * t35 * t117 + 0.2e1 * t58 * t67, 0.2e1 * t36 * t117 + 0.2e1 * t58 * t68, t49 ^ 2, -0.2e1 * t49 * t48, t49 * t138, t48 * t139, t66, 0.2e1 * t18 * t67 + 0.2e1 * t33 * t48, -0.2e1 * t19 * t67 + 0.2e1 * t33 * t49, 0.2e1 * t7 * t29 - 0.2e1 * t6 * t30, t25 ^ 2 + t6 ^ 2 + t7 ^ 2, t17 ^ 2, -0.2e1 * t17 * t16, t17 * t138, t16 * t139, t66, 0.2e1 * t1 * t67 + 0.2e1 * t13 * t16, 0.2e1 * t13 * t17 - 0.2e1 * t2 * t67; 0, 0, 0, 0, 0, t118, t117, t97, t69, -t70, t68 * t100, -t100 * t67 + t68 * t103, -t107, -t106, 0, -pkin(2) * t67 + pkin(9) * t107 - t58 * t103, -pkin(2) * t68 + pkin(9) * t106 + t58 * t100, t49 * t113 (-t102 * t48 - t125) * t100, -t49 * t103 + t67 * t113, t48 * t103 - t67 * t116, -t119, -t18 * t103 + t55 * t67 + (pkin(9) * t48 + t126) * t100, t19 * t103 - t56 * t67 + (pkin(9) * t49 + t120) * t100, -t27 * t30 + t28 * t29 - t6 * t62 - t7 * t61, t25 * t77 + t6 * t27 + t7 * t28, t17 * t38, -t38 * t16 - t17 * t37, -t17 * t103 + t38 * t67, t16 * t103 - t37 * t67, -t119, -t1 * t103 + t13 * t37 + t46 * t16 + t8 * t67, t2 * t103 + t13 * t38 + t46 * t17 - t9 * t67; 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t91, t109, 0, 0, 0, pkin(2) * t135, pkin(2) * t136, t92 * t91, -0.2e1 * t91 * t115, t112 * t136, t99 * t109, t93, -0.2e1 * t55 * t103 + 0.2e1 * t91 * t132, 0.2e1 * t56 * t103 + 0.2e1 * t91 * t127, -0.2e1 * t27 * t62 - 0.2e1 * t28 * t61, t27 ^ 2 + t28 ^ 2 + t77 ^ 2, t38 ^ 2, t37 * t141, t103 * t141, t37 * t135, t93, -0.2e1 * t8 * t103 + 0.2e1 * t46 * t37, 0.2e1 * t9 * t103 + 0.2e1 * t46 * t38; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t68, -t67, -t117, t35, -t36, t125, t49 * t102 - t99 * t48, t124, t122, 0, -pkin(3) * t48 - pkin(10) * t124 - t120, -pkin(3) * t49 - pkin(10) * t122 + t126, t52 * t29 - t51 * t30 - t6 * t72 + t7 * t71, t25 * t87 + t6 * t51 + t7 * t52, t17 * t44, -t44 * t16 - t17 * t43, t44 * t67, -t43 * t67, 0, t13 * t43 + t57 * t16 + t22 * t67, t13 * t44 + t57 * t17 - t23 * t67; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, t103, 0, -t88, -t103 * pkin(9), t99 * t113 (-t90 + t92) * t100, -t114, -t112, 0, pkin(10) * t114 + (-t127 - t134) * t100, pkin(10) * t112 + (-t128 + t132) * t100, -t27 * t72 + t28 * t71 - t51 * t62 - t52 * t61, t27 * t51 + t28 * t52 + t77 * t87, t38 * t44, -t44 * t37 - t38 * t43, -t44 * t103, t43 * t103, 0, -t22 * t103 + t57 * t37 + t46 * t43, t23 * t103 + t57 * t38 + t46 * t44; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t90, 0.2e1 * t115, 0, 0, 0, 0.2e1 * t128, -0.2e1 * t134, -0.2e1 * t51 * t72 + 0.2e1 * t52 * t71, t51 ^ 2 + t52 ^ 2 + t87 ^ 2, t44 ^ 2, -0.2e1 * t44 * t43, 0, 0, 0, t43 * t140, t44 * t140; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t49, -t48, t67, t18, -t19 (t29 * t94 - t30 * t96) * pkin(4) (t6 * t96 + t7 * t94) * pkin(4), 0, 0, t17, -t16, t67, t63 * t67 + t1, -t64 * t67 - t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t113, -t116, -t103, t55, -t56 (-t61 * t94 - t62 * t96) * pkin(4) (t27 * t96 + t28 * t94) * pkin(4), 0, 0, t38, -t37, -t103, -t63 * t103 + t8, t64 * t103 - t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t99, t102, 0, -t99 * pkin(10), -t102 * pkin(10) (t71 * t94 - t72 * t96) * pkin(4) (t51 * t96 + t52 * t94) * pkin(4), 0, 0, t44, -t43, 0, t22, -t23; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0 (t94 ^ 2 + t96 ^ 2) * pkin(4) ^ 2, 0, 0, 0, 0, 1, 0.2e1 * t63, -0.2e1 * t64; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25, 0, 0, 0, 0, 0, t16, t17; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t77, 0, 0, 0, 0, 0, t37, t38; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t87, 0, 0, 0, 0, 0, t43, t44; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t17, -t16, t67, t1, -t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38, -t37, -t103, t8, -t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, -t43, 0, t22, -t23; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t63, -t64; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0;];
MM_reg  = t3;
