% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRPRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 18:31
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRPRR6_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR6_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRR6_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 11:05:18
% EndTime: 2019-05-07 11:05:28
% DurationCPUTime: 2.22s
% Computational Cost: add. (3726->202), mult. (7572->391), div. (0->0), fcn. (8662->10), ass. (0->99)
t82 = sin(pkin(11));
t83 = cos(pkin(11));
t86 = sin(qJ(3));
t90 = cos(qJ(3));
t60 = t82 * t86 - t83 * t90;
t62 = t82 * t90 + t83 * t86;
t85 = sin(qJ(5));
t89 = cos(qJ(5));
t39 = t89 * t60 + t85 * t62;
t74 = -t90 * pkin(3) - pkin(2);
t52 = t60 * pkin(4) + t74;
t26 = t39 * pkin(5) + t52;
t123 = 0.2e1 * t26;
t122 = 0.2e1 * t52;
t121 = 0.2e1 * t74;
t87 = sin(qJ(2));
t120 = -0.2e1 * t87;
t91 = cos(qJ(2));
t119 = -0.2e1 * t91;
t118 = 0.2e1 * t91;
t117 = pkin(2) * t90;
t116 = pkin(7) * t86;
t79 = t87 ^ 2;
t115 = t79 * pkin(7);
t114 = t82 * pkin(3);
t113 = t83 * pkin(3);
t84 = sin(qJ(6));
t112 = t84 * pkin(5);
t76 = t87 * pkin(7);
t53 = t62 * t87;
t104 = t90 * t87;
t108 = t86 * t87;
t55 = t83 * t104 - t82 * t108;
t29 = t89 * t53 + t85 * t55;
t100 = qJ(4) * t87;
t66 = -t91 * pkin(2) - t87 * pkin(8) - pkin(1);
t63 = t90 * t66;
t42 = -t90 * t100 + t63 + (-pkin(3) - t116) * t91;
t103 = t90 * t91;
t98 = pkin(7) * t103;
t45 = t98 + (t66 - t100) * t86;
t24 = t83 * t42 - t82 * t45;
t16 = -t91 * pkin(4) - t55 * pkin(9) + t24;
t25 = t82 * t42 + t83 * t45;
t19 = -t53 * pkin(9) + t25;
t9 = t85 * t16 + t89 * t19;
t7 = -t29 * pkin(10) + t9;
t88 = cos(qJ(6));
t111 = t88 * t7;
t110 = t91 * pkin(3);
t109 = t91 * pkin(5);
t107 = t86 * t90;
t106 = t86 * t91;
t73 = pkin(4) + t113;
t58 = t89 * t114 + t85 * t73;
t105 = t88 * t58;
t102 = -qJ(4) - pkin(8);
t65 = pkin(3) * t108 + t76;
t78 = t86 ^ 2;
t80 = t90 ^ 2;
t101 = t78 + t80;
t99 = t87 * t118;
t97 = t86 * t104;
t31 = -t85 * t53 + t89 * t55;
t8 = t89 * t16 - t85 * t19;
t6 = -t31 * pkin(10) - t109 + t8;
t1 = t88 * t6 - t84 * t7;
t67 = t102 * t86;
t68 = t102 * t90;
t46 = t83 * t67 + t82 * t68;
t34 = -t62 * pkin(9) + t46;
t47 = t82 * t67 - t83 * t68;
t35 = -t60 * pkin(9) + t47;
t17 = t89 * t34 - t85 * t35;
t57 = -t85 * t114 + t89 * t73;
t56 = pkin(5) + t57;
t32 = t88 * t56 - t84 * t58;
t43 = t53 * pkin(4) + t65;
t2 = t84 * t6 + t111;
t18 = t85 * t34 + t89 * t35;
t50 = -pkin(7) * t106 + t63;
t51 = t86 * t66 + t98;
t96 = -t50 * t86 + t51 * t90;
t93 = pkin(7) ^ 2;
t81 = t91 ^ 2;
t77 = t88 * pkin(5);
t75 = t79 * t93;
t41 = -t85 * t60 + t89 * t62;
t33 = t84 * t56 + t105;
t23 = -t84 * t39 + t88 * t41;
t21 = t88 * t39 + t84 * t41;
t20 = t29 * pkin(5) + t43;
t14 = -t84 * t29 + t88 * t31;
t12 = t88 * t29 + t84 * t31;
t11 = -t39 * pkin(10) + t18;
t10 = -t41 * pkin(10) + t17;
t4 = t84 * t10 + t88 * t11;
t3 = t88 * t10 - t84 * t11;
t5 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t79, t99, 0, t81, 0, 0, pkin(1) * t118, pkin(1) * t120, 0.2e1 * (t79 + t81) * pkin(7), pkin(1) ^ 2 + t81 * t93 + t75, t80 * t79, -0.2e1 * t79 * t107, t103 * t120, t78 * t79, t86 * t99, t81, 0.2e1 * t86 * t115 - 0.2e1 * t50 * t91, 0.2e1 * t90 * t115 + 0.2e1 * t51 * t91, 0.2e1 * (-t50 * t90 - t51 * t86) * t87, t50 ^ 2 + t51 ^ 2 + t75, t55 ^ 2, -0.2e1 * t55 * t53, t55 * t119, t53 ^ 2, -t53 * t119, t81, -0.2e1 * t24 * t91 + 0.2e1 * t65 * t53, 0.2e1 * t25 * t91 + 0.2e1 * t65 * t55, -0.2e1 * t24 * t55 - 0.2e1 * t25 * t53, t24 ^ 2 + t25 ^ 2 + t65 ^ 2, t31 ^ 2, -0.2e1 * t31 * t29, t31 * t119, t29 ^ 2, t29 * t118, t81, 0.2e1 * t43 * t29 - 0.2e1 * t8 * t91, 0.2e1 * t43 * t31 + 0.2e1 * t9 * t91, -0.2e1 * t9 * t29 - 0.2e1 * t8 * t31, t43 ^ 2 + t8 ^ 2 + t9 ^ 2, t14 ^ 2, -0.2e1 * t14 * t12, t14 * t119, t12 ^ 2, t12 * t118, t81, -0.2e1 * t1 * t91 + 0.2e1 * t20 * t12, 0.2e1 * t20 * t14 + 0.2e1 * t2 * t91, -0.2e1 * t1 * t14 - 0.2e1 * t2 * t12, t1 ^ 2 + t2 ^ 2 + t20 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t87, 0, t91, 0, -t76, -t91 * pkin(7), 0, 0, t97 (-t78 + t80) * t87, -t106, -t97, -t103, 0, -pkin(7) * t104 + (-pkin(2) * t87 + pkin(8) * t91) * t86, pkin(8) * t103 + (t116 - t117) * t87, t96, -pkin(2) * t76 + t96 * pkin(8), t55 * t62, -t62 * t53 - t55 * t60, -t62 * t91, t53 * t60, t60 * t91, 0, -t46 * t91 + t74 * t53 + t65 * t60, t47 * t91 + t74 * t55 + t65 * t62, -t24 * t62 - t25 * t60 - t46 * t55 - t47 * t53, t24 * t46 + t25 * t47 + t65 * t74, t31 * t41, -t41 * t29 - t31 * t39, -t41 * t91, t29 * t39, t39 * t91, 0, -t17 * t91 + t52 * t29 + t43 * t39, t18 * t91 + t52 * t31 + t43 * t41, -t17 * t31 - t18 * t29 - t9 * t39 - t8 * t41, t8 * t17 + t9 * t18 + t43 * t52, t14 * t23, -t23 * t12 - t14 * t21, -t23 * t91, t12 * t21, t21 * t91, 0, t26 * t12 + t20 * t21 - t3 * t91, t26 * t14 + t20 * t23 + t4 * t91, -t1 * t23 - t4 * t12 - t3 * t14 - t2 * t21, t1 * t3 + t2 * t4 + t20 * t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t78, 0.2e1 * t107, 0, t80, 0, 0, 0.2e1 * t117, -0.2e1 * pkin(2) * t86, 0.2e1 * t101 * pkin(8), t101 * pkin(8) ^ 2 + pkin(2) ^ 2, t62 ^ 2, -0.2e1 * t62 * t60, 0, t60 ^ 2, 0, 0, t60 * t121, t62 * t121, -0.2e1 * t46 * t62 - 0.2e1 * t47 * t60, t46 ^ 2 + t47 ^ 2 + t74 ^ 2, t41 ^ 2, -0.2e1 * t41 * t39, 0, t39 ^ 2, 0, 0, t39 * t122, t41 * t122, -0.2e1 * t17 * t41 - 0.2e1 * t18 * t39, t17 ^ 2 + t18 ^ 2 + t52 ^ 2, t23 ^ 2, -0.2e1 * t23 * t21, 0, t21 ^ 2, 0, 0, t21 * t123, t23 * t123, -0.2e1 * t4 * t21 - 0.2e1 * t3 * t23, t26 ^ 2 + t3 ^ 2 + t4 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t104, 0, -t108, -t91, t50, -t51, 0, 0, 0, 0, t55, 0, -t53, -t91, -t83 * t110 + t24, t82 * t110 - t25 (-t53 * t82 - t55 * t83) * pkin(3) (t24 * t83 + t25 * t82) * pkin(3), 0, 0, t31, 0, -t29, -t91, -t57 * t91 + t8, t58 * t91 - t9, -t58 * t29 - t57 * t31, t8 * t57 + t9 * t58, 0, 0, t14, 0, -t12, -t91, -t32 * t91 + t1, t33 * t91 - t2, -t33 * t12 - t32 * t14, t1 * t32 + t2 * t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t86, 0, t90, 0, -t86 * pkin(8), -t90 * pkin(8), 0, 0, 0, 0, t62, 0, -t60, 0, t46, -t47 (-t60 * t82 - t62 * t83) * pkin(3) (t46 * t83 + t47 * t82) * pkin(3), 0, 0, t41, 0, -t39, 0, t17, -t18, -t58 * t39 - t57 * t41, t17 * t57 + t18 * t58, 0, 0, t23, 0, -t21, 0, t3, -t4, -t33 * t21 - t32 * t23, t3 * t32 + t4 * t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t113, -0.2e1 * t114, 0 (t82 ^ 2 + t83 ^ 2) * pkin(3) ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t57, -0.2e1 * t58, 0, t57 ^ 2 + t58 ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t32, -0.2e1 * t33, 0, t32 ^ 2 + t33 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t53, t55, 0, t65, 0, 0, 0, 0, 0, 0, t29, t31, 0, t43, 0, 0, 0, 0, 0, 0, t12, t14, 0, t20; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t60, t62, 0, t74, 0, 0, 0, 0, 0, 0, t39, t41, 0, t52, 0, 0, 0, 0, 0, 0, t21, t23, 0, t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t31, 0, -t29, -t91, t8, -t9, 0, 0, 0, 0, t14, 0, -t12, -t91, -t88 * t109 + t1, -t111 + (-t6 + t109) * t84 (-t12 * t84 - t14 * t88) * pkin(5) (t1 * t88 + t2 * t84) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t41, 0, -t39, 0, t17, -t18, 0, 0, 0, 0, t23, 0, -t21, 0, t3, -t4 (-t21 * t84 - t23 * t88) * pkin(5) (t3 * t88 + t4 * t84) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t57, -t58, 0, 0, 0, 0, 0, 0, 0, 1, t32 + t77, -t105 + (-pkin(5) - t56) * t84, 0 (t32 * t88 + t33 * t84) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t77, -0.2e1 * t112, 0 (t84 ^ 2 + t88 ^ 2) * pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t14, 0, -t12, -t91, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t23, 0, -t21, 0, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t32, -t33, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t77, -t112, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t5;
