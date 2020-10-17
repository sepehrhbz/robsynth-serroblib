% Calculate inertial parameters regressor of joint inertia matrix for
% S6PRRPRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,d6,theta1]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 22:15
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6PRRPRR4_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR4_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPRR4_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 05:10:49
% EndTime: 2019-05-05 05:10:54
% DurationCPUTime: 1.60s
% Computational Cost: add. (799->136), mult. (1609->223), div. (0->0), fcn. (1871->10), ass. (0->93)
t59 = cos(pkin(6));
t62 = sin(qJ(3));
t66 = cos(qJ(3));
t58 = sin(pkin(6));
t63 = sin(qJ(2));
t93 = t58 * t63;
t20 = -t59 * t66 + t62 * t93;
t22 = t59 * t62 + t66 * t93;
t76 = t20 * t62 + t22 * t66;
t54 = t62 ^ 2;
t57 = t66 ^ 2;
t114 = t54 + t57;
t60 = sin(qJ(6));
t52 = t60 ^ 2;
t64 = cos(qJ(6));
t55 = t64 ^ 2;
t82 = t52 + t55;
t113 = t82 * pkin(10);
t104 = -pkin(3) - pkin(4);
t61 = sin(qJ(5));
t65 = cos(qJ(5));
t36 = t65 * qJ(4) + t61 * t104;
t32 = -pkin(10) + t36;
t77 = t82 * t32;
t8 = -t20 * t65 + t22 * t61;
t112 = t8 ^ 2;
t48 = t66 * pkin(8);
t38 = -t66 * pkin(9) + t48;
t78 = (pkin(8) - pkin(9)) * t62;
t12 = t61 * t38 - t65 * t78;
t111 = t12 ^ 2;
t25 = t61 * t62 + t65 * t66;
t110 = t25 ^ 2;
t109 = 0.2e1 * t25;
t28 = -t61 * t66 + t65 * t62;
t108 = 0.2e1 * t28;
t107 = -0.2e1 * t60;
t106 = -0.2e1 * t62;
t105 = 0.2e1 * t64;
t103 = t62 * pkin(8);
t102 = t8 * t12;
t101 = t8 * t60;
t100 = t8 * t64;
t99 = t8 * t65;
t34 = t61 * qJ(4) - t65 * t104;
t31 = pkin(5) + t34;
t98 = pkin(5) + t31;
t97 = t12 * t60;
t96 = t12 * t64;
t95 = t12 * t65;
t67 = cos(qJ(2));
t92 = t58 * t67;
t91 = t60 * t25;
t90 = t60 * t28;
t89 = t60 * t64;
t88 = t62 * t66;
t87 = t64 * t25;
t86 = t64 * t28;
t85 = t65 * t60;
t84 = t65 * t64;
t83 = t114 * pkin(8) ^ 2;
t81 = -0.2e1 * t28 * t25;
t80 = -0.2e1 * t89;
t37 = -t66 * pkin(3) - t62 * qJ(4) - pkin(2);
t79 = t62 * t92;
t27 = t82 * t61;
t51 = t58 ^ 2;
t41 = t51 * t67 ^ 2;
t75 = t20 ^ 2 + t22 ^ 2 + t41;
t23 = t66 * pkin(4) - t37;
t74 = t76 * pkin(8);
t73 = -pkin(5) * t28 - pkin(10) * t25;
t14 = t65 * t38 + t61 * t78;
t7 = t25 * pkin(5) - t28 * pkin(10) + t23;
t3 = -t60 * t14 + t64 * t7;
t4 = t64 * t14 + t60 * t7;
t1 = -t3 * t60 + t4 * t64;
t10 = t20 * t61 + t22 * t65;
t5 = -t10 * t60 + t64 * t92;
t6 = t10 * t64 + t60 * t92;
t2 = -t5 * t60 + t6 * t64;
t72 = -t62 * pkin(3) + t66 * qJ(4);
t71 = -t25 * t32 + t28 * t31;
t70 = -t61 * t25 - t65 * t28;
t56 = t65 ^ 2;
t53 = t61 ^ 2;
t40 = 0.2e1 * t89;
t39 = t66 * t92;
t33 = 0.2e1 * t114 * pkin(8);
t24 = t28 ^ 2;
t18 = t60 * t86;
t11 = (t52 - t55) * t28;
t9 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t51 * t63 ^ 2 + t59 ^ 2 + t41, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10 ^ 2 + t112 + t41, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5 ^ 2 + t6 ^ 2 + t112; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t92, -t93, 0, 0, 0, 0, 0, 0, 0, 0, t39, -t79, t76, pkin(2) * t92 + t74, 0, 0, 0, 0, 0, 0, t39, t76, t79, -t37 * t92 + t74, 0, 0, 0, 0, 0, 0, t25 * t92, t28 * t92, -t10 * t25 + t8 * t28, t10 * t14 + t23 * t92 + t102, 0, 0, 0, 0, 0, 0, t5 * t25 + t8 * t90, -t6 * t25 + t8 * t86 (-t5 * t64 - t6 * t60) * t28, t5 * t3 + t6 * t4 + t102; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t54, 0.2e1 * t88, 0, t57, 0, 0, 0.2e1 * pkin(2) * t66, pkin(2) * t106, t33, pkin(2) ^ 2 + t83, t54, 0, -0.2e1 * t88, 0, 0, t57, -0.2e1 * t37 * t66, t33, t37 * t106, t37 ^ 2 + t83, t24, t81, 0, t110, 0, 0, t23 * t109, t23 * t108, 0.2e1 * t12 * t28 - 0.2e1 * t14 * t25, t14 ^ 2 + t23 ^ 2 + t111, t55 * t24, t24 * t80, t86 * t109, t52 * t24, t60 * t81, t110, 0.2e1 * t12 * t90 + 0.2e1 * t3 * t25, 0.2e1 * t12 * t86 - 0.2e1 * t4 * t25 (-t3 * t64 - t4 * t60) * t108, t3 ^ 2 + t4 ^ 2 + t111; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t20, -t22, 0, 0, 0, 0, 0, 0, 0, 0, -t20, 0, t22, -t20 * pkin(3) + t22 * qJ(4), 0, 0, 0, 0, 0, 0, t8, t10, 0, t10 * t36 + t8 * t34, 0, 0, 0, 0, 0, 0, t100, -t101, -t2, t2 * t32 + t8 * t31; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62, 0, t66, 0, -t103, -t48, 0, 0, 0, t62, 0, 0, -t66, 0, -t103, t72, t48, t72 * pkin(8), 0, 0, -t28, 0, t25, 0, t12, t14, -t36 * t25 + t34 * t28, t12 * t34 + t14 * t36, -t18, t11, -t91, t18, -t87, 0, t60 * t71 + t96, t64 * t71 - t97, -t1, t1 * t32 + t12 * t31; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.2e1 * pkin(3), 0, 0.2e1 * qJ(4), pkin(3) ^ 2 + qJ(4) ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t34, 0.2e1 * t36, 0, t34 ^ 2 + t36 ^ 2, t52, t40, 0, t55, 0, 0, t31 * t105, t31 * t107, -0.2e1 * t77, t82 * t32 ^ 2 + t31 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t20, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10 * t61 - t99, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2 * t61 - t99; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62, 0, t103, 0, 0, 0, 0, 0, 0, 0, 0, t70, t14 * t61 - t95, 0, 0, 0, 0, 0, 0, t70 * t60, t70 * t64, 0, t1 * t61 - t95; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -pkin(3), 0, 0, 0, 0, 0, 0, -t65, t61, 0, -t34 * t65 + t36 * t61, 0, 0, 0, 0, 0, 0, -t84, t85, -t27, t32 * t27 - t31 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t53 + t56, 0, 0, 0, 0, 0, 0, 0, 0, 0, t82 * t53 + t56; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t8, -t10, 0, 0, 0, 0, 0, 0, 0, 0, -t100, t101, t2, -t8 * pkin(5) + pkin(10) * t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t28, 0, -t25, 0, -t12, -t14, 0, 0, t18, -t11, t91, -t18, t87, 0, t60 * t73 - t96, t64 * t73 + t97, t1, -t12 * pkin(5) + pkin(10) * t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -t34, -t36, 0, 0, -t52, t80, 0, -t55, 0, 0, -t98 * t64, t98 * t60, t77 - t113, -t31 * pkin(5) + pkin(10) * t77; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t65, -t61, 0, 0, 0, 0, 0, 0, 0, 0, t84, -t85, t27, t65 * pkin(5) + pkin(10) * t27; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t52, t40, 0, t55, 0, 0, pkin(5) * t105, pkin(5) * t107, 0.2e1 * t113, t82 * pkin(10) ^ 2 + pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5, -t6, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t86, 0, -t90, t25, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t60, 0, -t64, 0, -t60 * t32, -t64 * t32, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t60 * t61, -t64 * t61, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t60, 0, t64, 0, -t60 * pkin(10), -t64 * pkin(10), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t9;
