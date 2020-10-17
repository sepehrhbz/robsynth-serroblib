% Calculate inertial parameters regressor of joint inertia matrix for
% S6PRRRPR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d6,theta1]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 23:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6PRRRPR3_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR3_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRRPR3_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 07:30:43
% EndTime: 2019-05-05 07:30:48
% DurationCPUTime: 1.42s
% Computational Cost: add. (889->126), mult. (1829->212), div. (0->0), fcn. (2174->10), ass. (0->94)
t59 = cos(pkin(6));
t62 = sin(qJ(3));
t66 = cos(qJ(3));
t58 = sin(pkin(6));
t63 = sin(qJ(2));
t98 = t58 * t63;
t30 = t59 * t66 - t62 * t98;
t31 = t59 * t62 + t66 * t98;
t61 = sin(qJ(4));
t65 = cos(qJ(4));
t19 = t30 * t61 + t31 * t65;
t14 = t19 ^ 2;
t17 = -t30 * t65 + t31 * t61;
t52 = t58 ^ 2;
t67 = cos(qJ(2));
t46 = t52 * t67 ^ 2;
t111 = t17 ^ 2 + t14 + t46;
t35 = t61 * t62 - t65 * t66;
t33 = t35 ^ 2;
t37 = t61 * t66 + t62 * t65;
t34 = t37 ^ 2;
t103 = t61 * pkin(3);
t47 = qJ(5) + t103;
t110 = t47 ^ 2;
t51 = -t66 * pkin(3) - pkin(2);
t75 = -t37 * qJ(5) + t51;
t21 = pkin(4) * t35 + t75;
t109 = -0.2e1 * t21;
t108 = 0.2e1 * t47;
t107 = 0.2e1 * t51;
t106 = 0.2e1 * t66;
t69 = 0.2e1 * qJ(5);
t105 = pkin(4) + pkin(10);
t104 = -pkin(9) - pkin(8);
t102 = t65 * pkin(3);
t101 = t19 * t47;
t100 = t37 * t35;
t99 = t47 * t35;
t97 = t58 * t67;
t60 = sin(qJ(6));
t96 = t60 * t35;
t95 = t60 * t37;
t64 = cos(qJ(6));
t94 = t64 * t35;
t93 = t64 * t60;
t53 = t60 ^ 2;
t55 = t64 ^ 2;
t42 = t53 + t55;
t54 = t62 ^ 2;
t56 = t66 ^ 2;
t92 = t54 + t56;
t91 = qJ(5) * t35;
t90 = t19 * qJ(5);
t89 = t47 * qJ(5);
t88 = qJ(5) + t47;
t87 = -0.2e1 * t100;
t86 = 0.2e1 * t100;
t84 = t35 * t97;
t83 = t37 * t97;
t82 = t104 * t62;
t41 = t104 * t66;
t23 = -t41 * t61 - t65 * t82;
t25 = -t65 * t41 + t61 * t82;
t81 = t23 ^ 2 + t25 ^ 2;
t50 = -pkin(4) - t102;
t40 = t42 * t105;
t15 = pkin(5) * t37 + t23;
t8 = t105 * t35 + t75;
t3 = t15 * t64 - t60 * t8;
t4 = t15 * t60 + t64 * t8;
t1 = t3 * t64 + t4 * t60;
t5 = t17 * t64 + t60 * t97;
t6 = -t17 * t60 + t64 * t97;
t2 = t5 * t64 - t6 * t60;
t80 = t17 * t23 + t19 * t25;
t79 = t17 * t37 - t19 * t35;
t78 = -t30 * t62 + t31 * t66;
t44 = -pkin(10) + t50;
t77 = -t37 * t44 + t99;
t76 = t105 * t37 + t91;
t74 = 0.2e1 * t23 * t37 - 0.2e1 * t25 * t35;
t71 = -0.2e1 * pkin(4);
t70 = qJ(5) ^ 2;
t45 = -0.2e1 * t93;
t32 = t64 * t37;
t29 = t35 * t93;
t27 = t42 * t44;
t22 = (-t53 + t55) * t35;
t16 = -t35 * pkin(5) + t25;
t13 = t19 * t64;
t12 = t19 * t60;
t10 = t16 * t64;
t9 = t16 * t60;
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t52 * t63 ^ 2 + t59 ^ 2 + t46, 0, 0, 0, 0, 0, 0, 0, 0, 0, t30 ^ 2 + t31 ^ 2 + t46, 0, 0, 0, 0, 0, 0, 0, 0, 0, t111, 0, 0, 0, 0, 0, 0, 0, 0, 0, t111, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5 ^ 2 + t6 ^ 2 + t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t97, -t98, 0, 0, 0, 0, 0, 0, 0, 0, t66 * t97, -t62 * t97, t78, pkin(2) * t97 + pkin(8) * t78, 0, 0, 0, 0, 0, 0, -t84, -t83, t79, -t51 * t97 + t80, 0, 0, 0, 0, 0, 0, t79, t84, t83, -t21 * t97 + t80, 0, 0, 0, 0, 0, 0, -t19 * t94 + t37 * t5, t19 * t96 + t37 * t6 (-t5 * t60 - t6 * t64) * t35, t16 * t19 + t3 * t5 - t4 * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t54, t62 * t106, 0, t56, 0, 0, pkin(2) * t106, -0.2e1 * pkin(2) * t62, 0.2e1 * t92 * pkin(8), pkin(8) ^ 2 * t92 + pkin(2) ^ 2, t34, t87, 0, t33, 0, 0, t35 * t107, t37 * t107, t74, t51 ^ 2 + t81, 0, 0, 0, t34, t87, t33, t74, t35 * t109, t37 * t109, t21 ^ 2 + t81, t53 * t33, 0.2e1 * t33 * t93, t60 * t86, t55 * t33, t64 * t86, t34, -0.2e1 * t16 * t94 + 0.2e1 * t3 * t37, 0.2e1 * t16 * t96 - 0.2e1 * t37 * t4, 0.2e1 * (-t3 * t60 + t4 * t64) * t35, t16 ^ 2 + t3 ^ 2 + t4 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t30, -t31, 0, 0, 0, 0, 0, 0, 0, 0, -t17, -t19, 0 (-t17 * t65 + t19 * t61) * pkin(3), 0, 0, 0, 0, 0, 0, 0, t17, t19, t17 * t50 + t101, 0, 0, 0, 0, 0, 0, t12, t13, -t2, t2 * t44 + t101; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62, 0, t66, 0, -t62 * pkin(8), -t66 * pkin(8), 0, 0, 0, 0, t37, 0, -t35, 0, -t23, -t25 (-t35 * t61 - t37 * t65) * pkin(3) (-t23 * t65 + t25 * t61) * pkin(3), 0, -t37, t35, 0, 0, 0, t37 * t50 - t99, t23, t25, t23 * t50 + t25 * t47, t29, t22, t32, -t29, -t95, 0, -t64 * t77 + t9, t60 * t77 + t10, -t1, t1 * t44 + t16 * t47; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t102, -0.2e1 * t103, 0 (t61 ^ 2 + t65 ^ 2) * pkin(3) ^ 2, 1, 0, 0, 0, 0, 0, 0, 0.2e1 * t50, t108, t50 ^ 2 + t110, t55, t45, 0, t53, 0, 0, t60 * t108, t64 * t108, -0.2e1 * t27, t42 * t44 ^ 2 + t110; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t17, -t19, 0, 0, 0, 0, 0, 0, 0, 0, 0, t17, t19, -pkin(4) * t17 + t90, 0, 0, 0, 0, 0, 0, t12, t13, -t2, -t105 * t2 + t90; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37, 0, -t35, 0, -t23, -t25, 0, 0, 0, -t37, t35, 0, 0, 0, -pkin(4) * t37 - t91, t23, t25, -pkin(4) * t23 + qJ(5) * t25, t29, t22, t32, -t29, -t95, 0, -t64 * t76 + t9, t60 * t76 + t10, -t1, t16 * qJ(5) - t1 * t105; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t102, -t103, 0, 0, 1, 0, 0, 0, 0, 0, 0, t71 - t102, t69 + t103, -pkin(4) * t50 + t89, t55, t45, 0, t53, 0, 0, t88 * t60, t88 * t64 (-t44 + t105) * t42, -t40 * t44 + t89; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, t71, t69, pkin(4) ^ 2 + t70, t55, t45, 0, t53, 0, 0, t60 * t69, t64 * t69, 0.2e1 * t40, t105 ^ 2 * t42 + t70; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t17, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37, 0, 0, t23, 0, 0, 0, 0, 0, 0, t32, -t95, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, t50, 0, 0, 0, 0, 0, 0, 0, 0, -t42, t27; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(4), 0, 0, 0, 0, 0, 0, 0, 0, -t42, -t40; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t42; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5, t6, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, 0, t94, t37, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t64, 0, -t60, 0, t64 * t44, -t60 * t44, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t64, 0, -t60, 0, -t64 * t105, t60 * t105, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t64, -t60, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t7;
