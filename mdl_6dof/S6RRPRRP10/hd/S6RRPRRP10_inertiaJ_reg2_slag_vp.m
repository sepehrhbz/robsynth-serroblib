% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRPRRP10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,theta3]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 12:44
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPRRP10_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP10_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRP10_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 18:46:13
% EndTime: 2019-05-06 18:46:24
% DurationCPUTime: 3.05s
% Computational Cost: add. (3409->220), mult. (7753->410), div. (0->0), fcn. (9007->10), ass. (0->142)
t97 = sin(qJ(5));
t91 = t97 ^ 2;
t100 = cos(qJ(5));
t92 = t100 ^ 2;
t80 = t91 + t92;
t153 = cos(qJ(4));
t93 = sin(pkin(11));
t95 = cos(pkin(11));
t98 = sin(qJ(4));
t74 = t153 * t93 + t98 * t95;
t168 = -0.2e1 * t74;
t101 = cos(qJ(2));
t94 = sin(pkin(6));
t131 = t94 * t101;
t99 = sin(qJ(2));
t144 = t94 * t99;
t96 = cos(pkin(6));
t60 = -t93 * t144 + t96 * t95;
t61 = t95 * t144 + t96 * t93;
t40 = t153 * t61 + t98 * t60;
t30 = t100 * t131 + t97 * t40;
t136 = t30 * t100;
t32 = t100 * t40 - t97 * t131;
t27 = t32 * t97;
t167 = (t136 + t27) * t74;
t135 = t32 * t100;
t26 = t97 * t30;
t166 = -t26 + t135;
t165 = t30 ^ 2;
t38 = -t153 * t60 + t98 * t61;
t37 = t38 ^ 2;
t141 = pkin(9) + qJ(3);
t119 = t141 * t93;
t77 = t141 * t95;
t49 = t153 * t119 + t98 * t77;
t164 = t49 ^ 2;
t72 = -t153 * t95 + t98 * t93;
t69 = t72 ^ 2;
t85 = -t95 * pkin(3) - pkin(2);
t163 = 0.2e1 * t85;
t162 = 0.2e1 * t94;
t161 = 0.2e1 * t95;
t160 = -0.2e1 * t97;
t159 = pkin(1) * t99;
t158 = pkin(10) * t32;
t157 = pkin(10) * t72;
t156 = t38 * pkin(5);
t155 = t72 * pkin(5);
t154 = t97 * pkin(10);
t152 = pkin(1) * t101;
t81 = pkin(8) * t144;
t58 = t81 + (-pkin(2) - t152) * t96;
t43 = -t60 * pkin(3) + t58;
t14 = t38 * pkin(4) - t40 * pkin(10) + t43;
t125 = pkin(8) * t131;
t55 = t125 + (qJ(3) + t159) * t96;
t56 = (-pkin(2) * t101 - qJ(3) * t99 - pkin(1)) * t94;
t33 = -t93 * t55 + t95 * t56;
t18 = -pkin(3) * t131 - t61 * pkin(9) + t33;
t34 = t95 * t55 + t93 * t56;
t23 = t60 * pkin(9) + t34;
t10 = t153 * t23 + t98 * t18;
t8 = -pkin(10) * t131 + t10;
t4 = t100 * t8 + t97 * t14;
t134 = t38 * qJ(6);
t1 = t134 + t4;
t151 = t1 * t100;
t150 = t100 * pkin(10);
t149 = t32 * t30;
t148 = t38 * t30;
t28 = t38 * t72;
t147 = t4 * t100;
t146 = t60 * t95;
t145 = t61 * t93;
t143 = t96 * t99;
t35 = t97 * t38;
t63 = t97 * t72;
t142 = t97 * t74;
t44 = t72 * pkin(4) - t74 * pkin(10) + t85;
t51 = -t98 * t119 + t153 * t77;
t20 = t100 * t51 + t97 * t44;
t140 = t80 * pkin(10) ^ 2;
t88 = t93 ^ 2;
t90 = t95 ^ 2;
t139 = t88 + t90;
t36 = t100 * t38;
t65 = t100 * t72;
t66 = t100 * t74;
t89 = t94 ^ 2;
t138 = t101 * t89;
t111 = pkin(5) * t97 - t100 * qJ(6);
t24 = t111 * t74 + t49;
t137 = t24 * t100;
t133 = t49 * t100;
t132 = t72 * qJ(6);
t130 = t97 * t100;
t129 = pkin(10) * t35;
t128 = -0.2e1 * t131;
t127 = 0.2e1 * t131;
t126 = pkin(10) * t36;
t124 = t30 * t142;
t123 = t72 * t142;
t70 = t74 ^ 2;
t122 = t70 * t130;
t121 = qJ(3) * t131;
t120 = -t100 * t14 + t97 * t8;
t118 = -t100 * t44 + t97 * t51;
t117 = -t26 - t135;
t116 = -pkin(4) * t74 - t157;
t9 = t153 * t18 - t98 * t23;
t110 = t100 * pkin(5) + t97 * qJ(6);
t76 = -pkin(4) - t110;
t115 = -t74 * t76 + t157;
t2 = t120 - t156;
t114 = t1 * t97 - t2 * t100;
t113 = -t100 * t120 + t4 * t97;
t112 = -t33 * t93 + t34 * t95;
t16 = t132 + t20;
t17 = t118 - t155;
t109 = t17 * t100 - t16 * t97;
t108 = t16 * t100 + t17 * t97;
t107 = t20 * t100 + t118 * t97;
t106 = -t100 * t118 + t20 * t97;
t7 = pkin(4) * t131 - t9;
t104 = t38 * t142 + t72 * t30;
t83 = t89 * t101 ^ 2;
t75 = 0.2e1 * t80 * pkin(10);
t68 = pkin(1) * t143 + t125;
t67 = t96 * t152 - t81;
t64 = t92 * t70;
t62 = t91 * t70;
t59 = t74 * t130;
t48 = 0.2e1 * t72 * t66;
t46 = t80 * t74;
t45 = (t91 - t92) * t74;
t29 = t32 ^ 2;
t25 = pkin(10) * t136;
t21 = t74 * t135;
t15 = 0.2e1 * t32 * t38;
t11 = t32 * t72 + t38 * t66;
t5 = t30 * pkin(5) - t32 * qJ(6) + t7;
t3 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t89 * t99 ^ 2, 0.2e1 * t99 * t138, t143 * t162, t83, t96 * t127, t96 ^ 2, 0.2e1 * pkin(1) * t138 + 0.2e1 * t67 * t96, -0.2e1 * t89 * t159 - 0.2e1 * t68 * t96 (t101 * t68 - t67 * t99) * t162, t89 * pkin(1) ^ 2 + t67 ^ 2 + t68 ^ 2, t61 ^ 2, 0.2e1 * t61 * t60, t61 * t128, t60 ^ 2, t60 * t128, t83, -0.2e1 * t33 * t131 - 0.2e1 * t58 * t60, 0.2e1 * t34 * t131 + 0.2e1 * t58 * t61, -0.2e1 * t33 * t61 + 0.2e1 * t34 * t60, t33 ^ 2 + t34 ^ 2 + t58 ^ 2, t40 ^ 2, -0.2e1 * t40 * t38, t40 * t128, t37, t38 * t127, t83, -0.2e1 * t9 * t131 + 0.2e1 * t43 * t38, 0.2e1 * t10 * t131 + 0.2e1 * t43 * t40, -0.2e1 * t10 * t38 - 0.2e1 * t9 * t40, t10 ^ 2 + t43 ^ 2 + t9 ^ 2, t29, -0.2e1 * t149, t15, t165, -0.2e1 * t148, t37, -0.2e1 * t120 * t38 + 0.2e1 * t7 * t30, 0.2e1 * t7 * t32 - 0.2e1 * t4 * t38, 0.2e1 * t120 * t32 - 0.2e1 * t4 * t30, t120 ^ 2 + t4 ^ 2 + t7 ^ 2, t29, t15, 0.2e1 * t149, t37, 0.2e1 * t148, t165, -0.2e1 * t2 * t38 + 0.2e1 * t5 * t30, -0.2e1 * t1 * t30 + 0.2e1 * t2 * t32, 0.2e1 * t1 * t38 - 0.2e1 * t5 * t32, t1 ^ 2 + t2 ^ 2 + t5 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t144, 0, t131, t96, t67, -t68, 0, 0, t145, t93 * t60 + t61 * t95, -t93 * t131, t146, -t95 * t131, 0, pkin(2) * t60 + t93 * t121 - t58 * t95, -pkin(2) * t61 + t95 * t121 + t58 * t93 (t145 + t146) * qJ(3) + t112, -t58 * pkin(2) + qJ(3) * t112, t40 * t74, -t74 * t38 - t40 * t72, -t74 * t131, t28, t72 * t131, 0, t49 * t131 + t85 * t38 + t43 * t72, t51 * t131 + t85 * t40 + t43 * t74, -t10 * t72 - t51 * t38 + t49 * t40 - t9 * t74, t10 * t51 + t43 * t85 - t9 * t49, t21, -t167, t11, t124, -t104, t28, -t118 * t38 - t120 * t72 + t7 * t142 + t49 * t30, -t20 * t38 + t49 * t32 - t4 * t72 + t7 * t66, -t113 * t74 + t118 * t32 - t20 * t30, t118 * t120 + t4 * t20 + t7 * t49, t21, t11, t167, t28, t104, t124, t142 * t5 - t17 * t38 - t2 * t72 + t24 * t30, -t114 * t74 - t16 * t30 + t17 * t32, t1 * t72 + t16 * t38 - t24 * t32 - t5 * t66, t1 * t16 + t2 * t17 + t5 * t24; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t88, t93 * t161, 0, t90, 0, 0, pkin(2) * t161, -0.2e1 * pkin(2) * t93, 0.2e1 * t139 * qJ(3), t139 * qJ(3) ^ 2 + pkin(2) ^ 2, t70, t72 * t168, 0, t69, 0, 0, t72 * t163, t74 * t163, 0.2e1 * t49 * t74 - 0.2e1 * t51 * t72, t51 ^ 2 + t85 ^ 2 + t164, t64, -0.2e1 * t122, t48, t62, -0.2e1 * t123, t69, -0.2e1 * t118 * t72 + 0.2e1 * t49 * t142, 0.2e1 * t133 * t74 - 0.2e1 * t20 * t72, t106 * t168, t118 ^ 2 + t20 ^ 2 + t164, t64, t48, 0.2e1 * t122, t69, 0.2e1 * t123, t62, 0.2e1 * t142 * t24 - 0.2e1 * t17 * t72, 0.2e1 * t109 * t74, -0.2e1 * t137 * t74 + 0.2e1 * t16 * t72, t16 ^ 2 + t17 ^ 2 + t24 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t60, t61, 0, t58, 0, 0, 0, 0, 0, 0, t38, t40, 0, t43, 0, 0, 0, 0, 0, 0, t36, -t35, t117, t113, 0, 0, 0, 0, 0, 0, t36, t117, t35, t114; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t95, t93, 0, -pkin(2), 0, 0, 0, 0, 0, 0, t72, t74, 0, t85, 0, 0, 0, 0, 0, 0, t65, -t63, -t46, t106, 0, 0, 0, 0, 0, 0, t65, -t46, t63, -t109; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t80, 0, 0, 0, 0, 0, 0, 0, 0, 0, t80; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t40, 0, -t38, -t131, t9, -t10, 0, 0, t27, t166, t35, -t136, t36, 0, -pkin(4) * t30 - t7 * t100 - t129, -pkin(4) * t32 + t7 * t97 - t126, t147 - t25 + (t120 + t158) * t97, -t7 * pkin(4) + (t120 * t97 + t147) * pkin(10), t27, t35, -t166, 0, -t36, -t136, -t5 * t100 + t76 * t30 - t129, t151 - t25 + (t2 + t158) * t97, -t76 * t32 - t5 * t97 + t126, t5 * t76 + (t2 * t97 + t151) * pkin(10); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, 0, -t72, 0, -t49, -t51, 0, 0, t59, -t45, t63, -t59, t65, 0, t116 * t97 - t133, t100 * t116 + t49 * t97, t107, -t49 * pkin(4) + pkin(10) * t107, t59, t63, t45, 0, -t65, -t59, -t115 * t97 - t137, t108, t100 * t115 - t24 * t97, pkin(10) * t108 + t24 * t76; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t91, 0.2e1 * t130, 0, t92, 0, 0, 0.2e1 * pkin(4) * t100, pkin(4) * t160, t75, pkin(4) ^ 2 + t140, t91, 0, -0.2e1 * t130, 0, 0, t92, -0.2e1 * t76 * t100, t75, t76 * t160, t76 ^ 2 + t140; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t32, 0, -t30, t38, -t120, -t4, 0, 0, 0, t32, 0, t38, t30, 0, -t120 + 0.2e1 * t156, -pkin(5) * t32 - t30 * qJ(6), 0.2e1 * t134 + t4, -t2 * pkin(5) + t1 * qJ(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, 0, -t142, t72, -t118, -t20, 0, 0, 0, t66, 0, t72, t142, 0, -t118 + 0.2e1 * t155, -t110 * t74, 0.2e1 * t132 + t20, -t17 * pkin(5) + t16 * qJ(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, -t97, 0, 0, 0, 0, 0, 0, 0, 0, t100, 0, t97, t110; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t97, 0, t100, 0, -t154, -t150, 0, 0, 0, t97, 0, 0, -t100, 0, -t154, -t111, t150, -t111 * pkin(10); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.2e1 * pkin(5), 0, 0.2e1 * qJ(6), pkin(5) ^ 2 + qJ(6) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t38, t32, 0, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t72, t66, 0, t17; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t100; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t97, 0, t154; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t3;
