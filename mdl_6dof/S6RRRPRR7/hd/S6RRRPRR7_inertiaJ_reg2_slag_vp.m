% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRPRR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 18:43
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRPRR7_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR7_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRPRR7_inertiaJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 11:38:00
% EndTime: 2019-05-07 11:38:17
% DurationCPUTime: 3.49s
% Computational Cost: add. (5449->232), mult. (12159->458), div. (0->0), fcn. (14394->12), ass. (0->135)
t101 = sin(qJ(6));
t93 = t101 ^ 2;
t105 = cos(qJ(6));
t95 = t105 ^ 2;
t142 = t93 + t95;
t102 = sin(qJ(5));
t151 = cos(qJ(5));
t97 = sin(pkin(12));
t154 = t97 * pkin(3);
t99 = cos(pkin(12));
t153 = t99 * pkin(3);
t88 = pkin(4) + t153;
t72 = t102 * t88 + t151 * t154;
t70 = pkin(11) + t72;
t144 = t142 * t70;
t103 = sin(qJ(3));
t106 = cos(qJ(3));
t79 = t103 * t97 - t106 * t99;
t81 = t103 * t99 + t106 * t97;
t57 = -t102 * t79 + t151 * t81;
t163 = -0.2e1 * t57;
t100 = cos(pkin(6));
t104 = sin(qJ(2));
t98 = sin(pkin(6));
t131 = t98 * t104;
t74 = -t100 * t106 + t103 * t131;
t76 = t100 * t103 + t106 * t131;
t47 = t74 * t99 + t76 * t97;
t49 = -t74 * t97 + t76 * t99;
t32 = t102 * t49 + t151 * t47;
t34 = -t102 * t47 + t151 * t49;
t107 = cos(qJ(2));
t149 = pkin(1) * t107;
t83 = pkin(8) * t131;
t64 = t83 + (-pkin(2) - t149) * t100;
t53 = t74 * pkin(3) + t64;
t35 = t47 * pkin(4) + t53;
t10 = t32 * pkin(5) - t34 * pkin(11) + t35;
t130 = t98 * t107;
t123 = pkin(3) * t130;
t124 = pkin(8) * t130;
t150 = pkin(1) * t104;
t65 = t124 + (pkin(9) + t150) * t100;
t66 = (-pkin(2) * t107 - pkin(9) * t104 - pkin(1)) * t98;
t42 = -t103 * t65 + t106 * t66;
t39 = -qJ(4) * t76 - t123 + t42;
t43 = t103 * t66 + t106 * t65;
t41 = -qJ(4) * t74 + t43;
t17 = t39 * t99 - t41 * t97;
t13 = -pkin(4) * t130 - pkin(10) * t49 + t17;
t18 = t39 * t97 + t41 * t99;
t16 = -pkin(10) * t47 + t18;
t9 = t102 * t13 + t151 * t16;
t6 = -pkin(11) * t130 + t9;
t3 = t10 * t101 + t105 * t6;
t1 = t3 * t105;
t2 = t10 * t105 - t101 * t6;
t115 = -t2 * t101 + t1;
t145 = -qJ(4) - pkin(9);
t119 = t145 * t103;
t120 = t145 * t106;
t58 = t119 * t99 + t120 * t97;
t111 = -t81 * pkin(10) + t58;
t59 = t119 * t97 - t120 * t99;
t46 = -t79 * pkin(10) + t59;
t27 = t102 * t46 - t111 * t151;
t162 = t27 ^ 2;
t161 = t32 ^ 2;
t55 = t102 * t81 + t151 * t79;
t160 = t55 ^ 2;
t159 = -0.2e1 * t32;
t89 = -pkin(3) * t106 - pkin(2);
t63 = pkin(4) * t79 + t89;
t158 = 0.2e1 * t63;
t157 = 0.2e1 * t89;
t156 = 0.2e1 * t98;
t155 = 0.2e1 * t106;
t71 = -t102 * t154 + t151 * t88;
t69 = -pkin(5) - t71;
t152 = pkin(5) - t69;
t147 = t32 * t55;
t118 = t102 * t16 - t13 * t151;
t5 = pkin(5) * t130 + t118;
t146 = t5 * t105;
t143 = t142 * pkin(11);
t94 = t103 ^ 2;
t96 = t106 ^ 2;
t141 = t94 + t96;
t30 = t101 * t32;
t51 = t101 * t55;
t140 = t101 * t57;
t139 = t101 * t70;
t31 = t105 * t32;
t138 = t105 * t57;
t137 = t105 * t70;
t92 = t98 ^ 2;
t136 = t107 * t92;
t22 = t101 * t34 + t105 * t130;
t20 = t22 * t105;
t24 = -t101 * t130 + t105 * t34;
t21 = t24 * t101;
t135 = t24 * t105;
t25 = t27 * t101;
t134 = t27 * t105;
t133 = t74 * t106;
t132 = t76 * t103;
t129 = t100 * t104;
t128 = t101 * t105;
t127 = t55 * t163;
t126 = -0.2e1 * t130;
t125 = 0.2e1 * t130;
t122 = t103 * t130;
t121 = t106 * t130;
t117 = -pkin(5) * t57 - pkin(11) * t55;
t116 = t101 * t3 + t105 * t2;
t114 = -t55 * t70 + t57 * t69;
t26 = pkin(5) * t55 - pkin(11) * t57 + t63;
t29 = t102 * t111 + t151 * t46;
t14 = -t101 * t29 + t105 * t26;
t15 = t101 * t26 + t105 * t29;
t113 = t101 * t15 + t105 * t14;
t7 = -t101 * t14 + t105 * t15;
t112 = -t42 * t103 + t43 * t106;
t86 = t92 * t107 ^ 2;
t84 = 0.2e1 * t128;
t78 = pkin(1) * t129 + t124;
t77 = t100 * t149 - t83;
t54 = t57 ^ 2;
t52 = t105 * t55;
t50 = t57 * t128;
t36 = (-t93 + t95) * t57;
t19 = t101 * t22;
t11 = -t19 + t135;
t4 = t5 * t101;
t8 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t92 * t104 ^ 2, 0.2e1 * t104 * t136, t129 * t156, t86, t100 * t125, t100 ^ 2, 0.2e1 * pkin(1) * t136 + 0.2e1 * t100 * t77, -0.2e1 * t100 * t78 - 0.2e1 * t150 * t92 (-t104 * t77 + t107 * t78) * t156, pkin(1) ^ 2 * t92 + t77 ^ 2 + t78 ^ 2, t76 ^ 2, -0.2e1 * t76 * t74, t76 * t126, t74 ^ 2, t74 * t125, t86, -0.2e1 * t130 * t42 + 0.2e1 * t64 * t74, 0.2e1 * t130 * t43 + 0.2e1 * t64 * t76, -0.2e1 * t42 * t76 - 0.2e1 * t43 * t74, t42 ^ 2 + t43 ^ 2 + t64 ^ 2, t49 ^ 2, -0.2e1 * t49 * t47, t49 * t126, t47 ^ 2, t47 * t125, t86, -0.2e1 * t130 * t17 + 0.2e1 * t47 * t53, 0.2e1 * t130 * t18 + 0.2e1 * t49 * t53, -0.2e1 * t17 * t49 - 0.2e1 * t18 * t47, t17 ^ 2 + t18 ^ 2 + t53 ^ 2, t34 ^ 2, t34 * t159, t34 * t126, t161, t32 * t125, t86, 0.2e1 * t118 * t130 + 0.2e1 * t32 * t35, 0.2e1 * t130 * t9 + 0.2e1 * t34 * t35, 0.2e1 * t118 * t34 - 0.2e1 * t32 * t9, t118 ^ 2 + t35 ^ 2 + t9 ^ 2, t24 ^ 2, -0.2e1 * t24 * t22, 0.2e1 * t24 * t32, t22 ^ 2, t22 * t159, t161, 0.2e1 * t2 * t32 + 0.2e1 * t22 * t5, 0.2e1 * t24 * t5 - 0.2e1 * t3 * t32, -0.2e1 * t2 * t24 - 0.2e1 * t22 * t3, t2 ^ 2 + t3 ^ 2 + t5 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t131, 0, t130, t100, t77, -t78, 0, 0, t132, -t103 * t74 + t106 * t76, -t122, -t133, -t121, 0, -pkin(2) * t74 + pkin(9) * t122 - t106 * t64, -pkin(2) * t76 + pkin(9) * t121 + t103 * t64 (t132 - t133) * pkin(9) + t112, -t64 * pkin(2) + pkin(9) * t112, t49 * t81, -t47 * t81 - t49 * t79, -t81 * t130, t47 * t79, t79 * t130, 0, -t130 * t58 + t47 * t89 + t53 * t79, t130 * t59 + t49 * t89 + t53 * t81, -t17 * t81 - t18 * t79 - t47 * t59 - t49 * t58, t17 * t58 + t18 * t59 + t53 * t89, t34 * t57, -t32 * t57 - t34 * t55, -t57 * t130, t147, t55 * t130, 0, t130 * t27 + t32 * t63 + t35 * t55, t130 * t29 + t34 * t63 + t35 * t57, t118 * t57 + t27 * t34 - t29 * t32 - t55 * t9, t118 * t27 + t29 * t9 + t35 * t63, t57 * t135 (-t21 - t20) * t57, t138 * t32 + t24 * t55, t22 * t140, -t140 * t32 - t22 * t55, t147, t14 * t32 + t140 * t5 + t2 * t55 + t22 * t27, t138 * t5 - t15 * t32 + t24 * t27 - t3 * t55, -t116 * t57 - t14 * t24 - t15 * t22, t14 * t2 + t15 * t3 + t27 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t94, t103 * t155, 0, t96, 0, 0, pkin(2) * t155, -0.2e1 * pkin(2) * t103, 0.2e1 * t141 * pkin(9), pkin(9) ^ 2 * t141 + pkin(2) ^ 2, t81 ^ 2, -0.2e1 * t81 * t79, 0, t79 ^ 2, 0, 0, t79 * t157, t81 * t157, -0.2e1 * t58 * t81 - 0.2e1 * t59 * t79, t58 ^ 2 + t59 ^ 2 + t89 ^ 2, t54, t127, 0, t160, 0, 0, t55 * t158, t57 * t158, 0.2e1 * t27 * t57 - 0.2e1 * t29 * t55, t29 ^ 2 + t63 ^ 2 + t162, t95 * t54, -0.2e1 * t54 * t128, 0.2e1 * t55 * t138, t93 * t54, t101 * t127, t160, 0.2e1 * t14 * t55 + 0.2e1 * t25 * t57, 0.2e1 * t134 * t57 - 0.2e1 * t15 * t55, t113 * t163, t14 ^ 2 + t15 ^ 2 + t162; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, 0, -t74, -t130, t42, -t43, 0, 0, 0, 0, t49, 0, -t47, -t130, -t123 * t99 + t17, t123 * t97 - t18 (-t47 * t97 - t49 * t99) * pkin(3) (t17 * t99 + t18 * t97) * pkin(3), 0, 0, t34, 0, -t32, -t130, -t130 * t71 - t118, t130 * t72 - t9, -t32 * t72 - t34 * t71, -t118 * t71 + t72 * t9, t21, t11, t30, -t20, t31, 0, -t139 * t32 + t22 * t69 - t146, -t137 * t32 + t24 * t69 + t4, -t70 * t20 + t1 + (t24 * t70 - t2) * t101, t115 * t70 + t5 * t69; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t103, 0, t106, 0, -t103 * pkin(9), -t106 * pkin(9), 0, 0, 0, 0, t81, 0, -t79, 0, t58, -t59 (-t79 * t97 - t81 * t99) * pkin(3) (t58 * t99 + t59 * t97) * pkin(3), 0, 0, t57, 0, -t55, 0, -t27, -t29, -t55 * t72 - t57 * t71, -t27 * t71 + t29 * t72, t50, t36, t51, -t50, t52, 0, t101 * t114 - t134, t105 * t114 + t25, t7, t27 * t69 + t7 * t70; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t153, -0.2e1 * t154, 0 (t97 ^ 2 + t99 ^ 2) * pkin(3) ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t71, -0.2e1 * t72, 0, t71 ^ 2 + t72 ^ 2, t93, t84, 0, t95, 0, 0, -0.2e1 * t69 * t105, 0.2e1 * t69 * t101, 0.2e1 * t144, t142 * t70 ^ 2 + t69 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t47, t49, 0, t53, 0, 0, 0, 0, 0, 0, t32, t34, 0, t35, 0, 0, 0, 0, 0, 0, t31, -t30, -t19 - t135, t116; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t79, t81, 0, t89, 0, 0, 0, 0, 0, 0, t55, t57, 0, t63, 0, 0, 0, 0, 0, 0, t52, -t51, -t142 * t57, t113; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t142; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t34, 0, -t32, -t130, -t118, -t9, 0, 0, t21, t11, t30, -t20, t31, 0, -pkin(5) * t22 - pkin(11) * t30 - t146, -pkin(5) * t24 - pkin(11) * t31 + t4 (t21 - t20) * pkin(11) + t115, -t5 * pkin(5) + pkin(11) * t115; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t57, 0, -t55, 0, -t27, -t29, 0, 0, t50, t36, t51, -t50, t52, 0, t101 * t117 - t134, t105 * t117 + t25, t7, -t27 * pkin(5) + pkin(11) * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t71, -t72, 0, 0, t93, t84, 0, t95, 0, 0, t152 * t105, -t152 * t101, t143 + t144, -t69 * pkin(5) + pkin(11) * t144; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t93, t84, 0, t95, 0, 0, 0.2e1 * pkin(5) * t105, -0.2e1 * pkin(5) * t101, 0.2e1 * t143, pkin(11) ^ 2 * t142 + pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24, 0, -t22, t32, t2, -t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t138, 0, -t140, t55, t14, -t15, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t101, 0, t105, 0, -t139, -t137, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t105, -t101, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t101, 0, t105, 0, -t101 * pkin(11), -t105 * pkin(11), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t8;
