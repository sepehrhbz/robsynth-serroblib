% Calculate inertial parameters regressor of joint inertia matrix for
% S6RPRRPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta2,theta5]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 05:18
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RPRRPR6_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR6_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRPR6_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 22:50:40
% EndTime: 2019-05-05 22:50:46
% DurationCPUTime: 1.72s
% Computational Cost: add. (2692->157), mult. (5244->303), div. (0->0), fcn. (6336->10), ass. (0->95)
t107 = cos(qJ(3));
t77 = sin(pkin(10));
t96 = pkin(7) + qJ(2);
t63 = t96 * t77;
t79 = cos(pkin(10));
t64 = t96 * t79;
t82 = sin(qJ(3));
t38 = t107 * t63 + t82 * t64;
t116 = t38 ^ 2;
t58 = -t107 * t79 + t82 * t77;
t52 = t58 ^ 2;
t76 = sin(pkin(11));
t78 = cos(pkin(11));
t81 = sin(qJ(4));
t83 = cos(qJ(4));
t56 = t76 * t81 - t78 * t83;
t71 = -t83 * pkin(4) - pkin(3);
t44 = t56 * pkin(5) + t71;
t115 = 0.2e1 * t44;
t114 = -0.2e1 * t58;
t113 = 0.2e1 * t58;
t70 = -t79 * pkin(2) - pkin(1);
t112 = 0.2e1 * t70;
t111 = 0.2e1 * t71;
t110 = 0.2e1 * t79;
t109 = t76 * pkin(4);
t108 = t78 * pkin(4);
t61 = t107 * t77 + t82 * t79;
t32 = t58 * pkin(3) - t61 * pkin(8) + t70;
t40 = t107 * t64 - t82 * t63;
t20 = t83 * t32 - t81 * t40;
t92 = qJ(5) * t61;
t11 = t58 * pkin(4) - t83 * t92 + t20;
t98 = t83 * t40;
t15 = t98 + (t32 - t92) * t81;
t7 = t76 * t11 + t78 * t15;
t106 = cos(qJ(6));
t60 = t76 * t83 + t78 * t81;
t28 = t60 * t61;
t100 = t81 * t61;
t97 = t83 * t61;
t30 = -t100 * t76 + t78 * t97;
t80 = sin(qJ(6));
t18 = t106 * t30 - t80 * t28;
t35 = t106 * t56 + t80 * t60;
t105 = t18 * t35;
t104 = t30 * t56;
t37 = t106 * t60 - t80 * t56;
t103 = t37 * t58;
t102 = t60 * t58;
t101 = t81 * t58;
t99 = t81 * t83;
t95 = -qJ(5) - pkin(8);
t72 = t77 ^ 2;
t73 = t79 ^ 2;
t94 = t72 + t73;
t74 = t81 ^ 2;
t75 = t83 ^ 2;
t93 = t74 + t75;
t91 = t61 * t114;
t90 = t81 * t97;
t6 = t78 * t11 - t76 * t15;
t4 = t58 * pkin(5) - t30 * pkin(9) + t6;
t5 = -t28 * pkin(9) + t7;
t1 = t106 * t4 - t80 * t5;
t65 = t95 * t81;
t66 = t95 * t83;
t42 = t78 * t65 + t76 * t66;
t24 = pkin(4) * t100 + t38;
t89 = -pkin(3) * t61 - pkin(8) * t58;
t21 = t81 * t32 + t98;
t88 = t20 * t83 + t21 * t81;
t87 = -t20 * t81 + t21 * t83;
t43 = t76 * t65 - t78 * t66;
t2 = t106 * t5 + t80 * t4;
t69 = pkin(5) + t108;
t54 = t61 ^ 2;
t53 = t60 ^ 2;
t51 = t56 ^ 2;
t50 = t83 * t58;
t48 = t106 * t109 + t80 * t69;
t47 = t106 * t69 - t109 * t80;
t41 = t56 * t58;
t34 = t37 ^ 2;
t33 = t35 ^ 2;
t27 = -t56 * pkin(9) + t43;
t26 = -t60 * pkin(9) + t42;
t23 = t35 * t58;
t22 = t60 * t28;
t19 = t28 * pkin(5) + t24;
t16 = t106 * t28 + t80 * t30;
t14 = t106 * t27 + t80 * t26;
t13 = t106 * t26 - t80 * t27;
t8 = t37 * t16;
t3 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t72, t77 * t110, 0, t73, 0, 0, pkin(1) * t110, -0.2e1 * pkin(1) * t77, 0.2e1 * t94 * qJ(2), qJ(2) ^ 2 * t94 + pkin(1) ^ 2, t54, t91, 0, t52, 0, 0, t58 * t112, t61 * t112, 0.2e1 * t38 * t61 - 0.2e1 * t40 * t58, t40 ^ 2 + t70 ^ 2 + t116, t75 * t54, -0.2e1 * t54 * t99, t97 * t113, t74 * t54, t81 * t91, t52, 0.2e1 * t100 * t38 + 0.2e1 * t20 * t58, -0.2e1 * t21 * t58 + 0.2e1 * t38 * t97, -0.2e1 * t88 * t61, t20 ^ 2 + t21 ^ 2 + t116, t30 ^ 2, -0.2e1 * t30 * t28, t30 * t113, t28 ^ 2, -t28 * t113, t52, 0.2e1 * t24 * t28 + 0.2e1 * t6 * t58, 0.2e1 * t24 * t30 - 0.2e1 * t7 * t58, -0.2e1 * t7 * t28 - 0.2e1 * t6 * t30, t24 ^ 2 + t6 ^ 2 + t7 ^ 2, t18 ^ 2, -0.2e1 * t18 * t16, t18 * t113, t16 ^ 2, t16 * t114, t52, 0.2e1 * t1 * t58 + 0.2e1 * t19 * t16, 0.2e1 * t19 * t18 - 0.2e1 * t2 * t58, -0.2e1 * t1 * t18 - 0.2e1 * t2 * t16, t1 ^ 2 + t19 ^ 2 + t2 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t79, t77, 0, -pkin(1), 0, 0, 0, 0, 0, 0, t58, t61, 0, t70, 0, 0, 0, 0, 0, 0, t50, -t101, -t93 * t61, t88, 0, 0, 0, 0, 0, 0, -t41, -t102, -t22 + t104, -t6 * t56 + t7 * t60, 0, 0, 0, 0, 0, 0, -t23, -t103, -t8 + t105, -t1 * t35 + t2 * t37; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t93, 0, 0, 0, 0, 0, 0, 0, 0, 0, t53 + t51, 0, 0, 0, 0, 0, 0, 0, 0, 0, t34 + t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61, 0, -t58, 0, -t38, -t40, 0, 0, t90 (-t74 + t75) * t61, t101, -t90, t50, 0, -t38 * t83 + t81 * t89, t38 * t81 + t83 * t89, t87, -t38 * pkin(3) + pkin(8) * t87, t30 * t60, -t22 - t104, t102, t28 * t56, -t41, 0, t24 * t56 + t71 * t28 + t42 * t58, t24 * t60 + t71 * t30 - t43 * t58, -t43 * t28 - t42 * t30 - t7 * t56 - t6 * t60, t24 * t71 + t6 * t42 + t7 * t43, t18 * t37, -t8 - t105, t103, t16 * t35, -t23, 0, t13 * t58 + t44 * t16 + t19 * t35, -t14 * t58 + t44 * t18 + t19 * t37, -t1 * t37 - t13 * t18 - t14 * t16 - t2 * t35, t1 * t13 + t2 * t14 + t19 * t44; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t56 * t42 + t60 * t43, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t35 * t13 + t37 * t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t74, 0.2e1 * t99, 0, t75, 0, 0, 0.2e1 * pkin(3) * t83, -0.2e1 * pkin(3) * t81, 0.2e1 * t93 * pkin(8), pkin(8) ^ 2 * t93 + pkin(3) ^ 2, t53, -0.2e1 * t60 * t56, 0, t51, 0, 0, t56 * t111, t60 * t111, -0.2e1 * t42 * t60 - 0.2e1 * t43 * t56, t42 ^ 2 + t43 ^ 2 + t71 ^ 2, t34, -0.2e1 * t37 * t35, 0, t33, 0, 0, t35 * t115, t37 * t115, -0.2e1 * t13 * t37 - 0.2e1 * t14 * t35, t13 ^ 2 + t14 ^ 2 + t44 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t97, 0, -t100, t58, t20, -t21, 0, 0, 0, 0, t30, 0, -t28, t58, t108 * t58 + t6, -t109 * t58 - t7 (-t28 * t76 - t30 * t78) * pkin(4) (t6 * t78 + t7 * t76) * pkin(4), 0, 0, t18, 0, -t16, t58, t47 * t58 + t1, -t48 * t58 - t2, -t48 * t16 - t47 * t18, t1 * t47 + t2 * t48; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t83, -t81, 0, 0, 0, 0, 0, 0, 0, 0, -t56, -t60, 0 (-t56 * t78 + t60 * t76) * pkin(4), 0, 0, 0, 0, 0, 0, -t35, -t37, 0, -t35 * t47 + t37 * t48; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t81, 0, t83, 0, -t81 * pkin(8), -t83 * pkin(8), 0, 0, 0, 0, t60, 0, -t56, 0, t42, -t43 (-t56 * t76 - t60 * t78) * pkin(4) (t42 * t78 + t43 * t76) * pkin(4), 0, 0, t37, 0, -t35, 0, t13, -t14, -t48 * t35 - t47 * t37, t13 * t47 + t14 * t48; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t108, -0.2e1 * t109, 0 (t76 ^ 2 + t78 ^ 2) * pkin(4) ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t47, -0.2e1 * t48, 0, t47 ^ 2 + t48 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t28, t30, 0, t24, 0, 0, 0, 0, 0, 0, t16, t18, 0, t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t56, t60, 0, t71, 0, 0, 0, 0, 0, 0, t35, t37, 0, t44; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18, 0, -t16, t58, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t35, -t37, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37, 0, -t35, 0, t13, -t14, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t47, -t48, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t3;
