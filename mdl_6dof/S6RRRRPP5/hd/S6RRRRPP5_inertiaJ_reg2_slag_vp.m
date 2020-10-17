% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRRPP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 21:10
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRRPP5_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP5_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRRPP5_inertiaJ_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 18:28:07
% EndTime: 2019-05-07 18:28:14
% DurationCPUTime: 2.16s
% Computational Cost: add. (1377->197), mult. (2755->311), div. (0->0), fcn. (2931->6), ass. (0->108)
t73 = sin(qJ(4));
t74 = sin(qJ(3));
t76 = cos(qJ(4));
t77 = cos(qJ(3));
t46 = t73 * t77 + t76 * t74;
t75 = sin(qJ(2));
t37 = t46 * t75;
t35 = t37 ^ 2;
t44 = t73 * t74 - t76 * t77;
t42 = t44 ^ 2;
t63 = -t77 * pkin(3) - pkin(2);
t132 = 0.2e1 * t63;
t131 = -0.2e1 * t75;
t78 = cos(qJ(2));
t130 = 0.2e1 * t78;
t79 = pkin(4) + pkin(5);
t129 = -pkin(9) - pkin(8);
t128 = pkin(2) * t77;
t127 = pkin(7) * t74;
t70 = t75 ^ 2;
t126 = t70 * pkin(7);
t67 = t75 * pkin(7);
t125 = t76 * pkin(3);
t124 = t78 * pkin(3);
t50 = t129 * t77;
t96 = t129 * t74;
t27 = -t73 * t50 - t76 * t96;
t123 = t27 * t78;
t29 = -t76 * t50 + t73 * t96;
t122 = t29 * t78;
t121 = t37 * t44;
t111 = t77 * t75;
t114 = t74 * t75;
t39 = t76 * t111 - t73 * t114;
t120 = t39 * t37;
t119 = t39 * t78;
t118 = t46 * t44;
t117 = t46 * t78;
t65 = t73 * pkin(3);
t58 = t65 + qJ(5);
t116 = t58 * t37;
t115 = t58 * t44;
t113 = t74 * t77;
t112 = t74 * t78;
t110 = t77 * t78;
t109 = t78 * t37;
t108 = t78 * t44;
t49 = -t78 * pkin(2) - t75 * pkin(8) - pkin(1);
t41 = t77 * t49;
t19 = -pkin(9) * t111 + t41 + (-pkin(3) - t127) * t78;
t99 = pkin(7) * t110;
t24 = t99 + (-pkin(9) * t75 + t49) * t74;
t107 = -t76 * t19 + t73 * t24;
t7 = t73 * t19 + t76 * t24;
t48 = pkin(3) * t114 + t67;
t69 = t74 ^ 2;
t71 = t77 ^ 2;
t106 = t69 + t71;
t105 = qJ(5) * t37;
t104 = qJ(5) * t44;
t103 = t78 * qJ(5);
t102 = t75 * t130;
t101 = 0.2e1 * t109;
t100 = t27 ^ 2 + t29 ^ 2;
t98 = t74 * t111;
t68 = t78 * pkin(4);
t4 = t68 + t107;
t97 = -0.2e1 * t103 + t7;
t61 = pkin(4) + t125;
t83 = 0.2e1 * pkin(4);
t95 = t83 + t125;
t94 = t27 * t39 - t29 * t37;
t93 = t39 * qJ(6) - t4;
t3 = -t103 + t7;
t92 = t39 * qJ(5) - t48;
t31 = -pkin(7) * t112 + t41;
t32 = t74 * t49 + t99;
t91 = -t31 * t74 + t32 * t77;
t90 = -t46 * t37 - t39 * t44;
t89 = 0.2e1 * t27 * t46 - 0.2e1 * t29 * t44;
t88 = t46 * qJ(5) - t63;
t87 = (-qJ(5) - t58) * t78 + t7;
t85 = pkin(7) ^ 2;
t82 = qJ(5) ^ 2;
t81 = 0.2e1 * qJ(5);
t72 = t78 ^ 2;
t66 = t70 * t85;
t59 = t81 + t65;
t56 = pkin(5) + t61;
t55 = t58 ^ 2;
t53 = t58 * qJ(5);
t51 = 0.2e1 * t58;
t43 = t46 ^ 2;
t36 = t39 ^ 2;
t33 = t37 * qJ(6);
t30 = -0.2e1 * t119;
t25 = 0.2e1 * t118;
t21 = t39 * t46;
t18 = t44 * pkin(4) - t88;
t15 = 0.2e1 * t120;
t13 = t44 * qJ(6) + t29;
t12 = -t46 * qJ(6) + t27;
t10 = -t79 * t44 + t88;
t9 = t37 * pkin(4) - t92;
t5 = -t79 * t37 + t92;
t2 = t3 + t33;
t1 = t78 * pkin(5) - t93;
t6 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t70, t102, 0, t72, 0, 0, pkin(1) * t130, pkin(1) * t131, 0.2e1 * (t70 + t72) * pkin(7), pkin(1) ^ 2 + t72 * t85 + t66, t71 * t70, -0.2e1 * t70 * t113, t110 * t131, t69 * t70, t74 * t102, t72, 0.2e1 * t74 * t126 - 0.2e1 * t31 * t78, 0.2e1 * t77 * t126 + 0.2e1 * t32 * t78, 0.2e1 * (-t31 * t77 - t32 * t74) * t75, t31 ^ 2 + t32 ^ 2 + t66, t36, -0.2e1 * t120, t30, t35, t101, t72, 0.2e1 * t107 * t78 + 0.2e1 * t48 * t37, 0.2e1 * t48 * t39 + 0.2e1 * t7 * t78, 0.2e1 * t107 * t39 - 0.2e1 * t7 * t37, t107 ^ 2 + t48 ^ 2 + t7 ^ 2, t36, t30, t15, t72, -0.2e1 * t109, t35, 0.2e1 * t9 * t37 + 0.2e1 * t4 * t78, -0.2e1 * t3 * t37 + 0.2e1 * t4 * t39, -0.2e1 * t3 * t78 - 0.2e1 * t9 * t39, t3 ^ 2 + t4 ^ 2 + t9 ^ 2, t36, t15, 0.2e1 * t119, t35, t101, t72, 0.2e1 * t1 * t78 - 0.2e1 * t5 * t37, -0.2e1 * t2 * t78 + 0.2e1 * t5 * t39, -0.2e1 * t1 * t39 + 0.2e1 * t2 * t37, t1 ^ 2 + t2 ^ 2 + t5 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75, 0, t78, 0, -t67, -t78 * pkin(7), 0, 0, t98 (-t69 + t71) * t75, -t112, -t98, -t110, 0, -pkin(7) * t111 + (-pkin(2) * t75 + pkin(8) * t78) * t74, pkin(8) * t110 + (t127 - t128) * t75, t91, -pkin(2) * t67 + t91 * pkin(8), t21, t90, -t117, t121, t108, 0, t63 * t37 + t48 * t44 + t123, t63 * t39 + t48 * t46 + t122, t107 * t46 - t7 * t44 + t94, t107 * t27 + t7 * t29 + t48 * t63, t21, -t117, -t90, 0, -t108, t121, t18 * t37 + t9 * t44 + t123, -t3 * t44 + t4 * t46 + t94, -t18 * t39 - t9 * t46 - t122, t9 * t18 + t4 * t27 + t3 * t29, t21, -t90, t117, t121, t108, 0, -t10 * t37 + t12 * t78 - t5 * t44, t10 * t39 - t13 * t78 + t5 * t46, -t1 * t46 - t12 * t39 + t13 * t37 + t2 * t44, t1 * t12 + t5 * t10 + t2 * t13; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t69, 0.2e1 * t113, 0, t71, 0, 0, 0.2e1 * t128, -0.2e1 * pkin(2) * t74, 0.2e1 * t106 * pkin(8), t106 * pkin(8) ^ 2 + pkin(2) ^ 2, t43, -0.2e1 * t118, 0, t42, 0, 0, t44 * t132, t46 * t132, t89, t63 ^ 2 + t100, t43, 0, t25, 0, 0, t42, 0.2e1 * t18 * t44, t89, -0.2e1 * t18 * t46, t18 ^ 2 + t100, t43, t25, 0, t42, 0, 0, -0.2e1 * t10 * t44, 0.2e1 * t10 * t46, -0.2e1 * t12 * t46 + 0.2e1 * t13 * t44, t10 ^ 2 + t12 ^ 2 + t13 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t111, 0, -t114, -t78, t31, -t32, 0, 0, 0, 0, t39, 0, -t37, -t78, -t76 * t124 - t107, t73 * t124 - t7 (-t37 * t73 - t39 * t76) * pkin(3) (-t107 * t76 + t7 * t73) * pkin(3), 0, t39, 0, -t78, t37, 0, -t61 * t78 - t4, -t61 * t39 - t116, t87, t3 * t58 - t4 * t61, 0, 0, -t39, 0, -t37, -t78 (-pkin(5) - t56) * t78 + t93, t33 + t87, t56 * t39 + t116, -t1 * t56 + t2 * t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, 0, t77, 0, -t74 * pkin(8), -t77 * pkin(8), 0, 0, 0, 0, t46, 0, -t44, 0, -t27, -t29 (-t44 * t73 - t46 * t76) * pkin(3) (-t27 * t76 + t29 * t73) * pkin(3), 0, t46, 0, 0, t44, 0, -t27, -t61 * t46 - t115, t29, -t27 * t61 + t29 * t58, 0, 0, -t46, 0, -t44, 0, -t12, t13, t56 * t46 + t115, -t12 * t56 + t13 * t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t125, -0.2e1 * t65, 0 (t73 ^ 2 + t76 ^ 2) * pkin(3) ^ 2, 0, 0, 0, 1, 0, 0, 0.2e1 * t61, 0, t51, t61 ^ 2 + t55, 0, 0, 0, 0, 0, 1, 0.2e1 * t56, t51, 0, t56 ^ 2 + t55; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t39, 0, -t37, -t78, -t107, -t7, 0, 0, 0, t39, 0, -t78, t37, 0, -0.2e1 * t68 - t107, -pkin(4) * t39 - t105, t97, -t4 * pkin(4) + t3 * qJ(5), 0, 0, -t39, 0, -t37, -t78 (-pkin(5) - t79) * t78 + t93, t33 + t97, t79 * t39 + t105, t2 * qJ(5) - t1 * t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, 0, -t44, 0, -t27, -t29, 0, 0, 0, t46, 0, 0, t44, 0, -t27, -pkin(4) * t46 - t104, t29, -t27 * pkin(4) + t29 * qJ(5), 0, 0, -t46, 0, -t44, 0, -t12, t13, t79 * t46 + t104, t13 * qJ(5) - t12 * t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t125, -t65, 0, 0, 0, 0, 0, 1, 0, 0, t95, 0, t59, t61 * pkin(4) + t53, 0, 0, 0, 0, 0, 1, 0.2e1 * pkin(5) + t95, t59, 0, t56 * t79 + t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t83, 0, t81, pkin(4) ^ 2 + t82, 0, 0, 0, 0, 0, 1, 0.2e1 * t79, t81, 0, t79 ^ 2 + t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t78, t39, 0, t4, 0, 0, 0, 0, 0, 0, t78, 0, -t39, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, 0, t27, 0, 0, 0, 0, 0, 0, 0, 0, -t46, t12; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -t61, 0, 0, 0, 0, 0, 0, -1, 0, 0, -t56; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -pkin(4), 0, 0, 0, 0, 0, 0, -1, 0, 0, -t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t37, t39, 0, t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t44, t46, 0, t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t6;
