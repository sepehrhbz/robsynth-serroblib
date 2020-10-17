% Calculate minimal parameter regressor of joint inertia matrix for
% S6RRRRRR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d1,d2,d3,d4,d5,d6]';
% 
% Output:
% MM_reg [((6+1)*6/2)x38]
%   minimal parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 06:28
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRRRR10_inertiaJ_regmin_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(14,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR10_inertiaJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6RRRRRR10_inertiaJ_regmin_slag_vp: pkin has to be [14x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 18:43:30
% EndTime: 2019-05-08 18:44:02
% DurationCPUTime: 4.28s
% Computational Cost: add. (8664->327), mult. (24419->700), div. (0->0), fcn. (28984->16), ass. (0->174)
t123 = cos(qJ(3));
t110 = sin(pkin(7));
t111 = sin(pkin(6));
t114 = cos(pkin(6));
t113 = cos(pkin(7));
t124 = cos(qJ(2));
t145 = t113 * t124;
t129 = t110 * t114 + t111 * t145;
t118 = sin(qJ(3));
t119 = sin(qJ(2));
t150 = t111 * t119;
t97 = t118 * t150;
t195 = -t123 * t129 + t97;
t196 = -0.2e1 * t195;
t117 = sin(qJ(4));
t122 = cos(qJ(4));
t109 = sin(pkin(8));
t112 = cos(pkin(8));
t152 = t110 * t118;
t178 = pkin(12) * t112;
t146 = t113 * t123;
t99 = pkin(2) * t146;
t65 = t113 * pkin(3) + t99 + (-pkin(11) - t178) * t152;
t179 = pkin(12) * t109;
t73 = (-pkin(3) * t123 - t118 * t179 - pkin(2)) * t110;
t130 = t109 * t73 + t112 * t65;
t147 = t112 * t123;
t132 = t110 * t147;
t151 = t110 * t123;
t183 = pkin(2) * t118;
t91 = pkin(11) * t151 + t113 * t183;
t60 = (t109 * t113 + t132) * pkin(12) + t91;
t35 = -t117 * t60 + t122 * t130;
t149 = t111 * t124;
t184 = pkin(1) * t119;
t92 = pkin(10) * t149 + t114 * t184;
t61 = pkin(11) * t129 + t92;
t100 = t114 * t124 * pkin(1);
t66 = t114 * pkin(2) + t100 + (-pkin(11) * t113 - pkin(10)) * t150;
t74 = (-pkin(11) * t110 * t119 - pkin(2) * t124 - pkin(1)) * t111;
t36 = -t118 * t61 + t66 * t146 + t74 * t151;
t63 = t114 * t152 + (t118 * t145 + t119 * t123) * t111;
t84 = -t110 * t149 + t114 * t113;
t27 = t84 * pkin(3) - t63 * t178 + t36;
t45 = -t110 * t66 + t113 * t74;
t29 = pkin(3) * t195 - t63 * t179 + t45;
t131 = t109 * t29 + t112 * t27;
t126 = t195 * t112;
t125 = t84 * t109 - t126;
t38 = t123 * t61 + (t110 * t74 + t113 * t66) * t118;
t24 = pkin(12) * t125 + t38;
t13 = -t117 * t24 + t122 * t131;
t116 = sin(qJ(5));
t121 = cos(qJ(5));
t41 = t117 * t125 + t63 * t122;
t47 = -t109 * t195 - t84 * t112;
t25 = t41 * t116 + t47 * t121;
t194 = -0.2e1 * t25;
t153 = t109 * t122;
t40 = t63 * t117 + t122 * t126 - t84 * t153;
t193 = 0.2e1 * t40;
t192 = -0.2e1 * t41;
t154 = t109 * t117;
t64 = t113 * t154 + (t117 * t147 + t118 * t122) * t110;
t82 = t109 * t151 - t112 * t113;
t49 = t116 * t64 + t121 * t82;
t191 = -0.2e1 * t49;
t62 = -t113 * t153 + t117 * t152 - t122 * t132;
t190 = 0.2e1 * t62;
t189 = -0.2e1 * t64;
t115 = sin(qJ(6));
t120 = cos(qJ(6));
t86 = t116 * t112 + t121 * t154;
t67 = t115 * t86 + t120 * t153;
t188 = -0.2e1 * t67;
t187 = -0.2e1 * t86;
t186 = -0.2e1 * t116;
t185 = 0.2e1 * t121;
t182 = pkin(3) * t117;
t181 = pkin(3) * t122;
t180 = pkin(5) * t120;
t177 = pkin(13) * t115;
t14 = t117 * t131 + t122 * t24;
t11 = -t47 * pkin(13) + t14;
t15 = -t109 * t27 + t112 * t29;
t12 = t40 * pkin(4) - t41 * pkin(13) + t15;
t5 = -t116 * t11 + t121 * t12;
t3 = -t40 * pkin(5) - t5;
t176 = t3 * t115;
t175 = t3 * t120;
t44 = -t109 * t65 + t112 * t73;
t30 = t62 * pkin(4) - t64 * pkin(13) + t44;
t37 = t117 * t130 + t122 * t60;
t32 = -t82 * pkin(13) + t37;
t20 = -t116 * t32 + t121 * t30;
t16 = -t62 * pkin(5) - t20;
t174 = t16 * t115;
t173 = t16 * t120;
t26 = -t47 * t116 + t41 * t121;
t19 = t40 * t115 + t26 * t120;
t172 = t19 * t115;
t171 = t25 * t115;
t170 = t25 * t120;
t169 = t40 * t116;
t168 = t40 * t121;
t50 = -t116 * t82 + t121 * t64;
t43 = t115 * t62 + t120 * t50;
t167 = t43 * t115;
t166 = t49 * t115;
t165 = t49 * t120;
t135 = pkin(12) * t153;
t80 = t135 + (pkin(13) + t182) * t112;
t81 = (-pkin(4) * t122 - pkin(13) * t117 - pkin(3)) * t109;
t54 = -t116 * t80 + t121 * t81;
t52 = pkin(5) * t153 - t54;
t164 = t52 * t115;
t163 = t52 * t120;
t162 = t62 * t116;
t161 = t62 * t121;
t68 = -t115 * t153 + t120 * t86;
t160 = t68 * t115;
t85 = -t121 * t112 + t116 * t154;
t159 = t85 * t115;
t158 = t85 * t120;
t103 = t109 ^ 2;
t157 = t103 * t122;
t104 = t110 ^ 2;
t156 = t104 * t123;
t105 = t111 ^ 2;
t155 = t105 * t124;
t148 = t112 * t117;
t144 = t115 * t116;
t143 = t115 * t120;
t142 = t120 * t116;
t141 = t121 * t115;
t140 = t121 * t120;
t139 = 0.2e1 * t153;
t138 = 0.2e1 * t110 * t113;
t137 = 0.2e1 * t111 * t114;
t136 = t116 * t185;
t134 = t116 * t153;
t133 = t121 * t153;
t6 = t121 * t11 + t116 * t12;
t21 = t116 * t30 + t121 * t32;
t55 = t116 * t81 + t121 * t80;
t98 = pkin(12) * t154;
t79 = t98 + (-pkin(4) - t181) * t112;
t10 = t47 * pkin(4) - t13;
t31 = t82 * pkin(4) - t35;
t108 = t120 ^ 2;
t107 = t116 ^ 2;
t106 = t115 ^ 2;
t94 = -t121 * pkin(5) - t116 * pkin(14) - pkin(4);
t90 = pkin(3) * t148 + t135;
t89 = -pkin(10) * t150 + t100;
t88 = -pkin(11) * t152 + t99;
t87 = t112 * t181 - t98;
t76 = pkin(13) * t140 + t115 * t94;
t75 = -pkin(13) * t141 + t120 * t94;
t53 = -pkin(14) * t153 + t55;
t51 = t85 * pkin(5) - t86 * pkin(14) + t79;
t42 = t115 * t50 - t120 * t62;
t34 = t115 * t51 + t120 * t53;
t33 = -t115 * t53 + t120 * t51;
t22 = t49 * pkin(5) - t50 * pkin(14) + t31;
t18 = t26 * t115 - t40 * t120;
t17 = t62 * pkin(14) + t21;
t9 = t115 * t22 + t120 * t17;
t8 = -t115 * t17 + t120 * t22;
t7 = t25 * pkin(5) - t26 * pkin(14) + t10;
t4 = t40 * pkin(14) + t6;
t2 = t115 * t7 + t120 * t4;
t1 = -t115 * t4 + t120 * t7;
t23 = [1, 0, 0, t105 * t119 ^ 2, 0.2e1 * t119 * t155, t119 * t137, t124 * t137, t114 ^ 2, 0.2e1 * pkin(1) * t155 + 0.2e1 * t89 * t114, -0.2e1 * t105 * t184 - 0.2e1 * t92 * t114, t63 ^ 2, t63 * t196, 0.2e1 * t84 * t63, t84 * t196, t84 ^ 2, 0.2e1 * t195 * t45 + 0.2e1 * t36 * t84, -0.2e1 * t38 * t84 + 0.2e1 * t45 * t63, t41 ^ 2, t40 * t192, t47 * t192, t47 * t193, t47 ^ 2, -0.2e1 * t13 * t47 + 0.2e1 * t15 * t40, 0.2e1 * t14 * t47 + 0.2e1 * t15 * t41, t26 ^ 2, t26 * t194, t26 * t193, t40 * t194, t40 ^ 2, 0.2e1 * t10 * t25 + 0.2e1 * t5 * t40, 0.2e1 * t10 * t26 - 0.2e1 * t6 * t40, t19 ^ 2, -0.2e1 * t19 * t18, 0.2e1 * t25 * t19, t18 * t194, t25 ^ 2, 0.2e1 * t1 * t25 + 0.2e1 * t3 * t18, 0.2e1 * t3 * t19 - 0.2e1 * t2 * t25; 0, 0, 0, 0, 0, t150, t149, t114, t89, -t92, t63 * t152 (-t118 * t195 + t123 * t63) * t110, t113 * t63 + t84 * t152, -t113 * t97 + (t84 * t110 + t113 * t129) * t123, t84 * t113, -pkin(2) * t110 * t195 + t36 * t113 - t45 * t151 + t88 * t84, -t38 * t113 - t91 * t84 + (-pkin(2) * t63 + t118 * t45) * t110, t41 * t64, -t40 * t64 - t62 * t41, -t82 * t41 - t47 * t64, t82 * t40 + t47 * t62, t47 * t82, -t13 * t82 + t15 * t62 - t35 * t47 + t44 * t40, t14 * t82 + t15 * t64 + t37 * t47 + t44 * t41, t26 * t50, -t50 * t25 - t26 * t49, t62 * t26 + t40 * t50, -t62 * t25 - t40 * t49, t40 * t62, t10 * t49 + t20 * t40 + t31 * t25 + t5 * t62, t10 * t50 - t21 * t40 + t31 * t26 - t6 * t62, t19 * t43, -t43 * t18 - t19 * t42, t49 * t19 + t25 * t43, -t49 * t18 - t25 * t42, t25 * t49, t1 * t49 + t16 * t18 + t8 * t25 + t3 * t42, t16 * t19 - t2 * t49 - t9 * t25 + t3 * t43; 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t104 * t118 ^ 2, 0.2e1 * t118 * t156, t118 * t138, t123 * t138, t113 ^ 2, 0.2e1 * pkin(2) * t156 + 0.2e1 * t88 * t113, -0.2e1 * t104 * t183 - 0.2e1 * t91 * t113, t64 ^ 2, t62 * t189, t82 * t189, t82 * t190, t82 ^ 2, -0.2e1 * t35 * t82 + 0.2e1 * t44 * t62, 0.2e1 * t37 * t82 + 0.2e1 * t44 * t64, t50 ^ 2, t50 * t191, t50 * t190, t62 * t191, t62 ^ 2, 0.2e1 * t20 * t62 + 0.2e1 * t31 * t49, -0.2e1 * t21 * t62 + 0.2e1 * t31 * t50, t43 ^ 2, -0.2e1 * t43 * t42, 0.2e1 * t49 * t43, t42 * t191, t49 ^ 2, 0.2e1 * t16 * t42 + 0.2e1 * t8 * t49, 0.2e1 * t16 * t43 - 0.2e1 * t9 * t49; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t63, -t195, t84, t36, -t38, t41 * t154 (-t117 * t40 + t122 * t41) * t109, t112 * t41 - t47 * t154, -t112 * t40 - t47 * t153, -t47 * t112, t13 * t112 - t87 * t47 + (-pkin(3) * t40 - t122 * t15) * t109, -t14 * t112 + t90 * t47 + (-pkin(3) * t41 + t117 * t15) * t109, t26 * t86, -t86 * t25 - t26 * t85, -t153 * t26 + t40 * t86, t153 * t25 - t40 * t85, -t40 * t153, t10 * t85 - t153 * t5 + t79 * t25 + t54 * t40, t10 * t86 + t153 * t6 + t79 * t26 - t55 * t40, t19 * t68, -t68 * t18 - t19 * t67, t85 * t19 + t25 * t68, -t85 * t18 - t25 * t67, t25 * t85, t1 * t85 + t52 * t18 + t33 * t25 + t3 * t67, t52 * t19 - t2 * t85 - t34 * t25 + t3 * t68; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t152, t151, t113, t88, -t91, t64 * t154 (-t117 * t62 + t122 * t64) * t109, t112 * t64 - t82 * t154, -t112 * t62 - t82 * t153, -t82 * t112, t35 * t112 - t87 * t82 + (-pkin(3) * t62 - t122 * t44) * t109, -t37 * t112 + t90 * t82 + (-pkin(3) * t64 + t117 * t44) * t109, t50 * t86, -t86 * t49 - t50 * t85, -t153 * t50 + t62 * t86, t153 * t49 - t62 * t85, -t62 * t153, -t153 * t20 + t31 * t85 + t79 * t49 + t54 * t62, t153 * t21 + t31 * t86 + t79 * t50 - t55 * t62, t43 * t68, -t68 * t42 - t43 * t67, t85 * t43 + t49 * t68, -t85 * t42 - t49 * t67, t49 * t85, t16 * t67 + t33 * t49 + t52 * t42 + t8 * t85, t16 * t68 - t34 * t49 + t52 * t43 - t9 * t85; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t103 * t117 ^ 2, 0.2e1 * t117 * t157, 0.2e1 * t109 * t148, t112 * t139, t112 ^ 2, 0.2e1 * pkin(3) * t157 + 0.2e1 * t87 * t112, -0.2e1 * t103 * t182 - 0.2e1 * t90 * t112, t86 ^ 2, t85 * t187, t153 * t187, t85 * t139, t103 * t122 ^ 2, -0.2e1 * t153 * t54 + 0.2e1 * t79 * t85, 0.2e1 * t153 * t55 + 0.2e1 * t79 * t86, t68 ^ 2, t68 * t188, 0.2e1 * t85 * t68, t85 * t188, t85 ^ 2, 0.2e1 * t33 * t85 + 0.2e1 * t52 * t67, -0.2e1 * t34 * t85 + 0.2e1 * t52 * t68; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t41, -t40, -t47, t13, -t14, t26 * t116, -t116 * t25 + t26 * t121, t169, t168, 0, -pkin(4) * t25 - pkin(13) * t169 - t10 * t121, -pkin(4) * t26 - pkin(13) * t168 + t10 * t116, t19 * t142 (-t120 * t18 - t172) * t116, -t121 * t19 + t142 * t25, t121 * t18 - t144 * t25, -t25 * t121, -t1 * t121 + t75 * t25 + (pkin(13) * t18 + t176) * t116, t2 * t121 - t76 * t25 + (pkin(13) * t19 + t175) * t116; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t64, -t62, -t82, t35, -t37, t50 * t116, -t116 * t49 + t50 * t121, t162, t161, 0, -pkin(4) * t49 - pkin(13) * t162 - t31 * t121, -pkin(4) * t50 - pkin(13) * t161 + t31 * t116, t43 * t142 (-t120 * t42 - t167) * t116, -t121 * t43 + t142 * t49, t121 * t42 - t144 * t49, -t49 * t121, -t8 * t121 + t75 * t49 + (pkin(13) * t42 + t174) * t116, t9 * t121 - t76 * t49 + (pkin(13) * t43 + t173) * t116; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t154, t153, t112, t87, -t90, t86 * t116, -t116 * t85 + t86 * t121, -t134, -t133, 0, -pkin(4) * t85 + pkin(13) * t134 - t79 * t121, -pkin(4) * t86 + pkin(13) * t133 + t79 * t116, t68 * t142 (-t120 * t67 - t160) * t116, -t121 * t68 + t142 * t85, t121 * t67 - t144 * t85, -t85 * t121, -t33 * t121 + t75 * t85 + (pkin(13) * t67 + t164) * t116, t34 * t121 - t76 * t85 + (pkin(13) * t68 + t163) * t116; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t107, t136, 0, 0, 0, pkin(4) * t185, pkin(4) * t186, t108 * t107, -0.2e1 * t107 * t143, t140 * t186, t115 * t136, t121 ^ 2, 0.2e1 * t107 * t177 - 0.2e1 * t75 * t121, 0.2e1 * t107 * pkin(13) * t120 + 0.2e1 * t76 * t121; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t26, -t25, t40, t5, -t6, t172, -t115 * t18 + t19 * t120, t171, t170, 0, -pkin(5) * t18 - pkin(14) * t171 - t175, -pkin(5) * t19 - pkin(14) * t170 + t176; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50, -t49, t62, t20, -t21, t167, -t115 * t42 + t43 * t120, t166, t165, 0, -pkin(5) * t42 - pkin(14) * t166 - t173, -pkin(5) * t43 - pkin(14) * t165 + t174; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t86, -t85, -t153, t54, -t55, t160, -t115 * t67 + t68 * t120, t159, t158, 0, -pkin(5) * t67 - pkin(14) * t159 - t163, -pkin(5) * t68 - pkin(14) * t158 + t164; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t116, t121, 0, -t116 * pkin(13), -t121 * pkin(13), t115 * t142 (-t106 + t108) * t116, -t141, -t140, 0, -pkin(13) * t142 + (-pkin(5) * t116 + pkin(14) * t121) * t115, pkin(14) * t140 + (t177 - t180) * t116; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t106, 0.2e1 * t143, 0, 0, 0, 0.2e1 * t180, -0.2e1 * pkin(5) * t115; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t19, -t18, t25, t1, -t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t43, -t42, t49, t8, -t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t68, -t67, t85, t33, -t34; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t142, -t144, -t121, t75, -t76; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t115, t120, 0, -t115 * pkin(14), -t120 * pkin(14); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0;];
MM_reg  = t23;
