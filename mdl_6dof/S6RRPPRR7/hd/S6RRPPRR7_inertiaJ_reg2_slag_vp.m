% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRPPRR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d5,d6]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 09:21
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPPRR7_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR7_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR7_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 11:07:01
% EndTime: 2019-05-06 11:07:10
% DurationCPUTime: 1.98s
% Computational Cost: add. (1345->180), mult. (2806->315), div. (0->0), fcn. (2921->8), ass. (0->118)
t66 = sin(pkin(6));
t74 = cos(qJ(2));
t46 = t66 * t74;
t67 = cos(pkin(6));
t70 = sin(qJ(5));
t73 = cos(qJ(5));
t22 = t70 * t46 - t67 * t73;
t133 = t22 ^ 2;
t24 = t73 * t46 + t67 * t70;
t71 = sin(qJ(2));
t45 = t66 * t71;
t69 = sin(qJ(6));
t72 = cos(qJ(6));
t14 = -t24 * t72 + t69 * t45;
t132 = -0.2e1 * t14;
t131 = -0.2e1 * t24;
t130 = 0.2e1 * t66;
t129 = -0.2e1 * t70;
t75 = (-pkin(2) - pkin(3));
t128 = 2 * t75;
t127 = pkin(1) * t71;
t126 = pkin(5) * t72;
t20 = -t66 * pkin(1) - pkin(2) * t46 - qJ(3) * t45;
t16 = pkin(3) * t46 - t20;
t8 = (pkin(4) * t71 + pkin(9) * t74) * t66 + t16;
t61 = -pkin(9) + t75;
t114 = t67 * t74;
t100 = -pkin(1) * t114 + pkin(8) * t45;
t97 = qJ(4) * t66;
t80 = -t71 * t97 + t100;
t9 = t61 * t67 + t80;
t5 = -t70 * t9 + t73 * t8;
t3 = -pkin(5) * t45 - t5;
t125 = t3 * t69;
t124 = t3 * t72;
t123 = t67 * pkin(2);
t122 = t70 * pkin(5);
t12 = -t24 * t69 - t72 * t45;
t121 = t12 * t72;
t120 = t14 * t69;
t119 = t14 * t73;
t118 = t22 * t73;
t59 = t66 ^ 2;
t117 = t59 * t74;
t63 = t70 ^ 2;
t116 = t63 * t61;
t64 = t72 ^ 2;
t115 = t64 * t70;
t113 = t69 * t22;
t112 = t69 * t72;
t111 = t69 * t73;
t110 = t70 * t12;
t109 = t70 * t22;
t108 = t70 * t24;
t107 = t70 * t61;
t106 = t70 * t73;
t105 = t72 * t22;
t104 = t72 * t70;
t52 = t72 * t73;
t103 = t73 * t12;
t102 = t73 * t24;
t101 = t73 * t61;
t68 = qJ(3) + pkin(4);
t27 = pkin(8) * t46 + t67 * t127;
t62 = t69 ^ 2;
t99 = t62 + t64;
t65 = t73 ^ 2;
t35 = t65 + t63;
t98 = qJ(3) * t74;
t96 = 0.2e1 * t45;
t95 = 0.2e1 * t106;
t94 = t71 * t117;
t93 = t70 * t45;
t92 = t73 * t45;
t91 = t66 * t114;
t90 = t69 * t109;
t89 = t22 * t104;
t88 = t69 * t104;
t87 = t99 * pkin(10);
t86 = t99 * t73;
t6 = t70 * t8 + t73 * t9;
t4 = pkin(10) * t45 + t6;
t54 = t67 * qJ(3);
t79 = -t74 * t97 + t27;
t15 = -t54 - t79;
t10 = t67 * pkin(4) - t15;
t7 = -t22 * pkin(5) + t24 * pkin(10) + t10;
t1 = -t69 * t4 + t72 * t7;
t2 = t72 * t4 + t69 * t7;
t85 = -t1 * t69 + t2 * t72;
t84 = -t5 * t70 + t6 * t73;
t83 = t120 - t121;
t57 = t73 * pkin(5);
t29 = t70 * pkin(10) + t57 + t68;
t17 = -t69 * t101 + t72 * t29;
t18 = t72 * t101 + t69 * t29;
t82 = -t17 * t69 + t18 * t72;
t81 = -t108 + t118;
t77 = qJ(3) ^ 2;
t76 = 0.2e1 * qJ(3);
t60 = t67 ^ 2;
t58 = t61 ^ 2;
t53 = 0.2e1 * t54;
t51 = t64 * t63;
t50 = t69 * t70;
t49 = t62 * t70;
t48 = t62 * t63;
t44 = t59 * t74 ^ 2;
t43 = t59 * t71 ^ 2;
t42 = t63 * t58;
t32 = 0.2e1 * t94;
t31 = 0.2e1 * t91;
t30 = t67 * t96;
t28 = t35 * t61;
t21 = t100 - t123;
t19 = t54 + t27;
t11 = t75 * t67 + t80;
t13 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t43, t32, t30, t44, t31, t60, 0.2e1 * pkin(1) * t117 - 0.2e1 * t100 * t67, -0.2e1 * t59 * t127 - 0.2e1 * t27 * t67 (t100 * t71 + t27 * t74) * t130, t59 * pkin(1) ^ 2 + t100 ^ 2 + t27 ^ 2, t43, t30, -0.2e1 * t94, t60, -0.2e1 * t91, t44, -0.2e1 * t20 * t46 - 0.2e1 * t21 * t67 (t19 * t74 + t21 * t71) * t130, 0.2e1 * t19 * t67 - 0.2e1 * t20 * t45, t19 ^ 2 + t20 ^ 2 + t21 ^ 2, t44, t32, t31, t43, t30, t60, -0.2e1 * t15 * t67 + 0.2e1 * t16 * t45, 0.2e1 * t11 * t67 - 0.2e1 * t16 * t46 (-t11 * t71 + t15 * t74) * t130, t11 ^ 2 + t15 ^ 2 + t16 ^ 2, t24 ^ 2, t22 * t131, t45 * t131, t133, t22 * t96, t43, -0.2e1 * t10 * t22 + 0.2e1 * t5 * t45, -0.2e1 * t10 * t24 - 0.2e1 * t6 * t45, 0.2e1 * t6 * t22 + 0.2e1 * t5 * t24, t10 ^ 2 + t5 ^ 2 + t6 ^ 2, t14 ^ 2, t12 * t132, t22 * t132, t12 ^ 2, 0.2e1 * t12 * t22, t133, -0.2e1 * t1 * t22 + 0.2e1 * t3 * t12, 0.2e1 * t3 * t14 + 0.2e1 * t2 * t22, -0.2e1 * t1 * t14 - 0.2e1 * t2 * t12, t1 ^ 2 + t2 ^ 2 + t3 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45, 0, t46, t67, -t100, -t27, 0, 0, 0, t45, 0, t67, -t46, 0, -t100 + 0.2e1 * t123 (-pkin(2) * t71 + t98) * t66, t53 + t27, -t21 * pkin(2) + t19 * qJ(3), 0, 0, t46, 0, t45, t67, t53 + t79, t67 * t128 + t80 (-t71 * t75 - t98) * t66, -t15 * qJ(3) + t11 * t75, t108, t102 - t109, -t93, -t118, -t92, 0, t10 * t73 - t68 * t22 - t61 * t93, -t10 * t70 - t68 * t24 - t61 * t92, t81 * t61 - t84, t10 * t68 + t84 * t61, -t14 * t104 (t120 + t121) * t70, t89 + t119, -t69 * t110, -t90 - t103, -t118, t1 * t73 - t17 * t22 + (t12 * t61 - t125) * t70, t18 * t22 - t2 * t73 + (t14 * t61 - t124) * t70, -t18 * t12 - t17 * t14 + (t1 * t72 + t2 * t69) * t70, t1 * t17 + t107 * t3 + t2 * t18; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.2e1 * pkin(2), 0, t76, pkin(2) ^ 2 + t77, 0, 0, 0, 0, 0, 1, t76, t128, 0 (t75 ^ 2) + t77, t63, t95, 0, t65, 0, 0, 0.2e1 * t68 * t73, t68 * t129, -0.2e1 * t28, t65 * t58 + t68 ^ 2 + t42, t51, -0.2e1 * t63 * t112, t52 * t129, t48, t69 * t95, t65, -0.2e1 * t69 * t116 + 0.2e1 * t17 * t73, -0.2e1 * t72 * t116 - 0.2e1 * t18 * t73, 0.2e1 * (t17 * t72 + t18 * t69) * t70, t17 ^ 2 + t18 ^ 2 + t42; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t67, t45, 0, t21, 0, 0, 0, 0, 0, 0, 0, t67, -t45, t11, 0, 0, 0, 0, 0, 0, -t93, -t92, t81, t84, 0, 0, 0, 0, 0, 0, t22 * t111 + t110, t70 * t14 + t22 * t52, t83 * t73, t3 * t70 + t73 * t85; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -pkin(2), 0, 0, 0, 0, 0, 0, 0, 1, 0, t75, 0, 0, 0, 0, 0, 0, 0, 0, -t35, t28, 0, 0, 0, 0, 0, 0, -t35 * t69, -t35 * t72, 0, t73 * t82 + t116; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t35, 0, 0, 0, 0, 0, 0, 0, 0, 0, t65 * t99 + t63; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45, -t46, 0, t16, 0, 0, 0, 0, 0, 0, t92, -t93, t102 + t109, t5 * t73 + t6 * t70, 0, 0, 0, 0, 0, 0, t90 - t103, t89 - t119, t83 * t70, -t3 * t73 + t70 * t85; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (t82 - t101) * t70; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (-0.1e1 + t99) * t106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t35, 0, 0, 0, 0, 0, 0, 0, 0, 0, t51 + t48 + t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t24, 0, t22, t45, t5, -t6, 0, 0, t120, -t69 * t12 + t14 * t72, -t113, -t121, -t105, 0, -pkin(5) * t12 + pkin(10) * t113 - t124, -pkin(5) * t14 + pkin(10) * t105 + t125, pkin(10) * t83 + t85, -t3 * pkin(5) + pkin(10) * t85; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t70, 0, -t73, 0, -t107, -t101, 0, 0, -t88, t49 - t115, t111, t88, t52, 0, -t61 * t104 + (-pkin(10) * t73 + t122) * t69, -pkin(10) * t52 + (t61 * t69 + t126) * t70, t82, -pkin(5) * t107 + pkin(10) * t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t70, -t73, 0, 0, 0, 0, 0, 0, 0, 0, -t104, t50, t86, pkin(10) * t86 - t122; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, -t70, 0, 0, 0, 0, 0, 0, 0, 0, t52, -t111, t49 + t115, t70 * t87 + t57; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t62, 0.2e1 * t112, 0, t64, 0, 0, 0.2e1 * t126, -0.2e1 * pkin(5) * t69, 0.2e1 * t87, pkin(10) ^ 2 * t99 + pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t14, 0, -t12, -t22, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t104, 0, t50, t73, t17, -t18, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t111, -t52, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t50, -t104, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t69, 0, t72, 0, -t69 * pkin(10), -t72 * pkin(10), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t13;
