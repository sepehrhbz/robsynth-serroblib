% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6PRPRRP4
% Use Code from Maple symbolic Code Generation
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
% 
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S6PRPRRP4_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,theta1,theta3]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 21:48
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6PRPRRP4_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRP4_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRPRRP4_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRRP4_jacobia_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:48:18
	% EndTime: 2019-10-09 21:48:18
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:48:18
	% EndTime: 2019-10-09 21:48:18
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:48:18
	% EndTime: 2019-10-09 21:48:18
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (10->0), mult. (27->0), div. (5->0), fcn. (35->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 1, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:48:18
	% EndTime: 2019-10-09 21:48:18
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (84->18), mult. (220->41), div. (42->11), fcn. (332->11), ass. (0->27)
	t39 = sin(pkin(10));
	t40 = sin(pkin(6));
	t49 = t39 * t40;
	t45 = cos(qJ(2));
	t48 = t40 * t45;
	t43 = cos(pkin(6));
	t44 = sin(qJ(2));
	t47 = t43 * t44;
	t46 = t43 * t45;
	t42 = cos(pkin(10));
	t41 = cos(pkin(11));
	t38 = sin(pkin(11));
	t37 = 0.1e1 / t45 ^ 2;
	t34 = -t39 * t47 + t42 * t45;
	t33 = t39 * t46 + t42 * t44;
	t32 = t39 * t45 + t42 * t47;
	t30 = t39 * t44 - t42 * t46;
	t28 = atan2(-t30, -t48);
	t27 = cos(t28);
	t26 = sin(t28);
	t25 = t34 * t41 + t38 * t49;
	t24 = t34 * t38 - t41 * t49;
	t23 = 0.1e1 / t25 ^ 2;
	t21 = -t26 * t30 - t27 * t48;
	t20 = 0.1e1 / t21 ^ 2;
	t18 = (t32 / t45 + t44 * t30 * t37) / t40 / (0.1e1 + t30 ^ 2 / t40 ^ 2 * t37);
	t1 = [0, t18, 0, 0, 0, 0; 0, (t34 / t21 - (t27 * t40 * t44 - t26 * t32 + (t26 * t48 - t27 * t30) * t18) * t33 * t20) / (t33 ^ 2 * t20 + 0.1e1), 0, 0, 0, 0; 0, (-t38 / t25 + t41 * t24 * t23) * t33 / (t24 ^ 2 * t23 + 0.1e1), 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:48:18
	% EndTime: 2019-10-09 21:48:18
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (131->19), mult. (268->43), div. (47->11), fcn. (395->11), ass. (0->30)
	t47 = sin(pkin(10));
	t48 = sin(pkin(6));
	t57 = t47 * t48;
	t52 = cos(qJ(2));
	t56 = t48 * t52;
	t50 = cos(pkin(6));
	t51 = sin(qJ(2));
	t55 = t50 * t51;
	t54 = t50 * t52;
	t49 = cos(pkin(10));
	t40 = -t47 * t55 + t49 * t52;
	t45 = pkin(11) + qJ(4);
	t42 = sin(t45);
	t43 = cos(t45);
	t31 = t40 * t43 + t42 * t57;
	t29 = 0.1e1 / t31 ^ 2;
	t30 = t40 * t42 - t43 * t57;
	t53 = t30 ^ 2 * t29 + 0.1e1;
	t46 = 0.1e1 / t52 ^ 2;
	t39 = t47 * t54 + t49 * t51;
	t38 = t47 * t52 + t49 * t55;
	t36 = t47 * t51 - t49 * t54;
	t34 = atan2(-t36, -t56);
	t33 = cos(t34);
	t32 = sin(t34);
	t28 = 0.1e1 / t53;
	t27 = -t32 * t36 - t33 * t56;
	t26 = 0.1e1 / t27 ^ 2;
	t24 = (t38 / t52 + t51 * t36 * t46) / t48 / (0.1e1 + t36 ^ 2 / t48 ^ 2 * t46);
	t1 = [0, t24, 0, 0, 0, 0; 0, (t40 / t27 - (t33 * t48 * t51 - t32 * t38 + (t32 * t56 - t33 * t36) * t24) * t39 * t26) / (t39 ^ 2 * t26 + 0.1e1), 0, 0, 0, 0; 0, (-t42 / t31 + t43 * t30 * t29) * t39 * t28, 0, t53 * t28, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:48:18
	% EndTime: 2019-10-09 21:48:18
	% DurationCPUTime: 0.22s
	% Computational Cost: add. (641->31), mult. (949->79), div. (65->9), fcn. (1349->13), ass. (0->52)
	t68 = sin(pkin(10));
	t70 = cos(pkin(10));
	t75 = cos(qJ(2));
	t71 = cos(pkin(6));
	t73 = sin(qJ(2));
	t79 = t71 * t73;
	t61 = t68 * t75 + t70 * t79;
	t67 = pkin(11) + qJ(4);
	t65 = sin(t67);
	t66 = cos(t67);
	t69 = sin(pkin(6));
	t82 = t69 * t70;
	t51 = t61 * t65 + t66 * t82;
	t81 = t69 * t73;
	t58 = t65 * t81 - t71 * t66;
	t50 = atan2(-t51, t58);
	t45 = sin(t50);
	t46 = cos(t50);
	t41 = -t45 * t51 + t46 * t58;
	t40 = 0.1e1 / t41 ^ 2;
	t63 = -t68 * t79 + t70 * t75;
	t83 = t68 * t69;
	t54 = t63 * t65 - t66 * t83;
	t88 = t40 * t54;
	t55 = t63 * t66 + t65 * t83;
	t74 = cos(qJ(5));
	t78 = t71 * t75;
	t62 = t68 * t78 + t70 * t73;
	t72 = sin(qJ(5));
	t85 = t62 * t72;
	t48 = t55 * t74 + t85;
	t44 = 0.1e1 / t48 ^ 2;
	t84 = t62 * t74;
	t47 = t55 * t72 - t84;
	t87 = t44 * t47;
	t57 = 0.1e1 / t58 ^ 2;
	t86 = t51 * t57;
	t80 = t69 * t75;
	t77 = t47 ^ 2 * t44 + 0.1e1;
	t76 = -t45 * t58 - t46 * t51;
	t60 = -t68 * t73 + t70 * t78;
	t59 = t71 * t65 + t66 * t81;
	t56 = 0.1e1 / t58;
	t53 = t61 * t66 - t65 * t82;
	t49 = 0.1e1 / (t51 ^ 2 * t57 + 0.1e1);
	t43 = 0.1e1 / t48;
	t42 = 0.1e1 / t77;
	t39 = 0.1e1 / t41;
	t38 = 0.1e1 / (t54 ^ 2 * t40 + 0.1e1);
	t37 = (-t56 * t60 + t80 * t86) * t65 * t49;
	t36 = (-t53 * t56 + t59 * t86) * t49;
	t1 = [0, t37, 0, t36, 0, 0; 0, (-t62 * t65 * t39 - ((-t45 * t60 + t46 * t80) * t65 + t76 * t37) * t88) * t38, 0, (t55 * t39 - (t76 * t36 - t45 * t53 + t46 * t59) * t88) * t38, 0, 0; 0, ((-t63 * t74 - t66 * t85) * t43 - (t63 * t72 - t66 * t84) * t87) * t42, 0, (-t43 * t72 + t74 * t87) * t54 * t42, t77 * t42, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:48:18
	% EndTime: 2019-10-09 21:48:18
	% DurationCPUTime: 0.38s
	% Computational Cost: add. (1149->41), mult. (1993->102), div. (87->9), fcn. (2807->13), ass. (0->60)
	t100 = cos(qJ(5));
	t101 = cos(qJ(2));
	t96 = cos(pkin(10));
	t104 = t96 * t101;
	t94 = sin(pkin(10));
	t97 = cos(pkin(6));
	t99 = sin(qJ(2));
	t102 = t97 * t104 - t94 * t99;
	t95 = sin(pkin(6));
	t110 = t95 * t96;
	t105 = t94 * t101;
	t108 = t97 * t99;
	t88 = t96 * t108 + t105;
	t93 = pkin(11) + qJ(4);
	t91 = sin(t93);
	t92 = cos(t93);
	t77 = -t91 * t110 + t88 * t92;
	t98 = sin(qJ(5));
	t69 = t102 * t100 + t77 * t98;
	t109 = t95 * t99;
	t86 = t92 * t109 + t97 * t91;
	t82 = t95 * t101 * t100 + t86 * t98;
	t66 = atan2(-t69, t82);
	t63 = sin(t66);
	t64 = cos(t66);
	t61 = -t63 * t69 + t64 * t82;
	t60 = 0.1e1 / t61 ^ 2;
	t89 = t97 * t105 + t96 * t99;
	t106 = t89 * t100;
	t111 = t94 * t95;
	t90 = -t94 * t108 + t104;
	t79 = t91 * t111 + t90 * t92;
	t72 = t79 * t98 - t106;
	t116 = t60 * t72;
	t73 = t79 * t100 + t89 * t98;
	t68 = 0.1e1 / t73 ^ 2;
	t78 = t92 * t111 - t90 * t91;
	t115 = t68 * t78;
	t81 = 0.1e1 / t82 ^ 2;
	t114 = t69 * t81;
	t113 = t78 ^ 2 * t68;
	t112 = t92 * t98;
	t107 = t101 * t98;
	t103 = -t63 * t82 - t64 * t69;
	t85 = -t91 * t109 + t97 * t92;
	t84 = (-t100 * t99 + t92 * t107) * t95;
	t83 = t86 * t100 - t95 * t107;
	t80 = 0.1e1 / t82;
	t76 = -t92 * t110 - t88 * t91;
	t74 = -t88 * t100 + t102 * t112;
	t71 = t77 * t100 - t102 * t98;
	t67 = 0.1e1 / t73;
	t65 = 0.1e1 / (t69 ^ 2 * t81 + 0.1e1);
	t62 = 0.1e1 / (0.1e1 + t113);
	t59 = 0.1e1 / t61;
	t58 = 0.1e1 / (t72 ^ 2 * t60 + 0.1e1);
	t57 = (t85 * t114 - t76 * t80) * t98 * t65;
	t56 = (t84 * t114 - t74 * t80) * t65;
	t55 = (t83 * t114 - t71 * t80) * t65;
	t1 = [0, t56, 0, t57, t55, 0; 0, ((-t90 * t100 - t89 * t112) * t59 - (t103 * t56 - t63 * t74 + t64 * t84) * t116) * t58, 0, (t78 * t98 * t59 - ((-t63 * t76 + t64 * t85) * t98 + t103 * t57) * t116) * t58, (t73 * t59 - (t103 * t55 - t63 * t71 + t64 * t83) * t116) * t58, 0; 0, (t89 * t91 * t67 - (-t92 * t106 + t90 * t98) * t115) * t62, 0, (-t100 * t113 - t67 * t79) * t62, t72 * t62 * t115, 0;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end