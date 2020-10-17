% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRPPRR5
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
% Datum: 2019-03-09 09:12
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPPRR5_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR5_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR5_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 10:42:34
% EndTime: 2019-05-06 10:42:40
% DurationCPUTime: 1.72s
% Computational Cost: add. (1257->171), mult. (2659->303), div. (0->0), fcn. (2772->8), ass. (0->115)
t67 = sin(pkin(6));
t72 = sin(qJ(2));
t43 = t67 * t72;
t68 = cos(pkin(6));
t71 = sin(qJ(5));
t74 = cos(qJ(5));
t23 = t71 * t43 + t68 * t74;
t131 = t23 ^ 2;
t130 = -0.2e1 * t23;
t129 = 0.2e1 * t67;
t128 = -0.2e1 * t71;
t127 = 0.2e1 * t74;
t76 = pkin(2) + pkin(3);
t73 = cos(qJ(6));
t126 = pkin(5) * t73;
t75 = cos(qJ(2));
t44 = t67 * t75;
t53 = t68 * qJ(3);
t114 = t68 * t72;
t27 = pkin(1) * t114 + pkin(8) * t44;
t98 = qJ(4) * t67;
t81 = -t75 * t98 + t27;
t16 = t53 + t81;
t11 = -t68 * pkin(9) + t16;
t21 = -t67 * pkin(1) - pkin(2) * t44 - qJ(3) * t43;
t17 = pkin(3) * t44 - t21;
t8 = (pkin(4) * t75 - pkin(9) * t72) * t67 + t17;
t5 = -t71 * t11 + t74 * t8;
t3 = -pkin(5) * t44 - t5;
t70 = sin(qJ(6));
t125 = t3 * t70;
t124 = t3 * t73;
t25 = t74 * t43 - t68 * t71;
t13 = t25 * t70 - t73 * t44;
t123 = t13 * t73;
t15 = t25 * t73 + t70 * t44;
t122 = t15 * t70;
t121 = t15 * t73;
t120 = t15 * t74;
t119 = t23 * t74;
t118 = t25 * t71;
t117 = t25 * t74;
t59 = t67 ^ 2;
t116 = t59 * t75;
t65 = t73 ^ 2;
t115 = t65 * t71;
t113 = t68 * t75;
t69 = qJ(3) - pkin(9);
t112 = t69 * t70;
t111 = t70 * t13;
t110 = t70 * t23;
t109 = t70 * t71;
t108 = t70 * t73;
t107 = t71 * t23;
t106 = t71 * t69;
t105 = t73 * t23;
t104 = t73 * t71;
t51 = t73 * t74;
t103 = t74 * t13;
t102 = t74 * t69;
t63 = t70 ^ 2;
t101 = t63 + t65;
t64 = t71 ^ 2;
t66 = t74 ^ 2;
t100 = t64 + t66;
t99 = qJ(3) * t75;
t62 = pkin(4) + t76;
t97 = t71 * t127;
t96 = t72 * t116;
t95 = t67 * t114;
t94 = t67 * t113;
t93 = t71 * t44;
t92 = t74 * t44;
t91 = t70 * t107;
t90 = t70 * t104;
t89 = t23 * t104;
t88 = t101 * pkin(10);
t26 = pkin(1) * t113 - pkin(8) * t43;
t6 = t74 * t11 + t71 * t8;
t4 = pkin(10) * t44 + t6;
t57 = t68 * pkin(2);
t22 = -t26 - t57;
t12 = -t68 * pkin(3) - t72 * t98 + t22;
t9 = -t68 * pkin(4) + t12;
t7 = t23 * pkin(5) - t25 * pkin(10) - t9;
t1 = -t70 * t4 + t73 * t7;
t2 = t73 * t4 + t70 * t7;
t87 = t1 * t73 + t2 * t70;
t86 = -t1 * t70 + t2 * t73;
t85 = -t5 * t71 + t6 * t74;
t84 = t122 - t123;
t58 = t74 * pkin(5);
t29 = t71 * pkin(10) + t58 + t62;
t18 = -t70 * t102 + t73 * t29;
t19 = t73 * t102 + t70 * t29;
t83 = t18 * t73 + t19 * t70;
t82 = -t18 * t70 + t19 * t73;
t79 = qJ(3) ^ 2;
t78 = 0.2e1 * qJ(3);
t61 = t69 ^ 2;
t60 = t68 ^ 2;
t52 = 0.2e1 * t53;
t50 = t65 * t64;
t49 = t70 * t74;
t48 = t63 * t71;
t47 = t63 * t64;
t46 = t64 * t61;
t42 = t59 * t75 ^ 2;
t41 = t59 * t72 ^ 2;
t32 = -0.2e1 * t96;
t31 = 0.2e1 * t94;
t30 = 0.2e1 * t95;
t28 = -t48 - t115;
t20 = t53 + t27;
t10 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t41, 0.2e1 * t96, t30, t42, t31, t60, 0.2e1 * pkin(1) * t116 + 0.2e1 * t26 * t68, -0.2e1 * t59 * pkin(1) * t72 - 0.2e1 * t27 * t68 (-t26 * t72 + t27 * t75) * t129, t59 * pkin(1) ^ 2 + t26 ^ 2 + t27 ^ 2, t41, t30, t32, t60, -0.2e1 * t94, t42, -0.2e1 * t21 * t44 - 0.2e1 * t22 * t68 (t20 * t75 + t22 * t72) * t129, 0.2e1 * t20 * t68 - 0.2e1 * t21 * t43, t20 ^ 2 + t21 ^ 2 + t22 ^ 2, t41, t32, -0.2e1 * t95, t42, t31, t60, -0.2e1 * t12 * t68 + 0.2e1 * t17 * t44, 0.2e1 * t16 * t68 + 0.2e1 * t17 * t43 (-t12 * t72 - t16 * t75) * t129, t12 ^ 2 + t16 ^ 2 + t17 ^ 2, t25 ^ 2, t25 * t130, 0.2e1 * t25 * t44, t131, t44 * t130, t42, -0.2e1 * t9 * t23 + 0.2e1 * t5 * t44, -0.2e1 * t9 * t25 - 0.2e1 * t6 * t44, -0.2e1 * t6 * t23 - 0.2e1 * t5 * t25, t5 ^ 2 + t6 ^ 2 + t9 ^ 2, t15 ^ 2, -0.2e1 * t15 * t13, 0.2e1 * t15 * t23, t13 ^ 2, t13 * t130, t131, 0.2e1 * t1 * t23 + 0.2e1 * t3 * t13, 0.2e1 * t3 * t15 - 0.2e1 * t2 * t23, -0.2e1 * t1 * t15 - 0.2e1 * t2 * t13, t1 ^ 2 + t2 ^ 2 + t3 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t43, 0, t44, t68, t26, -t27, 0, 0, 0, t43, 0, t68, -t44, 0, t26 + 0.2e1 * t57 (-pkin(2) * t72 + t99) * t67, t52 + t27, -t22 * pkin(2) + t20 * qJ(3), 0, 0, -t43, 0, t44, t68, t76 * t68 - t12, t52 + t81 (t72 * t76 - t99) * t67, t16 * qJ(3) - t12 * t76, -t118, t107 - t117, -t93, t119, -t92, 0, t62 * t23 - t69 * t93 - t9 * t74, t62 * t25 - t69 * t92 + t9 * t71 (t118 - t119) * t69 - t85, -t9 * t62 + t85 * t69, -t15 * t104 (t122 + t123) * t71, -t89 + t120, -t13 * t109, t91 - t103, t119, t1 * t74 + t18 * t23 + (t13 * t69 - t125) * t71, -t19 * t23 - t2 * t74 + (t15 * t69 - t124) * t71, -t19 * t13 - t18 * t15 + t71 * t87, t1 * t18 + t106 * t3 + t2 * t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.2e1 * pkin(2), 0, t78, pkin(2) ^ 2 + t79, 0, 0, 0, 0, 0, 1, 0.2e1 * t76, t78, 0, t76 ^ 2 + t79, t64, t97, 0, t66, 0, 0, t62 * t127, t62 * t128, -0.2e1 * t100 * t69, t66 * t61 + t62 ^ 2 + t46, t50, -0.2e1 * t64 * t108, t51 * t128, t47, t70 * t97, t66, -0.2e1 * t64 * t112 + 0.2e1 * t18 * t74, -0.2e1 * t64 * t69 * t73 - 0.2e1 * t19 * t74, 0.2e1 * t83 * t71, t18 ^ 2 + t19 ^ 2 + t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t68, t43, 0, t22, 0, 0, 0, 0, 0, 0, -t68, 0, -t43, t12, 0, 0, 0, 0, 0, 0, -t23, -t25, 0, t9, 0, 0, 0, 0, 0, 0, -t105, t110, t111 + t121, -t87; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -pkin(2), 0, 0, 0, 0, 0, 0, -1, 0, 0, -t76, 0, 0, 0, 0, 0, 0, -t74, t71, 0, -t62, 0, 0, 0, 0, 0, 0, -t51, t49, t28, -t83; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t101; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, t43, 0, t17, 0, 0, 0, 0, 0, 0, t92, -t93, -t107 - t117, t5 * t74 + t6 * t71, 0, 0, 0, 0, 0, 0, -t91 - t103, -t89 - t120, t84 * t71, -t3 * t74 + t71 * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (t82 - t102) * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50 + t47 + t66; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25, 0, -t23, t44, t5, -t6, 0, 0, t122, -t111 + t121, t110, -t123, t105, 0, -pkin(5) * t13 - pkin(10) * t110 - t124, -pkin(5) * t15 - pkin(10) * t105 + t125, pkin(10) * t84 + t86, -t3 * pkin(5) + pkin(10) * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t71, 0, -t74, 0, -t106, -t102, 0, 0, -t90, t48 - t115, t49, t90, t51, 0, -t69 * t104 + (pkin(5) * t71 - pkin(10) * t74) * t70, -pkin(10) * t51 + (t112 + t126) * t71, t82, -pkin(5) * t106 + pkin(10) * t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, -t71, 0, 0, 0, 0, 0, 0, 0, 0, t51, -t49, -t28, t71 * t88 + t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t63, 0.2e1 * t108, 0, t65, 0, 0, 0.2e1 * t126, -0.2e1 * pkin(5) * t70, 0.2e1 * t88, pkin(10) ^ 2 * t101 + pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t15, 0, -t13, t23, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t104, 0, t109, t74, t18, -t19, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t73, t70, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t109, -t104, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t70, 0, t73, 0, -t70 * pkin(10), -t73 * pkin(10), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t10;
