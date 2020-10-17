% Calculate inertial parameters regressor of joint inertia matrix for
% S6PPRPRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d3,d5,d6,theta1,theta2,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:44
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6PPRPRR1_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRPRR1_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PPRPRR1_inertiaJ_reg2_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 19:53:55
% EndTime: 2019-05-04 19:54:00
% DurationCPUTime: 1.01s
% Computational Cost: add. (806->126), mult. (2247->215), div. (0->0), fcn. (2869->14), ass. (0->82)
t45 = sin(pkin(7));
t46 = sin(pkin(6));
t48 = cos(pkin(12));
t49 = cos(pkin(7));
t50 = cos(pkin(6));
t25 = -t46 * t48 * t45 + t50 * t49;
t52 = sin(qJ(5));
t55 = cos(qJ(5));
t44 = sin(pkin(12));
t53 = sin(qJ(3));
t56 = cos(qJ(3));
t76 = t48 * t49;
t77 = t45 * t56;
t12 = t50 * t77 + (-t44 * t53 + t56 * t76) * t46;
t78 = t45 * t53;
t13 = t50 * t78 + (t44 * t56 + t53 * t76) * t46;
t43 = sin(pkin(13));
t47 = cos(pkin(13));
t8 = t43 * t12 + t47 * t13;
t3 = -t25 * t55 + t52 * t8;
t93 = t3 ^ 2;
t6 = -t47 * t12 + t43 * t13;
t92 = t6 ^ 2;
t23 = (t43 * t56 + t47 * t53) * t45;
t16 = t52 * t23 - t55 * t49;
t91 = t16 ^ 2;
t21 = t43 * t78 - t47 * t77;
t90 = t21 ^ 2;
t89 = 0.2e1 * t52;
t54 = cos(qJ(6));
t88 = pkin(5) * t54;
t87 = t3 * t16;
t86 = t3 * t55;
t85 = t43 * pkin(3);
t84 = t47 * pkin(3);
t83 = t55 * pkin(5);
t82 = t6 * t21;
t81 = t16 * t55;
t51 = sin(qJ(6));
t39 = t51 ^ 2;
t80 = t39 * t52;
t31 = pkin(9) + t85;
t40 = t52 ^ 2;
t79 = t40 * t31;
t75 = t51 * t52;
t74 = t51 * t54;
t73 = t51 * t55;
t72 = t52 * t31;
t71 = t54 * t52;
t70 = t54 * t55;
t69 = t55 * t31;
t41 = t54 ^ 2;
t68 = t39 + t41;
t42 = t55 ^ 2;
t67 = t40 + t42;
t66 = t55 * t89;
t65 = t51 * t71;
t32 = -pkin(4) - t84;
t64 = t68 * pkin(10);
t5 = t25 * t52 + t55 * t8;
t1 = -t51 * t5 + t54 * t6;
t2 = t54 * t5 + t51 * t6;
t63 = -t1 * t51 + t2 * t54;
t62 = t3 * t52 + t5 * t55;
t18 = t55 * t23 + t52 * t49;
t10 = t54 * t18 + t51 * t21;
t9 = -t51 * t18 + t54 * t21;
t61 = t10 * t54 - t9 * t51;
t26 = -t52 * pkin(10) + t32 - t83;
t14 = t54 * t26 - t51 * t69;
t15 = t51 * t26 + t54 * t69;
t60 = -t14 * t51 + t15 * t54;
t59 = t16 * t52 + t18 * t55;
t38 = t49 ^ 2;
t35 = t41 * t52;
t34 = t41 * t40;
t33 = t39 * t40;
t29 = t31 ^ 2;
t27 = t40 * t29;
t24 = t25 ^ 2;
t19 = t25 * t49;
t4 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50 ^ 2 + (t44 ^ 2 + t48 ^ 2) * t46 ^ 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, t12 ^ 2 + t13 ^ 2 + t24, 0, 0, 0, 0, 0, 0, 0, 0, 0, t8 ^ 2 + t24 + t92, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5 ^ 2 + t92 + t93, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1 ^ 2 + t2 ^ 2 + t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50, 0, 0, 0, 0, 0, 0, 0, 0, 0, t19 + (t12 * t56 + t13 * t53) * t45, 0, 0, 0, 0, 0, 0, 0, 0, 0, t8 * t23 + t19 + t82, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5 * t18 + t82 + t87, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1 * t9 + t2 * t10 + t87; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38 + (t53 ^ 2 + t56 ^ 2) * t45 ^ 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, t23 ^ 2 + t38 + t90, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18 ^ 2 + t90 + t91, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10 ^ 2 + t9 ^ 2 + t91; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t12, -t13, 0, 0, 0, 0, 0, 0, 0, 0, -t6, -t8, 0 (t43 * t8 - t47 * t6) * pkin(3), 0, 0, 0, 0, 0, 0, -t6 * t55, t6 * t52, t62, t62 * t31 + t6 * t32, 0, 0, 0, 0, 0, 0, -t1 * t55 + t3 * t75, t2 * t55 + t3 * t71 (-t1 * t54 - t2 * t51) * t52, t1 * t14 + t2 * t15 + t3 * t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t77, -t78, 0, 0, 0, 0, 0, 0, 0, 0, -t21, -t23, 0 (-t21 * t47 + t23 * t43) * pkin(3), 0, 0, 0, 0, 0, 0, -t21 * t55, t21 * t52, t59, t21 * t32 + t59 * t31, 0, 0, 0, 0, 0, 0, t16 * t75 - t9 * t55, t10 * t55 + t16 * t71 (-t10 * t51 - t54 * t9) * t52, t10 * t15 + t9 * t14 + t16 * t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t84, -0.2e1 * t85, 0 (t43 ^ 2 + t47 ^ 2) * pkin(3) ^ 2, t40, t66, 0, t42, 0, 0, -0.2e1 * t32 * t55, t32 * t89, 0.2e1 * t67 * t31, t42 * t29 + t32 ^ 2 + t27, t34, -0.2e1 * t40 * t74, -0.2e1 * t52 * t70, t33, t51 * t66, t42, -0.2e1 * t14 * t55 + 0.2e1 * t51 * t79, 0.2e1 * t15 * t55 + 0.2e1 * t54 * t79 (-t14 * t54 - t15 * t51) * t89, t14 ^ 2 + t15 ^ 2 + t27; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5 * t52 - t86, 0, 0, 0, 0, 0, 0, 0, 0, 0, t52 * t63 - t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t49, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18 * t52 - t81, 0, 0, 0, 0, 0, 0, 0, 0, 0, t52 * t61 - t81; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (t60 - t69) * t52; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t67, 0, 0, 0, 0, 0, 0, 0, 0, 0, t34 + t33 + t42; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t3, -t5, 0, 0, 0, 0, 0, 0, 0, 0, -t3 * t54, t3 * t51, t63, -t3 * pkin(5) + pkin(10) * t63; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t16, -t18, 0, 0, 0, 0, 0, 0, 0, 0, -t16 * t54, t16 * t51, t61, -t16 * pkin(5) + pkin(10) * t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t52, 0, t55, 0, -t72, -t69, 0, 0, t65, t35 - t80, -t73, -t65, -t70, 0, -t31 * t71 + (-pkin(5) * t52 + pkin(10) * t55) * t51, pkin(10) * t70 + (t31 * t51 - t88) * t52, t60, -pkin(5) * t72 + pkin(10) * t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t55, -t52, 0, 0, 0, 0, 0, 0, 0, 0, t70, -t73, t35 + t80, t52 * t64 + t83; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t39, 0.2e1 * t74, 0, t41, 0, 0, 0.2e1 * t88, -0.2e1 * pkin(5) * t51, 0.2e1 * t64, pkin(10) ^ 2 * t68 + pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t9, -t10, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71, 0, -t75, -t55, t14, -t15, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t75, -t71, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t51, 0, t54, 0, -t51 * pkin(10), -t54 * pkin(10), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t4;
