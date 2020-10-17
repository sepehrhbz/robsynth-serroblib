% Calculate minimal parameter regressor of joint inertia matrix for
% S6RRPRRR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6,theta3]';
% 
% Output:
% MM_reg [((6+1)*6/2)x35]
%   minimal parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 14:28
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPRRR10_inertiaJ_regmin_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR10_inertiaJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRRR10_inertiaJ_regmin_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 23:46:00
% EndTime: 2019-05-06 23:46:05
% DurationCPUTime: 1.33s
% Computational Cost: add. (2229->182), mult. (5206->346), div. (0->0), fcn. (6290->12), ass. (0->117)
t118 = cos(qJ(4));
t84 = sin(pkin(6));
t90 = sin(qJ(2));
t112 = t84 * t90;
t83 = sin(pkin(12));
t85 = cos(pkin(12));
t86 = cos(pkin(6));
t56 = t85 * t112 + t83 * t86;
t89 = sin(qJ(4));
t69 = t83 * t112;
t97 = t85 * t86 - t69;
t37 = -t118 * t97 + t56 * t89;
t133 = -0.2e1 * t37;
t132 = 0.2e1 * t37;
t38 = t118 * t56 + t89 * t97;
t131 = -0.2e1 * t38;
t63 = -t118 * t85 + t83 * t89;
t130 = -0.2e1 * t63;
t129 = 0.2e1 * t63;
t75 = -pkin(3) * t85 - pkin(2);
t128 = 0.2e1 * t75;
t92 = cos(qJ(5));
t77 = -pkin(5) * t92 - pkin(4);
t127 = 0.2e1 * t77;
t126 = pkin(10) + pkin(11);
t125 = pkin(1) * t90;
t93 = cos(qJ(2));
t124 = pkin(1) * t93;
t123 = pkin(5) * t37;
t122 = pkin(5) * t63;
t111 = t84 * t93;
t88 = sin(qJ(5));
t30 = t92 * t111 + t38 * t88;
t99 = pkin(8) * t111;
t52 = t99 + (qJ(3) + t125) * t86;
t53 = (-pkin(2) * t93 - qJ(3) * t90 - pkin(1)) * t84;
t32 = -t52 * t83 + t85 * t53;
t22 = -pkin(3) * t111 - pkin(9) * t56 + t32;
t33 = t85 * t52 + t83 * t53;
t26 = t97 * pkin(9) + t33;
t14 = t118 * t26 + t89 * t22;
t12 = -pkin(10) * t111 + t14;
t72 = pkin(8) * t112;
t42 = t69 * pkin(3) + t72 + (t75 - t124) * t86;
t16 = t37 * pkin(4) - t38 * pkin(10) + t42;
t7 = t12 * t92 + t16 * t88;
t5 = -pkin(11) * t30 + t7;
t91 = cos(qJ(6));
t121 = t5 * t91;
t87 = sin(qJ(6));
t120 = t87 * pkin(5);
t119 = t91 * pkin(5);
t31 = -t88 * t111 + t38 * t92;
t117 = t31 * t88;
t103 = pkin(9) + qJ(3);
t67 = t103 * t83;
t68 = t103 * t85;
t45 = t118 * t68 - t89 * t67;
t116 = t45 * t92;
t66 = t87 * t92 + t88 * t91;
t115 = t66 * t37;
t114 = t66 * t63;
t79 = t84 ^ 2;
t113 = t79 * t93;
t110 = t86 * t90;
t109 = t88 * t37;
t108 = t88 * t63;
t64 = t118 * t83 + t89 * t85;
t107 = t88 * t64;
t106 = t88 * t92;
t43 = pkin(4) * t63 - pkin(10) * t64 + t75;
t21 = t116 + (-pkin(11) * t64 + t43) * t88;
t105 = t91 * t21;
t35 = t92 * t37;
t104 = t92 * t64;
t102 = t83 ^ 2 + t85 ^ 2;
t101 = t64 * t130;
t100 = 0.2e1 * t111;
t98 = qJ(3) * t111;
t6 = -t12 * t88 + t92 * t16;
t4 = -pkin(11) * t31 + t123 + t6;
t1 = t91 * t4 - t5 * t87;
t23 = t92 * t43 - t45 * t88;
t20 = -pkin(11) * t104 + t122 + t23;
t9 = t91 * t20 - t21 * t87;
t44 = t118 * t67 + t68 * t89;
t96 = -pkin(4) * t64 - pkin(10) * t63;
t13 = t118 * t22 - t89 * t26;
t95 = -t32 * t83 + t33 * t85;
t65 = t87 * t88 - t91 * t92;
t11 = pkin(4) * t111 - t13;
t82 = t92 ^ 2;
t81 = t88 ^ 2;
t71 = t126 * t92;
t70 = t126 * t88;
t61 = t64 ^ 2;
t60 = t63 ^ 2;
t59 = pkin(1) * t110 + t99;
t58 = t86 * t124 - t72;
t57 = t92 * t63;
t55 = t72 + (-pkin(2) - t124) * t86;
t48 = -t70 * t87 + t71 * t91;
t47 = -t70 * t91 - t71 * t87;
t46 = t65 * t63;
t40 = t65 * t64;
t39 = t66 * t64;
t36 = t37 ^ 2;
t34 = pkin(5) * t107 + t44;
t29 = t65 * t37;
t28 = t37 * t63;
t24 = t43 * t88 + t116;
t18 = -t30 * t87 + t31 * t91;
t17 = t91 * t30 + t31 * t87;
t10 = t20 * t87 + t105;
t8 = t30 * pkin(5) + t11;
t2 = t4 * t87 + t121;
t3 = [1, 0, 0, t79 * t90 ^ 2, 0.2e1 * t90 * t113, 0.2e1 * t84 * t110, t86 * t100, t86 ^ 2, 0.2e1 * pkin(1) * t113 + 0.2e1 * t58 * t86, -0.2e1 * t79 * t125 - 0.2e1 * t59 * t86, -0.2e1 * t32 * t111 - 0.2e1 * t55 * t97, 0.2e1 * t33 * t111 + 0.2e1 * t55 * t56, -0.2e1 * t32 * t56 + 0.2e1 * t33 * t97, t32 ^ 2 + t33 ^ 2 + t55 ^ 2, t38 ^ 2, t37 * t131, t111 * t131, t37 * t100, t79 * t93 ^ 2, -0.2e1 * t13 * t111 + 0.2e1 * t37 * t42, 0.2e1 * t14 * t111 + 0.2e1 * t38 * t42, t31 ^ 2, -0.2e1 * t31 * t30, t31 * t132, t30 * t133, t36, 0.2e1 * t11 * t30 + 0.2e1 * t37 * t6, 0.2e1 * t11 * t31 - 0.2e1 * t37 * t7, t18 ^ 2, -0.2e1 * t18 * t17, t18 * t132, t17 * t133, t36, 0.2e1 * t1 * t37 + 0.2e1 * t17 * t8, 0.2e1 * t18 * t8 - 0.2e1 * t2 * t37; 0, 0, 0, 0, 0, t112, t111, t86, t58, -t59, pkin(2) * t97 - t55 * t85 + t83 * t98, -pkin(2) * t56 + t55 * t83 + t85 * t98 (t83 * t56 + t85 * t97) * qJ(3) + t95, -pkin(2) * t55 + t95 * qJ(3), t38 * t64, -t37 * t64 - t38 * t63, -t64 * t111, t63 * t111, 0, t44 * t111 + t37 * t75 + t42 * t63, t45 * t111 + t38 * t75 + t42 * t64, t31 * t104 (-t30 * t92 - t117) * t64, t37 * t104 + t31 * t63, -t37 * t107 - t30 * t63, t28, t11 * t107 + t23 * t37 + t30 * t44 + t6 * t63, t11 * t104 - t24 * t37 + t31 * t44 - t63 * t7, -t18 * t40, t17 * t40 - t18 * t39, t18 * t63 - t37 * t40, -t17 * t63 - t37 * t39, t28, t1 * t63 + t17 * t34 + t37 * t9 + t39 * t8, -t10 * t37 + t18 * t34 - t2 * t63 - t40 * t8; 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.2e1 * pkin(2) * t85, -0.2e1 * pkin(2) * t83, 0.2e1 * t102 * qJ(3), t102 * qJ(3) ^ 2 + pkin(2) ^ 2, t61, t101, 0, 0, 0, t63 * t128, t64 * t128, t82 * t61, -0.2e1 * t61 * t106, t104 * t129, t88 * t101, t60, 0.2e1 * t44 * t107 + 0.2e1 * t23 * t63, 0.2e1 * t44 * t104 - 0.2e1 * t24 * t63, t40 ^ 2, 0.2e1 * t40 * t39, -t40 * t129, t39 * t130, t60, 0.2e1 * t34 * t39 + 0.2e1 * t63 * t9, -0.2e1 * t10 * t63 - 0.2e1 * t34 * t40; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t97, t56, 0, t55, 0, 0, 0, 0, 0, t37, t38, 0, 0, 0, 0, 0, t35, -t109, 0, 0, 0, 0, 0, -t29, -t115; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t85, t83, 0, -pkin(2), 0, 0, 0, 0, 0, t63, t64, 0, 0, 0, 0, 0, t57, -t108, 0, 0, 0, 0, 0, -t46, -t114; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38, -t37, -t111, t13, -t14, t117, -t30 * t88 + t31 * t92, t109, t35, 0, -pkin(4) * t30 - pkin(10) * t109 - t11 * t92, -pkin(4) * t31 - pkin(10) * t35 + t11 * t88, t18 * t66, -t17 * t66 - t18 * t65, t115, -t29, 0, t17 * t77 + t37 * t47 + t65 * t8, t18 * t77 - t37 * t48 + t66 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t64, -t63, 0, -t44, -t45, t88 * t104 (-t81 + t82) * t64, t108, t57, 0, -t44 * t92 + t96 * t88, t44 * t88 + t96 * t92, -t40 * t66, -t39 * t66 + t40 * t65, t114, -t46, 0, t34 * t65 + t39 * t77 + t47 * t63, t34 * t66 - t40 * t77 - t48 * t63; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t81, 0.2e1 * t106, 0, 0, 0, 0.2e1 * pkin(4) * t92, -0.2e1 * pkin(4) * t88, t66 ^ 2, -0.2e1 * t66 * t65, 0, 0, 0, t65 * t127, t66 * t127; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t31, -t30, t37, t6, -t7, 0, 0, t18, -t17, t37, t37 * t119 + t1, -t121 + (-t4 - t123) * t87; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t104, -t107, t63, t23, -t24, 0, 0, -t40, -t39, t63, t63 * t119 + t9, -t105 + (-t20 - t122) * t87; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t92, -t88, 0, 0, 0, 0, 0, -t65, -t66; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t88, t92, 0, -t88 * pkin(10), -t92 * pkin(10), 0, 0, t66, -t65, 0, t47, -t48; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t119, -0.2e1 * t120; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18, -t17, t37, t1, -t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t40, -t39, t63, t9, -t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t65, -t66; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, -t65, 0, t47, -t48; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t119, -t120; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0;];
MM_reg  = t3;
