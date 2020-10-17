% Calculate inertial parameters regressor of joint inertia matrix for
% S6PRRPRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,d6,theta1,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 21:54
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6PRRPRR1_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR1_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRPRR1_inertiaJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 04:17:21
% EndTime: 2019-05-05 04:17:26
% DurationCPUTime: 1.57s
% Computational Cost: add. (1530->134), mult. (3187->242), div. (0->0), fcn. (3965->12), ass. (0->88)
t59 = cos(pkin(12));
t94 = t59 * pkin(3);
t48 = pkin(4) + t94;
t62 = sin(qJ(5));
t91 = cos(qJ(5));
t57 = sin(pkin(12));
t95 = t57 * pkin(3);
t38 = t62 * t48 + t91 * t95;
t36 = pkin(10) + t38;
t61 = sin(qJ(6));
t53 = t61 ^ 2;
t65 = cos(qJ(6));
t55 = t65 ^ 2;
t81 = t53 + t55;
t83 = t81 * t36;
t63 = sin(qJ(3));
t66 = cos(qJ(3));
t42 = t57 * t63 - t59 * t66;
t44 = t57 * t66 + t59 * t63;
t28 = -t62 * t42 + t91 * t44;
t103 = -0.2e1 * t28;
t84 = -qJ(4) - pkin(8);
t77 = t84 * t63;
t78 = t84 * t66;
t30 = t57 * t77 - t59 * t78;
t19 = -t42 * pkin(9) + t30;
t29 = t57 * t78 + t59 * t77;
t71 = -t44 * pkin(9) + t29;
t9 = t62 * t19 - t91 * t71;
t102 = t9 ^ 2;
t60 = cos(pkin(6));
t58 = sin(pkin(6));
t64 = sin(qJ(2));
t89 = t58 * t64;
t40 = t60 * t66 - t63 * t89;
t41 = t60 * t63 + t66 * t89;
t20 = t59 * t40 - t57 * t41;
t21 = t57 * t40 + t59 * t41;
t13 = -t91 * t20 + t62 * t21;
t101 = t13 ^ 2;
t26 = t91 * t42 + t62 * t44;
t100 = t26 ^ 2;
t49 = -t66 * pkin(3) - pkin(2);
t33 = t42 * pkin(4) + t49;
t99 = 0.2e1 * t33;
t98 = 0.2e1 * t49;
t97 = 0.2e1 * t66;
t96 = t13 * t9;
t93 = t9 * t65;
t37 = t91 * t48 - t62 * t95;
t35 = -pkin(5) - t37;
t92 = pkin(5) - t35;
t90 = t13 * t65;
t67 = cos(qJ(2));
t88 = t58 * t67;
t23 = t61 * t26;
t87 = t61 * t28;
t86 = t61 * t65;
t85 = t65 * t28;
t82 = t81 * pkin(10);
t54 = t63 ^ 2;
t56 = t66 ^ 2;
t80 = t54 + t56;
t79 = t26 * t103;
t76 = -pkin(5) * t28 - pkin(10) * t26;
t11 = t91 * t19 + t62 * t71;
t8 = t26 * pkin(5) - t28 * pkin(10) + t33;
t3 = -t61 * t11 + t65 * t8;
t4 = t65 * t11 + t61 * t8;
t75 = t3 * t65 + t4 * t61;
t1 = -t3 * t61 + t4 * t65;
t15 = t62 * t20 + t91 * t21;
t5 = -t61 * t15 - t65 * t88;
t6 = t65 * t15 - t61 * t88;
t74 = t5 * t65 + t6 * t61;
t2 = -t5 * t61 + t6 * t65;
t73 = -t26 * t36 + t28 * t35;
t72 = -t40 * t63 + t41 * t66;
t52 = t58 ^ 2;
t47 = t52 * t67 ^ 2;
t45 = 0.2e1 * t86;
t25 = t28 ^ 2;
t24 = t65 * t26;
t22 = t61 * t85;
t16 = (-t53 + t55) * t28;
t12 = t13 * t61;
t7 = t9 * t61;
t10 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t52 * t64 ^ 2 + t60 ^ 2 + t47, 0, 0, 0, 0, 0, 0, 0, 0, 0, t40 ^ 2 + t41 ^ 2 + t47, 0, 0, 0, 0, 0, 0, 0, 0, 0, t20 ^ 2 + t21 ^ 2 + t47, 0, 0, 0, 0, 0, 0, 0, 0, 0, t15 ^ 2 + t101 + t47, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5 ^ 2 + t6 ^ 2 + t101; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t88, -t89, 0, 0, 0, 0, 0, 0, 0, 0, t66 * t88, -t63 * t88, t72, pkin(2) * t88 + t72 * pkin(8), 0, 0, 0, 0, 0, 0, -t42 * t88, -t44 * t88, -t20 * t44 - t21 * t42, t20 * t29 + t21 * t30 - t49 * t88, 0, 0, 0, 0, 0, 0, -t26 * t88, -t28 * t88, t13 * t28 - t15 * t26, t15 * t11 - t33 * t88 + t96, 0, 0, 0, 0, 0, 0, t13 * t87 + t5 * t26, t13 * t85 - t6 * t26, -t74 * t28, t5 * t3 + t6 * t4 + t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t54, t63 * t97, 0, t56, 0, 0, pkin(2) * t97, -0.2e1 * pkin(2) * t63, 0.2e1 * t80 * pkin(8), t80 * pkin(8) ^ 2 + pkin(2) ^ 2, t44 ^ 2, -0.2e1 * t44 * t42, 0, t42 ^ 2, 0, 0, t42 * t98, t44 * t98, -0.2e1 * t29 * t44 - 0.2e1 * t30 * t42, t29 ^ 2 + t30 ^ 2 + t49 ^ 2, t25, t79, 0, t100, 0, 0, t26 * t99, t28 * t99, -0.2e1 * t11 * t26 + 0.2e1 * t9 * t28, t11 ^ 2 + t33 ^ 2 + t102, t55 * t25, -0.2e1 * t25 * t86, 0.2e1 * t26 * t85, t53 * t25, t61 * t79, t100, 0.2e1 * t3 * t26 + 0.2e1 * t9 * t87, -0.2e1 * t4 * t26 + 0.2e1 * t9 * t85, t75 * t103, t3 ^ 2 + t4 ^ 2 + t102; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t40, -t41, 0, 0, 0, 0, 0, 0, 0, 0, t20, -t21, 0 (t20 * t59 + t21 * t57) * pkin(3), 0, 0, 0, 0, 0, 0, -t13, -t15, 0, -t13 * t37 + t15 * t38, 0, 0, 0, 0, 0, 0, -t90, t12, t2, t13 * t35 + t2 * t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t63, 0, t66, 0, -t63 * pkin(8), -t66 * pkin(8), 0, 0, 0, 0, t44, 0, -t42, 0, t29, -t30 (-t42 * t57 - t44 * t59) * pkin(3) (t29 * t59 + t30 * t57) * pkin(3), 0, 0, t28, 0, -t26, 0, -t9, -t11, -t38 * t26 - t37 * t28, t11 * t38 - t9 * t37, t22, t16, t23, -t22, t24, 0, t73 * t61 - t93, t73 * t65 + t7, t1, t1 * t36 + t9 * t35; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t94, -0.2e1 * t95, 0 (t57 ^ 2 + t59 ^ 2) * pkin(3) ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t37, -0.2e1 * t38, 0, t37 ^ 2 + t38 ^ 2, t53, t45, 0, t55, 0, 0, -0.2e1 * t35 * t65, 0.2e1 * t35 * t61, 0.2e1 * t83, t81 * t36 ^ 2 + t35 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t88, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t88, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t42, t44, 0, t49, 0, 0, 0, 0, 0, 0, t26, t28, 0, t33, 0, 0, 0, 0, 0, 0, t24, -t23, -t81 * t28, t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t81; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t13, -t15, 0, 0, 0, 0, 0, 0, 0, 0, -t90, t12, t2, -t13 * pkin(5) + t2 * pkin(10); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t28, 0, -t26, 0, -t9, -t11, 0, 0, t22, t16, t23, -t22, t24, 0, t76 * t61 - t93, t76 * t65 + t7, t1, -t9 * pkin(5) + t1 * pkin(10); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t37, -t38, 0, 0, t53, t45, 0, t55, 0, 0, t92 * t65, -t92 * t61, t82 + t83, -t35 * pkin(5) + pkin(10) * t83; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t53, t45, 0, t55, 0, 0, 0.2e1 * pkin(5) * t65, -0.2e1 * pkin(5) * t61, 0.2e1 * t82, t81 * pkin(10) ^ 2 + pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5, -t6, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t85, 0, -t87, t26, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61, 0, t65, 0, -t61 * t36, -t65 * t36, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t65, -t61, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61, 0, t65, 0, -t61 * pkin(10), -t65 * pkin(10), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t10;
