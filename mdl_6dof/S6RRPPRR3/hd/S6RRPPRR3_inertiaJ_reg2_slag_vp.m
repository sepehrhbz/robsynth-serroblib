% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRPPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d5,d6,theta3,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 09:00
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPPRR3_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR3_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPPRR3_inertiaJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 10:03:57
% EndTime: 2019-05-06 10:04:04
% DurationCPUTime: 2.19s
% Computational Cost: add. (3736->183), mult. (8949->369), div. (0->0), fcn. (10376->12), ass. (0->132)
t140 = cos(qJ(5));
t87 = sin(pkin(12));
t106 = t140 * t87;
t90 = cos(pkin(12));
t94 = sin(qJ(5));
t72 = t94 * t90 + t106;
t156 = -0.2e1 * t72;
t88 = sin(pkin(11));
t89 = sin(pkin(6));
t91 = cos(pkin(11));
t95 = sin(qJ(2));
t97 = cos(qJ(2));
t57 = (t88 * t97 + t91 * t95) * t89;
t92 = cos(pkin(6));
t44 = t57 * t87 - t92 * t90;
t46 = t57 * t90 + t92 * t87;
t23 = t140 * t44 + t94 * t46;
t155 = t23 ^ 2;
t144 = t88 * pkin(2);
t78 = qJ(4) + t144;
t141 = pkin(9) + t78;
t64 = t141 * t90;
t35 = t141 * t106 + t94 * t64;
t154 = t35 ^ 2;
t124 = t89 * t97;
t125 = t89 * t95;
t55 = -t91 * t124 + t88 * t125;
t54 = t55 ^ 2;
t120 = t94 * t87;
t70 = -t140 * t90 + t120;
t153 = t70 ^ 2;
t152 = -0.2e1 * t23;
t151 = -0.2e1 * t55;
t150 = 0.2e1 * t55;
t143 = t91 * pkin(2);
t80 = -pkin(3) - t143;
t74 = -t90 * pkin(4) + t80;
t149 = 0.2e1 * t74;
t148 = 0.2e1 * t87;
t147 = 0.2e1 * t92;
t146 = pkin(1) * t95;
t145 = t70 * pkin(5);
t142 = t92 * pkin(2);
t25 = t140 * t46 - t94 * t44;
t93 = sin(qJ(6));
t96 = cos(qJ(6));
t15 = t93 * t25 - t55 * t96;
t139 = t15 * t96;
t17 = t96 * t25 + t55 * t93;
t138 = t17 * t93;
t137 = t17 * t96;
t136 = t23 * t70;
t135 = t25 * t70;
t134 = t35 * t70;
t133 = t44 * t90;
t132 = t46 * t87;
t131 = t46 * t90;
t130 = t70 * t15;
t129 = t72 * t55;
t82 = t89 ^ 2;
t128 = t82 * t97;
t85 = t93 ^ 2;
t127 = t85 * t72;
t126 = t87 * t55;
t50 = t90 * t55;
t123 = t93 * t23;
t60 = t93 * t70;
t122 = t93 * t72;
t121 = t93 * t96;
t22 = t96 * t23;
t119 = t96 * t72;
t118 = pkin(8) + qJ(3);
t76 = t92 * t97 * pkin(1);
t47 = -t118 * t125 + t142 + t76;
t112 = t92 * t146;
t52 = t118 * t124 + t112;
t32 = t88 * t47 + t91 * t52;
t27 = t92 * qJ(4) + t32;
t73 = (-pkin(2) * t97 - pkin(1)) * t89;
t33 = t55 * pkin(3) - t57 * qJ(4) + t73;
t11 = t90 * t27 + t87 * t33;
t117 = -t91 * t47 + t88 * t52;
t81 = t87 ^ 2;
t83 = t90 ^ 2;
t116 = t81 + t83;
t86 = t96 ^ 2;
t115 = t85 + t86;
t114 = t70 * t156;
t113 = t89 * t147;
t111 = t17 * t122;
t110 = t23 * t122;
t109 = t23 * t119;
t108 = t93 * t119;
t107 = t115 * pkin(10);
t10 = -t87 * t27 + t90 * t33;
t28 = -t92 * pkin(3) + t117;
t105 = -pkin(5) * t72 - pkin(10) * t70;
t8 = t55 * pkin(4) - t46 * pkin(9) + t10;
t9 = -t44 * pkin(9) + t11;
t6 = t140 * t9 + t94 * t8;
t4 = t55 * pkin(10) + t6;
t18 = t44 * pkin(4) + t28;
t7 = t23 * pkin(5) - t25 * pkin(10) + t18;
t1 = -t93 * t4 + t96 * t7;
t2 = t96 * t4 + t93 * t7;
t104 = t1 * t96 + t2 * t93;
t103 = -t1 * t93 + t2 * t96;
t102 = -t10 * t87 + t11 * t90;
t34 = -t72 * pkin(10) + t145 + t74;
t37 = -t141 * t120 + t140 * t64;
t19 = t96 * t34 - t93 * t37;
t20 = t93 * t34 + t96 * t37;
t101 = t19 * t96 + t20 * t93;
t100 = -t19 * t93 + t20 * t96;
t5 = t140 * t8 - t94 * t9;
t84 = t92 ^ 2;
t69 = t72 ^ 2;
t66 = pkin(8) * t124 + t112;
t65 = -pkin(8) * t125 + t76;
t63 = t96 * t70;
t62 = t86 * t72;
t61 = t86 * t69;
t59 = t85 * t69;
t41 = t70 * t55;
t39 = t87 * t44;
t38 = -t62 - t127;
t21 = t72 * t23;
t14 = t93 * t15;
t13 = t17 * t70;
t12 = t15 * t119;
t3 = -t55 * pkin(5) - t5;
t16 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t82 * t95 ^ 2, 0.2e1 * t95 * t128, t95 * t113, t82 * t97 ^ 2, t97 * t113, t84, 0.2e1 * pkin(1) * t128 + 0.2e1 * t65 * t92, -0.2e1 * t82 * t146 - 0.2e1 * t66 * t92, 0.2e1 * (-t65 * t95 + t66 * t97) * t89, t82 * pkin(1) ^ 2 + t65 ^ 2 + t66 ^ 2, t57 ^ 2, t57 * t151, t57 * t147, t54, t92 * t151, t84, -0.2e1 * t117 * t92 + 0.2e1 * t73 * t55, -0.2e1 * t32 * t92 + 0.2e1 * t73 * t57, 0.2e1 * t117 * t57 - 0.2e1 * t32 * t55, t117 ^ 2 + t32 ^ 2 + t73 ^ 2, t46 ^ 2, -0.2e1 * t46 * t44, t46 * t150, t44 ^ 2, t44 * t151, t54, 0.2e1 * t10 * t55 + 0.2e1 * t28 * t44, -0.2e1 * t11 * t55 + 0.2e1 * t28 * t46, -0.2e1 * t10 * t46 - 0.2e1 * t11 * t44, t10 ^ 2 + t11 ^ 2 + t28 ^ 2, t25 ^ 2, t25 * t152, t25 * t150, t155, t23 * t151, t54, 0.2e1 * t18 * t23 + 0.2e1 * t5 * t55, 0.2e1 * t18 * t25 - 0.2e1 * t6 * t55, -0.2e1 * t6 * t23 - 0.2e1 * t5 * t25, t18 ^ 2 + t5 ^ 2 + t6 ^ 2, t17 ^ 2, -0.2e1 * t17 * t15, 0.2e1 * t17 * t23, t15 ^ 2, t15 * t152, t155, 0.2e1 * t1 * t23 + 0.2e1 * t3 * t15, 0.2e1 * t3 * t17 - 0.2e1 * t2 * t23, -0.2e1 * t1 * t17 - 0.2e1 * t2 * t15, t1 ^ 2 + t2 ^ 2 + t3 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t125, 0, t124, t92, t65, -t66, 0, 0, 0, 0, t57, 0, -t55, t92, t91 * t142 - t117, -t88 * t142 - t32 (-t55 * t88 - t57 * t91) * pkin(2) (-t117 * t91 + t32 * t88) * pkin(2), t132, -t39 + t131, t126, -t133, t50, 0, -t78 * t126 - t28 * t90 + t80 * t44, t28 * t87 + t80 * t46 - t78 * t50 (t132 - t133) * t78 + t102, t102 * t78 + t28 * t80, t25 * t72, -t21 - t135, t129, t136, -t41, 0, t18 * t70 + t74 * t23 - t35 * t55, t18 * t72 + t74 * t25 - t37 * t55, -t37 * t23 + t35 * t25 - t5 * t72 - t6 * t70, t18 * t74 - t5 * t35 + t6 * t37, t17 * t119, -t12 - t111, t13 + t109, t15 * t122, -t110 - t130, t136, t1 * t70 + t122 * t3 + t35 * t15 + t19 * t23, t119 * t3 + t35 * t17 - t2 * t70 - t20 * t23, -t104 * t72 - t20 * t15 - t19 * t17, t1 * t19 + t2 * t20 + t3 * t35; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t143, -0.2e1 * t144, 0 (t88 ^ 2 + t91 ^ 2) * pkin(2) ^ 2, t81, t90 * t148, 0, t83, 0, 0, -0.2e1 * t80 * t90, t80 * t148, 0.2e1 * t116 * t78, t116 * t78 ^ 2 + t80 ^ 2, t69, t114, 0, t153, 0, 0, t70 * t149, t72 * t149, 0.2e1 * t35 * t72 - 0.2e1 * t37 * t70, t37 ^ 2 + t74 ^ 2 + t154, t61, -0.2e1 * t69 * t121, 0.2e1 * t70 * t119, t59, t93 * t114, t153, 0.2e1 * t122 * t35 + 0.2e1 * t19 * t70, 0.2e1 * t119 * t35 - 0.2e1 * t20 * t70, t101 * t156, t19 ^ 2 + t20 ^ 2 + t154; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t55, t57, 0, t73, 0, 0, 0, 0, 0, 0, t50, -t126, -t39 - t131, t10 * t90 + t11 * t87, 0, 0, 0, 0, 0, 0, -t41, -t129, -t21 + t135, -t5 * t70 + t6 * t72, 0, 0, 0, 0, 0, 0, -t110 + t130, t13 - t109, -t12 + t111, t103 * t72 + t3 * t70; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37 * t72 + t134, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100 * t72 + t134; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t116, 0, 0, 0, 0, 0, 0, 0, 0, 0, t69 + t153, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61 + t59 + t153; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, t46, 0, t28, 0, 0, 0, 0, 0, 0, t23, t25, 0, t18, 0, 0, 0, 0, 0, 0, t22, -t123, -t14 - t137, t104; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t90, t87, 0, t80, 0, 0, 0, 0, 0, 0, t70, t72, 0, t74, 0, 0, 0, 0, 0, 0, t63, -t60, t38, t101; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t115; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25, 0, -t23, t55, t5, -t6, 0, 0, t138, -t14 + t137, t123, -t139, t22, 0, -pkin(5) * t15 - pkin(10) * t123 - t3 * t96, -pkin(5) * t17 - pkin(10) * t22 + t3 * t93 (t138 - t139) * pkin(10) + t103, -t3 * pkin(5) + pkin(10) * t103; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t72, 0, -t70, 0, -t35, -t37, 0, 0, t108, t62 - t127, t60, -t108, t63, 0, t105 * t93 - t35 * t96, t105 * t96 + t35 * t93, t100, -t35 * pkin(5) + pkin(10) * t100; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t70, -t72, 0, 0, 0, 0, 0, 0, 0, 0, -t63, t60, -t38, t107 * t72 - t145; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t85, 0.2e1 * t121, 0, t86, 0, 0, 0.2e1 * pkin(5) * t96, -0.2e1 * pkin(5) * t93, 0.2e1 * t107, pkin(10) ^ 2 * t115 + pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t17, 0, -t15, t23, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t119, 0, -t122, t70, t19, -t20, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t122, -t119, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, -t93, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t93, 0, t96, 0, -t93 * pkin(10), -t96 * pkin(10), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t16;
