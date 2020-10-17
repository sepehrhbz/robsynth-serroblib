% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRPPRR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,d6,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 09:37
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPPRR10_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR10_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR10_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 11:49:40
% EndTime: 2019-05-06 11:49:46
% DurationCPUTime: 1.83s
% Computational Cost: add. (1680->140), mult. (3017->252), div. (0->0), fcn. (3351->8), ass. (0->101)
t74 = sin(qJ(6));
t77 = cos(qJ(6));
t71 = sin(pkin(10));
t72 = cos(pkin(10));
t75 = sin(qJ(5));
t78 = cos(qJ(5));
t42 = t78 * t71 + t75 * t72;
t44 = -t75 * t71 + t78 * t72;
t84 = -t74 * t42 + t77 * t44;
t85 = t77 * t42 + t74 * t44;
t128 = (t74 * t85 + t77 * t84) * pkin(5);
t76 = sin(qJ(2));
t69 = t76 ^ 2;
t79 = cos(qJ(2));
t70 = t79 ^ 2;
t127 = t69 + t70;
t126 = t84 ^ 2;
t125 = t85 ^ 2;
t31 = t44 * t79;
t32 = t42 * t79;
t14 = t77 * t31 - t74 * t32;
t124 = t14 * t85;
t16 = -t74 * t31 - t77 * t32;
t123 = t16 * t84;
t122 = t84 * t76;
t121 = t85 * t76;
t115 = t42 ^ 2;
t40 = t44 ^ 2;
t120 = t40 + t115;
t119 = t125 + t126;
t107 = t76 * pkin(5);
t73 = -pkin(2) - qJ(4);
t89 = -t76 * qJ(3) - pkin(1);
t39 = t73 * t79 + t89;
t62 = t76 * pkin(7);
t51 = t76 * pkin(3) + t62;
t46 = t72 * t51;
t17 = t76 * pkin(4) + t46 + (pkin(8) * t79 - t39) * t71;
t26 = t72 * t39 + t71 * t51;
t97 = t72 * t79;
t18 = -pkin(8) * t97 + t26;
t8 = t78 * t17 - t75 * t18;
t4 = t32 * pkin(9) + t107 + t8;
t9 = t75 * t17 + t78 * t18;
t5 = -t31 * pkin(9) + t9;
t1 = t77 * t4 - t74 * t5;
t105 = t77 * t5;
t2 = t74 * t4 + t105;
t118 = t1 * t84 + t2 * t85;
t104 = -pkin(8) + t73;
t47 = t104 * t71;
t48 = t104 * t72;
t27 = -t75 * t47 + t78 * t48;
t12 = -t44 * pkin(9) + t27;
t28 = t78 * t47 + t75 * t48;
t13 = -t42 * pkin(9) + t28;
t6 = t77 * t12 - t74 * t13;
t7 = t74 * t12 + t77 * t13;
t117 = t6 * t84 + t7 * t85;
t57 = t71 * pkin(4) + qJ(3);
t30 = t42 * pkin(5) + t57;
t114 = 0.2e1 * t30;
t113 = 0.2e1 * t57;
t112 = -0.2e1 * t76;
t111 = 0.2e1 * t76;
t110 = 0.2e1 * t79;
t109 = 0.2e1 * qJ(3);
t108 = t74 * pkin(5);
t106 = t77 * pkin(5);
t103 = t42 * t31;
t102 = t42 * t76;
t101 = t44 * t32;
t100 = t71 * t76;
t99 = t71 * t79;
t98 = t72 * t71;
t95 = t76 * t79;
t93 = t127 * pkin(7) ^ 2;
t64 = t79 * pkin(7);
t52 = t79 * pkin(3) + t64;
t66 = t71 ^ 2;
t67 = t72 ^ 2;
t54 = t66 + t67;
t92 = t79 * qJ(3);
t91 = -0.2e1 * t95;
t90 = t71 * t97;
t37 = pkin(4) * t97 + t52;
t88 = t9 * t42 + t8 * t44;
t87 = -t76 * pkin(2) + t92;
t25 = -t71 * t39 + t46;
t10 = t25 * t72 + t26 * t71;
t86 = t27 * t44 + t28 * t42;
t83 = t73 * t76 + t92;
t80 = qJ(3) ^ 2;
t59 = t72 * t76;
t56 = 0.2e1 * t95;
t50 = -t79 * pkin(2) + t89;
t49 = 0.2e1 * t127 * pkin(7);
t41 = t54 * t73;
t36 = t44 * t76;
t19 = t31 * pkin(5) + t37;
t3 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t69, t56, 0, t70, 0, 0, pkin(1) * t110, pkin(1) * t112, t49, pkin(1) ^ 2 + t93, 0, 0, 0, t69, t56, t70, t49, t50 * t110, t50 * t112, t50 ^ 2 + t93, t66 * t70, 0.2e1 * t70 * t98, t71 * t91, t67 * t70, t72 * t91, t69, 0.2e1 * t25 * t76 + 0.2e1 * t52 * t97, -0.2e1 * t26 * t76 - 0.2e1 * t52 * t99 (t25 * t71 - t26 * t72) * t110, t25 ^ 2 + t26 ^ 2 + t52 ^ 2, t32 ^ 2, 0.2e1 * t32 * t31, -t32 * t111, t31 ^ 2, -t31 * t111, t69, 0.2e1 * t37 * t31 + 0.2e1 * t8 * t76, -0.2e1 * t37 * t32 - 0.2e1 * t9 * t76, -0.2e1 * t9 * t31 + 0.2e1 * t8 * t32, t37 ^ 2 + t8 ^ 2 + t9 ^ 2, t16 ^ 2, -0.2e1 * t16 * t14, t16 * t111, t14 ^ 2, t14 * t112, t69, 0.2e1 * t1 * t76 + 0.2e1 * t19 * t14, 0.2e1 * t19 * t16 - 0.2e1 * t2 * t76, -0.2e1 * t1 * t16 - 0.2e1 * t2 * t14, t1 ^ 2 + t19 ^ 2 + t2 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, 0, t79, 0, -t62, -t64, 0, 0, 0, -t76, -t79, 0, 0, 0, t87, t62, t64, t87 * pkin(7), -t90 (t66 - t67) * t79, t59, t90, -t100, 0, t52 * t71 + t83 * t72, t52 * t72 - t83 * t71, -t10, t52 * qJ(3) + t10 * t73, -t101, -t44 * t31 + t32 * t42, t36, t103, -t102, 0, t27 * t76 + t57 * t31 + t37 * t42, -t28 * t76 - t57 * t32 + t37 * t44, t27 * t32 - t28 * t31 - t88, t8 * t27 + t9 * t28 + t37 * t57, t123, -t14 * t84 - t16 * t85, t122, t124, -t121, 0, t30 * t14 + t19 * t85 + t6 * t76, t30 * t16 + t19 * t84 - t7 * t76, -t7 * t14 - t6 * t16 - t118, t1 * t6 + t19 * t30 + t2 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -0.2e1 * pkin(2), t109, pkin(2) ^ 2 + t80, t67, -0.2e1 * t98, 0, t66, 0, 0, t71 * t109, t72 * t109, -0.2e1 * t41, t54 * t73 ^ 2 + t80, t40, -0.2e1 * t44 * t42, 0, t115, 0, 0, t42 * t113, t44 * t113, -0.2e1 * t86, t27 ^ 2 + t28 ^ 2 + t57 ^ 2, t126, -0.2e1 * t84 * t85, 0, t125, 0, 0, t85 * t114, t84 * t114, -0.2e1 * t117, t30 ^ 2 + t6 ^ 2 + t7 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, 0, 0, t62, 0, 0, 0, 0, 0, 0, t59, -t100, 0, t10, 0, 0, 0, 0, 0, 0, t36, -t102, t101 - t103, t88, 0, 0, 0, 0, 0, 0, t122, -t121, -t123 - t124, t118; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(2), 0, 0, 0, 0, 0, 0, 0, 0, -t54, t41, 0, 0, 0, 0, 0, 0, 0, 0, -t120, t86, 0, 0, 0, 0, 0, 0, 0, 0, -t119, t117; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t54, 0, 0, 0, 0, 0, 0, 0, 0, 0, t120, 0, 0, 0, 0, 0, 0, 0, 0, 0, t119; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t97, -t99, 0, t52, 0, 0, 0, 0, 0, 0, t31, -t32, 0, t37, 0, 0, 0, 0, 0, 0, t14, t16, 0, t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71, t72, 0, qJ(3), 0, 0, 0, 0, 0, 0, t42, t44, 0, t57, 0, 0, 0, 0, 0, 0, t85, t84, 0, t30; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t32, 0, -t31, t76, t8, -t9, 0, 0, 0, 0, t16, 0, -t14, t76, t76 * t106 + t1, -t105 + (-t4 - t107) * t74 (-t14 * t74 - t16 * t77) * pkin(5) (t1 * t77 + t2 * t74) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, 0, -t42, 0, t27, -t28, 0, 0, 0, 0, t84, 0, -t85, 0, t6, -t7, -t128 (t6 * t77 + t7 * t74) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, -t42, 0, 0, 0, 0, 0, 0, 0, 0, t84, -t85, 0, t128; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t106, -0.2e1 * t108, 0 (t74 ^ 2 + t77 ^ 2) * pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t16, 0, -t14, t76, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t84, 0, -t85, 0, t6, -t7, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t84, -t85, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t106, -t108, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t3;
