% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6PRRPRP1
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
%   Wie in S6PRRPRP1_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1,theta4]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 22:16
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6PRRPRP1_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP1_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRRPRP1_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPRP1_jacobia_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:16:24
	% EndTime: 2019-10-09 22:16:24
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:16:24
	% EndTime: 2019-10-09 22:16:24
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:16:24
	% EndTime: 2019-10-09 22:16:24
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (10->0), mult. (27->0), div. (5->0), fcn. (35->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 1, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:16:24
	% EndTime: 2019-10-09 22:16:24
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (101->18), mult. (268->43), div. (47->11), fcn. (395->11), ass. (0->29)
	t41 = sin(pkin(10));
	t42 = sin(pkin(6));
	t53 = t41 * t42;
	t48 = cos(qJ(2));
	t52 = t42 * t48;
	t44 = cos(pkin(6));
	t46 = sin(qJ(2));
	t51 = t44 * t46;
	t50 = t44 * t48;
	t43 = cos(pkin(10));
	t37 = -t41 * t51 + t43 * t48;
	t45 = sin(qJ(3));
	t47 = cos(qJ(3));
	t28 = t37 * t47 + t45 * t53;
	t26 = 0.1e1 / t28 ^ 2;
	t27 = t37 * t45 - t47 * t53;
	t49 = t27 ^ 2 * t26 + 0.1e1;
	t40 = 0.1e1 / t48 ^ 2;
	t36 = t41 * t50 + t43 * t46;
	t35 = t41 * t48 + t43 * t51;
	t33 = t41 * t46 - t43 * t50;
	t31 = atan2(-t33, -t52);
	t30 = cos(t31);
	t29 = sin(t31);
	t25 = 0.1e1 / t49;
	t24 = -t29 * t33 - t30 * t52;
	t23 = 0.1e1 / t24 ^ 2;
	t21 = (t35 / t48 + t46 * t33 * t40) / t42 / (0.1e1 + t33 ^ 2 / t42 ^ 2 * t40);
	t1 = [0, t21, 0, 0, 0, 0; 0, (t37 / t24 - (t30 * t42 * t46 - t29 * t35 + (t29 * t52 - t30 * t33) * t21) * t36 * t23) / (t36 ^ 2 * t23 + 0.1e1), 0, 0, 0, 0; 0, (-t45 / t28 + t47 * t27 * t26) * t36 * t25, t49 * t25, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:16:24
	% EndTime: 2019-10-09 22:16:24
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (131->19), mult. (268->43), div. (47->11), fcn. (395->11), ass. (0->30)
	t50 = sin(pkin(10));
	t51 = sin(pkin(6));
	t60 = t50 * t51;
	t55 = cos(qJ(2));
	t59 = t51 * t55;
	t53 = cos(pkin(6));
	t54 = sin(qJ(2));
	t58 = t53 * t54;
	t57 = t53 * t55;
	t52 = cos(pkin(10));
	t43 = -t50 * t58 + t52 * t55;
	t48 = qJ(3) + pkin(11);
	t45 = sin(t48);
	t46 = cos(t48);
	t34 = t43 * t46 + t45 * t60;
	t32 = 0.1e1 / t34 ^ 2;
	t33 = t43 * t45 - t46 * t60;
	t56 = t33 ^ 2 * t32 + 0.1e1;
	t49 = 0.1e1 / t55 ^ 2;
	t42 = t50 * t57 + t52 * t54;
	t41 = t50 * t55 + t52 * t58;
	t39 = t50 * t54 - t52 * t57;
	t37 = atan2(-t39, -t59);
	t36 = cos(t37);
	t35 = sin(t37);
	t31 = 0.1e1 / t56;
	t30 = -t35 * t39 - t36 * t59;
	t29 = 0.1e1 / t30 ^ 2;
	t27 = (t41 / t55 + t54 * t39 * t49) / t51 / (0.1e1 + t39 ^ 2 / t51 ^ 2 * t49);
	t1 = [0, t27, 0, 0, 0, 0; 0, (t43 / t30 - (t36 * t51 * t54 - t35 * t41 + (t35 * t59 - t36 * t39) * t27) * t42 * t29) / (t42 ^ 2 * t29 + 0.1e1), 0, 0, 0, 0; 0, (-t45 / t34 + t46 * t33 * t32) * t42 * t31, t56 * t31, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:16:24
	% EndTime: 2019-10-09 22:16:24
	% DurationCPUTime: 0.24s
	% Computational Cost: add. (641->31), mult. (949->79), div. (65->9), fcn. (1349->13), ass. (0->52)
	t71 = sin(pkin(10));
	t73 = cos(pkin(10));
	t78 = cos(qJ(2));
	t74 = cos(pkin(6));
	t76 = sin(qJ(2));
	t82 = t74 * t76;
	t64 = t71 * t78 + t73 * t82;
	t70 = qJ(3) + pkin(11);
	t68 = sin(t70);
	t69 = cos(t70);
	t72 = sin(pkin(6));
	t85 = t72 * t73;
	t54 = t64 * t68 + t69 * t85;
	t84 = t72 * t76;
	t61 = t68 * t84 - t69 * t74;
	t53 = atan2(-t54, t61);
	t48 = sin(t53);
	t49 = cos(t53);
	t44 = -t48 * t54 + t49 * t61;
	t43 = 0.1e1 / t44 ^ 2;
	t66 = -t71 * t82 + t73 * t78;
	t86 = t71 * t72;
	t57 = t66 * t68 - t69 * t86;
	t91 = t43 * t57;
	t58 = t66 * t69 + t68 * t86;
	t77 = cos(qJ(5));
	t81 = t74 * t78;
	t65 = t71 * t81 + t73 * t76;
	t75 = sin(qJ(5));
	t88 = t65 * t75;
	t51 = t58 * t77 + t88;
	t47 = 0.1e1 / t51 ^ 2;
	t87 = t65 * t77;
	t50 = t58 * t75 - t87;
	t90 = t47 * t50;
	t60 = 0.1e1 / t61 ^ 2;
	t89 = t54 * t60;
	t83 = t72 * t78;
	t80 = t47 * t50 ^ 2 + 0.1e1;
	t79 = -t48 * t61 - t49 * t54;
	t63 = -t71 * t76 + t73 * t81;
	t62 = t68 * t74 + t69 * t84;
	t59 = 0.1e1 / t61;
	t56 = t64 * t69 - t68 * t85;
	t52 = 0.1e1 / (t54 ^ 2 * t60 + 0.1e1);
	t46 = 0.1e1 / t51;
	t45 = 0.1e1 / t80;
	t42 = 0.1e1 / t44;
	t41 = 0.1e1 / (t43 * t57 ^ 2 + 0.1e1);
	t40 = (-t59 * t63 + t83 * t89) * t68 * t52;
	t39 = (-t56 * t59 + t62 * t89) * t52;
	t1 = [0, t40, t39, 0, 0, 0; 0, (-t65 * t68 * t42 - ((-t48 * t63 + t49 * t83) * t68 + t79 * t40) * t91) * t41, (t58 * t42 - (t79 * t39 - t48 * t56 + t49 * t62) * t91) * t41, 0, 0, 0; 0, ((-t66 * t77 - t69 * t88) * t46 - (t66 * t75 - t69 * t87) * t90) * t45, (-t46 * t75 + t77 * t90) * t57 * t45, 0, t80 * t45, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:16:24
	% EndTime: 2019-10-09 22:16:24
	% DurationCPUTime: 0.19s
	% Computational Cost: add. (641->31), mult. (949->79), div. (65->9), fcn. (1349->13), ass. (0->52)
	t79 = sin(pkin(10));
	t81 = cos(pkin(10));
	t86 = cos(qJ(2));
	t82 = cos(pkin(6));
	t84 = sin(qJ(2));
	t90 = t82 * t84;
	t72 = t79 * t86 + t81 * t90;
	t78 = qJ(3) + pkin(11);
	t76 = sin(t78);
	t77 = cos(t78);
	t80 = sin(pkin(6));
	t93 = t80 * t81;
	t62 = t72 * t76 + t77 * t93;
	t92 = t80 * t84;
	t69 = t76 * t92 - t82 * t77;
	t61 = atan2(-t62, t69);
	t56 = sin(t61);
	t57 = cos(t61);
	t52 = -t56 * t62 + t57 * t69;
	t51 = 0.1e1 / t52 ^ 2;
	t74 = -t79 * t90 + t81 * t86;
	t94 = t79 * t80;
	t65 = t74 * t76 - t77 * t94;
	t99 = t51 * t65;
	t66 = t74 * t77 + t76 * t94;
	t85 = cos(qJ(5));
	t89 = t82 * t86;
	t73 = t79 * t89 + t81 * t84;
	t83 = sin(qJ(5));
	t96 = t73 * t83;
	t59 = t66 * t85 + t96;
	t55 = 0.1e1 / t59 ^ 2;
	t95 = t73 * t85;
	t58 = t66 * t83 - t95;
	t98 = t55 * t58;
	t68 = 0.1e1 / t69 ^ 2;
	t97 = t62 * t68;
	t91 = t80 * t86;
	t88 = t58 ^ 2 * t55 + 0.1e1;
	t87 = -t56 * t69 - t57 * t62;
	t71 = -t79 * t84 + t81 * t89;
	t70 = t82 * t76 + t77 * t92;
	t67 = 0.1e1 / t69;
	t64 = t72 * t77 - t76 * t93;
	t60 = 0.1e1 / (t62 ^ 2 * t68 + 0.1e1);
	t54 = 0.1e1 / t59;
	t53 = 0.1e1 / t88;
	t50 = 0.1e1 / t52;
	t49 = 0.1e1 / (t65 ^ 2 * t51 + 0.1e1);
	t48 = (-t67 * t71 + t91 * t97) * t76 * t60;
	t47 = (-t64 * t67 + t70 * t97) * t60;
	t1 = [0, t48, t47, 0, 0, 0; 0, (-t73 * t76 * t50 - ((-t56 * t71 + t57 * t91) * t76 + t87 * t48) * t99) * t49, (t66 * t50 - (t87 * t47 - t56 * t64 + t57 * t70) * t99) * t49, 0, 0, 0; 0, ((-t74 * t85 - t77 * t96) * t54 - (t74 * t83 - t77 * t95) * t98) * t53, (-t54 * t83 + t85 * t98) * t65 * t53, 0, t88 * t53, 0;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end