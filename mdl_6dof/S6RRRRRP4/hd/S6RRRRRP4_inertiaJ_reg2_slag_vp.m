% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRRRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 01:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRRRP4_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP4_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP4_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 04:51:40
% EndTime: 2019-05-08 04:51:52
% DurationCPUTime: 2.89s
% Computational Cost: add. (2575->208), mult. (4904->342), div. (0->0), fcn. (5681->8), ass. (0->133)
t114 = sin(qJ(4));
t109 = t114 ^ 2;
t118 = cos(qJ(4));
t111 = t118 ^ 2;
t140 = t109 + t111;
t115 = sin(qJ(3));
t172 = t115 * pkin(2);
t99 = pkin(9) + t172;
t151 = t140 * t99;
t113 = sin(qJ(5));
t117 = cos(qJ(5));
t186 = -t113 * t114 + t117 * t118;
t134 = (-pkin(10) - pkin(9)) * t114;
t108 = t118 * pkin(10);
t170 = t118 * pkin(9);
t90 = t108 + t170;
t61 = t113 * t90 - t117 * t134;
t65 = t113 * t134 + t117 * t90;
t85 = t113 * t118 + t117 * t114;
t187 = t186 * t65 + t61 * t85;
t191 = 0.2e1 * t187;
t133 = (-pkin(10) - t99) * t114;
t147 = t118 * t99;
t75 = t108 + t147;
t46 = t113 * t75 - t117 * t133;
t48 = t113 * t133 + t117 * t75;
t188 = t186 * t48 + t46 * t85;
t190 = 0.2e1 * t188;
t189 = t187 + t188;
t116 = sin(qJ(2));
t119 = cos(qJ(3));
t120 = cos(qJ(2));
t86 = t115 * t120 + t119 * t116;
t41 = t85 * t86;
t185 = t41 ^ 2;
t175 = -pkin(8) - pkin(7);
t135 = t175 * t116;
t91 = t175 * t120;
t63 = -t115 * t91 - t119 * t135;
t184 = t63 ^ 2;
t183 = t186 ^ 2;
t83 = t115 * t116 - t119 * t120;
t78 = t83 ^ 2;
t182 = -0.2e1 * t186;
t181 = 0.2e1 * t83;
t180 = -0.2e1 * t85;
t103 = -t118 * pkin(4) - pkin(3);
t169 = t119 * pkin(2);
t89 = t103 - t169;
t179 = 0.2e1 * t89;
t178 = 0.2e1 * t103;
t104 = -t120 * pkin(2) - pkin(1);
t177 = 0.2e1 * t104;
t176 = 0.2e1 * t120;
t73 = t83 * qJ(6);
t148 = t118 * t86;
t51 = t83 * pkin(3) - t86 * pkin(9) + t104;
t66 = t115 * t135 - t119 * t91;
t21 = -t114 * t66 + t118 * t51;
t17 = t83 * pkin(4) - pkin(10) * t148 + t21;
t149 = t118 * t66;
t19 = t149 + (-pkin(10) * t86 + t51) * t114;
t8 = t113 * t17 + t117 * t19;
t3 = t73 + t8;
t129 = t113 * t19 - t117 * t17;
t74 = t83 * pkin(5);
t4 = t129 - t74;
t174 = t186 * t3 + t4 * t85;
t173 = t129 * t85 + t186 * t8;
t105 = t113 * pkin(4);
t171 = t117 * pkin(4);
t43 = t186 * t86;
t168 = t41 * t43;
t167 = t41 * t186;
t166 = t41 * t83;
t165 = t46 * t83;
t163 = t48 * t83;
t162 = t61 * t83;
t160 = t65 * t83;
t159 = t186 * t83;
t158 = t186 * t85;
t102 = -pkin(3) - t169;
t157 = pkin(3) - t102;
t49 = -pkin(5) * t186 - t85 * qJ(6) + t103;
t39 = t49 - t169;
t152 = t39 + t49;
t150 = t114 * t86;
t54 = t63 * t114;
t146 = t63 * t118;
t145 = t103 + t89;
t143 = t114 * t118;
t141 = t140 * pkin(9);
t110 = t116 ^ 2;
t112 = t120 ^ 2;
t139 = t110 + t112;
t138 = -0.2e1 * t86 * t83;
t137 = t46 ^ 2 + t48 ^ 2;
t136 = t61 ^ 2 + t65 ^ 2;
t132 = -t48 * t41 + t46 * t43;
t131 = -t65 * t41 + t61 * t43;
t130 = t46 * t61 + t48 * t65;
t34 = pkin(4) * t150 + t63;
t128 = -pkin(3) * t86 - pkin(9) * t83;
t14 = t186 * t43 - t41 * t85;
t127 = t102 * t86 - t83 * t99;
t22 = t114 * t51 + t149;
t9 = -t21 * t114 + t22 * t118;
t122 = 0.2e1 * pkin(5);
t121 = 0.2e1 * qJ(6);
t100 = pkin(5) + t171;
t96 = t105 + qJ(6);
t94 = 0.2e1 * t143;
t80 = t86 ^ 2;
t79 = t85 ^ 2;
t72 = t118 * t83;
t71 = t114 * t83;
t68 = t86 * t143;
t60 = t85 * t83;
t56 = 0.2e1 * t158;
t55 = -0.2e1 * t158;
t53 = -pkin(5) * t85 + qJ(6) * t186;
t52 = (-t109 + t111) * t86;
t50 = (t113 * t186 - t117 * t85) * pkin(4);
t40 = t43 ^ 2;
t35 = -t100 * t85 + t186 * t96;
t30 = t43 * t85;
t27 = t43 * t181;
t26 = t34 * t85;
t25 = t34 * t186;
t12 = t41 * pkin(5) - t43 * qJ(6) + t34;
t11 = t12 * t85;
t10 = t12 * t186;
t1 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t110, t116 * t176, 0, t112, 0, 0, pkin(1) * t176, -0.2e1 * pkin(1) * t116, 0.2e1 * t139 * pkin(7), pkin(7) ^ 2 * t139 + pkin(1) ^ 2, t80, t138, 0, t78, 0, 0, t83 * t177, t86 * t177, 0.2e1 * t63 * t86 - 0.2e1 * t66 * t83, t104 ^ 2 + t66 ^ 2 + t184, t111 * t80, -0.2e1 * t80 * t143, t148 * t181, t109 * t80, t114 * t138, t78, 0.2e1 * t21 * t83 + 0.2e1 * t54 * t86, 0.2e1 * t146 * t86 - 0.2e1 * t22 * t83, 0.2e1 * (-t114 * t22 - t118 * t21) * t86, t21 ^ 2 + t22 ^ 2 + t184, t40, -0.2e1 * t168, t27, t185, -0.2e1 * t166, t78, -0.2e1 * t129 * t83 + 0.2e1 * t34 * t41, 0.2e1 * t34 * t43 - 0.2e1 * t8 * t83, 0.2e1 * t129 * t43 - 0.2e1 * t8 * t41, t129 ^ 2 + t34 ^ 2 + t8 ^ 2, t40, t27, 0.2e1 * t168, t78, 0.2e1 * t166, t185, 0.2e1 * t12 * t41 - 0.2e1 * t4 * t83, -0.2e1 * t3 * t41 + 0.2e1 * t4 * t43, -0.2e1 * t12 * t43 + 0.2e1 * t3 * t83, t12 ^ 2 + t3 ^ 2 + t4 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t116, 0, t120, 0, -t116 * pkin(7), -t120 * pkin(7), 0, 0, 0, 0, t86, 0, -t83, 0, -t63, -t66 (-t115 * t83 - t119 * t86) * pkin(2) (t115 * t66 - t119 * t63) * pkin(2), t68, t52, t71, -t68, t72, 0, t114 * t127 - t146, t118 * t127 + t54, t9, t63 * t102 + t9 * t99, t30, t14, t60, -t167, t159, 0, t89 * t41 - t165 - t25, t89 * t43 - t163 + t26, t132 + t173, t129 * t46 + t34 * t89 + t8 * t48, t30, t60, -t14, 0, -t159, -t167, t39 * t41 - t10 - t165, t132 + t174, -t39 * t43 - t11 + t163, t12 * t39 + t3 * t48 + t4 * t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t169, -0.2e1 * t172, 0 (t115 ^ 2 + t119 ^ 2) * pkin(2) ^ 2, t109, t94, 0, t111, 0, 0, -0.2e1 * t102 * t118, 0.2e1 * t102 * t114, 0.2e1 * t151, t140 * t99 ^ 2 + t102 ^ 2, t79, t56, 0, t183, 0, 0, -t186 * t179, t85 * t179, t190, t89 ^ 2 + t137, t79, 0, t55, 0, 0, t183, t39 * t182, t190, t39 * t180, t39 ^ 2 + t137; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t86, 0, -t83, 0, -t63, -t66, 0, 0, t68, t52, t71, -t68, t72, 0, t114 * t128 - t146, t118 * t128 + t54, t9, -t63 * pkin(3) + pkin(9) * t9, t30, t14, t60, -t167, t159, 0, t103 * t41 - t162 - t25, t103 * t43 - t160 + t26, t131 + t173, t34 * t103 + t129 * t61 + t8 * t65, t30, t60, -t14, 0, -t159, -t167, t49 * t41 - t10 - t162, t131 + t174, -t49 * t43 - t11 + t160, t12 * t49 + t3 * t65 + t4 * t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t169, -t172, 0, 0, t109, t94, 0, t111, 0, 0, t157 * t118, -t157 * t114, t141 + t151, -t102 * pkin(3) + pkin(9) * t151, t79, t56, 0, t183, 0, 0, -t145 * t186, t145 * t85, t189, t89 * t103 + t130, t79, 0, t55, 0, 0, t183, -t152 * t186, t189, -t152 * t85, t39 * t49 + t130; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t109, t94, 0, t111, 0, 0, 0.2e1 * pkin(3) * t118, -0.2e1 * pkin(3) * t114, 0.2e1 * t141, pkin(9) ^ 2 * t140 + pkin(3) ^ 2, t79, t56, 0, t183, 0, 0, -t186 * t178, t85 * t178, t191, t103 ^ 2 + t136, t79, 0, t55, 0, 0, t183, t49 * t182, t191, t49 * t180, t49 ^ 2 + t136; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t148, 0, -t150, t83, t21, -t22, 0, 0, 0, 0, t43, 0, -t41, t83, t83 * t171 - t129, -t83 * t105 - t8 (-t113 * t41 - t117 * t43) * pkin(4) (t113 * t8 - t117 * t129) * pkin(4), 0, t43, 0, t83, t41, 0, t100 * t83 - t4, -t100 * t43 - t96 * t41, t96 * t83 + t3, -t4 * t100 + t3 * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t114, 0, t118, 0, -t114 * t99, -t147, 0, 0, 0, 0, t85, 0, t186, 0, -t46, -t48, t50 (t113 * t48 - t117 * t46) * pkin(4), 0, t85, 0, 0, -t186, 0, -t46, t35, t48, -t46 * t100 + t48 * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t114, 0, t118, 0, -t114 * pkin(9), -t170, 0, 0, 0, 0, t85, 0, t186, 0, -t61, -t65, t50 (t113 * t65 - t117 * t61) * pkin(4), 0, t85, 0, 0, -t186, 0, -t61, t35, t65, -t61 * t100 + t65 * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t171, -0.2e1 * t105, 0 (t113 ^ 2 + t117 ^ 2) * pkin(4) ^ 2, 0, 0, 0, 1, 0, 0, 0.2e1 * t100, 0, 0.2e1 * t96, t100 ^ 2 + t96 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t43, 0, -t41, t83, -t129, -t8, 0, 0, 0, t43, 0, t83, t41, 0, -t4 + t74, -pkin(5) * t43 - t41 * qJ(6), 0.2e1 * t73 + t8, -t4 * pkin(5) + t3 * qJ(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t85, 0, t186, 0, -t46, -t48, 0, 0, 0, t85, 0, 0, -t186, 0, -t46, t53, t48, -t46 * pkin(5) + t48 * qJ(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t85, 0, t186, 0, -t61, -t65, 0, 0, 0, t85, 0, 0, -t186, 0, -t61, t53, t65, -t61 * pkin(5) + t65 * qJ(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t171, -t105, 0, 0, 0, 0, 0, 1, 0, 0, t122 + t171, 0, t121 + t105, t100 * pkin(5) + t96 * qJ(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t122, 0, t121, pkin(5) ^ 2 + qJ(6) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t83, t43, 0, t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t85, 0, t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t85, 0, t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -t100; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t1;
