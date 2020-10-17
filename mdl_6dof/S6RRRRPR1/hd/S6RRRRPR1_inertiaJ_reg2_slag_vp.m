% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRRPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 21:56
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRRPR1_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR1_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR1_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 19:29:13
% EndTime: 2019-05-07 19:29:20
% DurationCPUTime: 2.28s
% Computational Cost: add. (3486->164), mult. (6476->293), div. (0->0), fcn. (7874->10), ass. (0->102)
t73 = sin(qJ(6));
t67 = t73 ^ 2;
t77 = cos(qJ(6));
t69 = t77 ^ 2;
t105 = t67 + t69;
t74 = sin(qJ(4));
t114 = t74 * pkin(3);
t72 = cos(pkin(11));
t102 = t72 * t114;
t78 = cos(qJ(4));
t65 = t78 * pkin(3);
t61 = t65 + pkin(4);
t71 = sin(pkin(11));
t45 = t71 * t61 + t102;
t42 = pkin(10) + t45;
t107 = t105 * t42;
t115 = t71 * pkin(4);
t58 = pkin(10) + t115;
t130 = t105 * t58;
t117 = -pkin(8) - pkin(7);
t79 = cos(qJ(3));
t125 = t79 * t117;
t75 = sin(qJ(3));
t126 = t75 * t117;
t129 = t125 * t78 - t126 * t74;
t128 = t125 * t74 + t126 * t78;
t76 = sin(qJ(2));
t80 = cos(qJ(2));
t48 = t75 * t76 - t79 * t80;
t50 = t75 * t80 + t79 * t76;
t31 = -t78 * t48 - t74 * t50;
t86 = t74 * t48 - t78 * t50;
t20 = t71 * t31 - t72 * t86;
t127 = -0.2e1 * t20;
t95 = t117 * t76;
t96 = t117 * t80;
t33 = t75 * t96 + t79 * t95;
t34 = t75 * t95 - t79 * t96;
t11 = t78 * (-t48 * pkin(9) + t34) + t74 * (-t50 * pkin(9) + t33) + t31 * qJ(5);
t12 = t86 * pkin(9) + t128 * t80 + t129 * t76;
t85 = qJ(5) * t86 + t12;
t5 = t71 * t11 - t72 * t85;
t124 = t5 ^ 2;
t18 = -t72 * t31 - t71 * t86;
t123 = t18 ^ 2;
t63 = -t80 * pkin(2) - pkin(1);
t39 = t48 * pkin(3) + t63;
t21 = -t31 * pkin(4) + t39;
t122 = 0.2e1 * t21;
t121 = -0.2e1 * t86;
t120 = 0.2e1 * t63;
t119 = -0.2e1 * t77;
t118 = 0.2e1 * t80;
t116 = t5 * t77;
t113 = t75 * pkin(2);
t101 = t78 * t113;
t66 = t79 * pkin(2);
t62 = t66 + pkin(3);
t47 = t74 * t62 + t101;
t112 = t72 * t47;
t15 = t73 * t18;
t111 = t73 * t20;
t110 = t73 * t77;
t109 = t77 * t20;
t46 = -t74 * t113 + t78 * t62;
t43 = pkin(4) + t46;
t29 = t71 * t43 + t112;
t27 = pkin(10) + t29;
t108 = t105 * t27;
t68 = t76 ^ 2;
t70 = t80 ^ 2;
t104 = t68 + t70;
t103 = t18 * t127;
t94 = -t47 - t114;
t38 = t72 * t43;
t92 = t71 * t47 - t38;
t52 = t72 * t61;
t91 = t71 * t114 - t52;
t7 = t72 * t11 + t71 * t85;
t8 = t18 * pkin(5) - t20 * pkin(10) + t21;
t2 = -t73 * t7 + t77 * t8;
t3 = t77 * t7 + t73 * t8;
t90 = t2 * t77 + t3 * t73;
t1 = -t2 * t73 + t3 * t77;
t26 = -pkin(5) + t92;
t89 = -t18 * t27 + t20 * t26;
t41 = -pkin(5) + t91;
t88 = -t18 * t42 + t20 * t41;
t64 = t72 * pkin(4);
t59 = -t64 - pkin(5);
t87 = -t18 * t58 + t20 * t59;
t57 = 0.2e1 * t110;
t54 = t59 * t73;
t37 = t41 * t73;
t24 = t26 * t73;
t17 = t20 ^ 2;
t16 = t77 * t18;
t14 = t73 * t109;
t13 = t31 * pkin(9) + t128 * t76 - t129 * t80;
t9 = (-t67 + t69) * t20;
t4 = t5 * t73;
t6 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t68, t76 * t118, 0, t70, 0, 0, pkin(1) * t118, -0.2e1 * pkin(1) * t76, 0.2e1 * t104 * pkin(7), t104 * pkin(7) ^ 2 + pkin(1) ^ 2, t50 ^ 2, -0.2e1 * t50 * t48, 0, t48 ^ 2, 0, 0, t48 * t120, t50 * t120, -0.2e1 * t33 * t50 - 0.2e1 * t34 * t48, t33 ^ 2 + t34 ^ 2 + t63 ^ 2, t86 ^ 2, t31 * t121, 0, t31 ^ 2, 0, 0, -0.2e1 * t39 * t31, t39 * t121, 0.2e1 * t12 * t86 + 0.2e1 * t13 * t31, t12 ^ 2 + t13 ^ 2 + t39 ^ 2, t17, t103, 0, t123, 0, 0, t18 * t122, t20 * t122, -0.2e1 * t7 * t18 + 0.2e1 * t5 * t20, t21 ^ 2 + t7 ^ 2 + t124, t69 * t17, -0.2e1 * t17 * t110, 0.2e1 * t18 * t109, t67 * t17, t73 * t103, t123, 0.2e1 * t5 * t111 + 0.2e1 * t2 * t18, 0.2e1 * t5 * t109 - 0.2e1 * t3 * t18, t90 * t127, t2 ^ 2 + t3 ^ 2 + t124; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, 0, t80, 0, -t76 * pkin(7), -t80 * pkin(7), 0, 0, 0, 0, t50, 0, -t48, 0, t33, -t34 (-t48 * t75 - t50 * t79) * pkin(2) (t33 * t79 + t34 * t75) * pkin(2), 0, 0, -t86, 0, t31, 0, t12, -t13, t47 * t31 + t46 * t86, t12 * t46 + t13 * t47, 0, 0, t20, 0, -t18, 0, -t5, -t7, -t29 * t18 + t20 * t92, t7 * t29 + t5 * t92, t14, t9, t15, -t14, t16, 0, t89 * t73 - t116, t89 * t77 + t4, t1, t1 * t27 + t5 * t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t66, -0.2e1 * t113, 0 (t75 ^ 2 + t79 ^ 2) * pkin(2) ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t46, -0.2e1 * t47, 0, t46 ^ 2 + t47 ^ 2, 0, 0, 0, 0, 0, 1, -0.2e1 * t92, -0.2e1 * t29, 0, t29 ^ 2 + t92 ^ 2, t67, t57, 0, t69, 0, 0, t26 * t119, 0.2e1 * t24, 0.2e1 * t108, t105 * t27 ^ 2 + t26 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50, 0, -t48, 0, t33, -t34, 0, 0, 0, 0, -t86, 0, t31, 0, t12, -t13 (t31 * t74 + t78 * t86) * pkin(3) (t12 * t78 + t13 * t74) * pkin(3), 0, 0, t20, 0, -t18, 0, -t5, -t7, -t45 * t18 + t20 * t91, t7 * t45 + t5 * t91, t14, t9, t15, -t14, t16, 0, t73 * t88 - t116, t77 * t88 + t4, t1, t1 * t42 + t5 * t41; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t66, -t113, 0, 0, 0, 0, 0, 0, 0, 1, t46 + t65, -t101 + (-pkin(3) - t62) * t74, 0 (t46 * t78 + t47 * t74) * pkin(3), 0, 0, 0, 0, 0, 1, t94 * t71 + t38 + t52, t94 * t72 + (-t43 - t61) * t71, 0, t29 * t45 + t91 * t92, t67, t57, 0, t69, 0, 0 (-t26 - t41) * t77, t37 + t24, t107 + t108, t27 * t107 + t26 * t41; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t65, -0.2e1 * t114, 0 (t74 ^ 2 + t78 ^ 2) * pkin(3) ^ 2, 0, 0, 0, 0, 0, 1, -0.2e1 * t91, -0.2e1 * t45, 0, t45 ^ 2 + t91 ^ 2, t67, t57, 0, t69, 0, 0, t41 * t119, 0.2e1 * t37, 0.2e1 * t107, t105 * t42 ^ 2 + t41 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t86, 0, t31, 0, t12, -t13, 0, 0, 0, 0, t20, 0, -t18, 0, -t5, -t7 (-t18 * t71 - t20 * t72) * pkin(4) (-t5 * t72 + t7 * t71) * pkin(4), t14, t9, t15, -t14, t16, 0, t73 * t87 - t116, t77 * t87 + t4, t1, t1 * t58 + t5 * t59; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t46, -t47, 0, 0, 0, 0, 0, 0, 0, 1, t64 - t92, -t112 + (-pkin(4) - t43) * t71, 0 (t29 * t71 - t72 * t92) * pkin(4), t67, t57, 0, t69, 0, 0 (-t26 - t59) * t77, t54 + t24, t130 + t108, t130 * t27 + t26 * t59; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t65, -t114, 0, 0, 0, 0, 0, 0, 0, 1, t64 - t91, -t102 + (-pkin(4) - t61) * t71, 0 (t45 * t71 - t72 * t91) * pkin(4), t67, t57, 0, t69, 0, 0 (-t41 - t59) * t77, t54 + t37, t130 + t107, t130 * t42 + t41 * t59; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t64, -0.2e1 * t115, 0 (t71 ^ 2 + t72 ^ 2) * pkin(4) ^ 2, t67, t57, 0, t69, 0, 0, t59 * t119, 0.2e1 * t54, 0.2e1 * t130, t105 * t58 ^ 2 + t59 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18, t20, 0, t21, 0, 0, 0, 0, 0, 0, t16, -t15, -t105 * t20, t90; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t105; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t109, 0, -t111, t18, t2, -t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, 0, t77, 0, -t73 * t27, -t77 * t27, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, 0, t77, 0, -t73 * t42, -t77 * t42, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, 0, t77, 0, -t73 * t58, -t77 * t58, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t77, -t73, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t6;
