% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRPRPR11
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
%   Wie in S6RRPRPR11_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta5]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:22
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RRPRPR11_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR11_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRPR11_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRPR11_jacobia_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:22:42
	% EndTime: 2019-10-10 10:22:42
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:22:42
	% EndTime: 2019-10-10 10:22:42
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:22:42
	% EndTime: 2019-10-10 10:22:42
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:22:42
	% EndTime: 2019-10-10 10:22:43
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (82->16), mult. (149->39), div. (43->9), fcn. (227->7), ass. (0->27)
	t29 = cos(qJ(1));
	t25 = t29 ^ 2;
	t28 = cos(qJ(2));
	t26 = sin(qJ(2));
	t27 = sin(qJ(1));
	t32 = t27 * t26;
	t18 = atan2(-t32, -t28);
	t16 = sin(t18);
	t17 = cos(t18);
	t14 = -t16 * t32 - t17 * t28;
	t13 = 0.1e1 / t14 ^ 2;
	t38 = t13 * t26;
	t37 = t16 * t28;
	t21 = t26 ^ 2;
	t31 = t28 ^ 2;
	t36 = t21 / t31;
	t30 = t27 ^ 2;
	t35 = 0.1e1 / t30 * t25;
	t34 = t26 * t29;
	t19 = 0.1e1 / (t30 * t36 + 0.1e1);
	t33 = t27 * t19;
	t23 = 0.1e1 / t28;
	t20 = 0.1e1 / (t31 * t35 + 0.1e1);
	t15 = (0.1e1 + t36) * t33;
	t12 = 0.1e1 / t14;
	t11 = 0.1e1 / (t25 * t21 * t13 + 0.1e1);
	t1 = [t23 * t19 * t34, t15, 0, 0, 0, 0; (-t12 * t32 - (-t17 * t21 * t23 * t33 + (t19 - 0.1e1) * t26 * t16) * t25 * t38) * t11, (t28 * t12 - (-t27 * t37 + t17 * t26 + (-t17 * t32 + t37) * t15) * t38) * t29 * t11, 0, 0, 0, 0; (-0.1e1 - t35) * t28 * t20, -0.1e1 / t27 * t20 * t34, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:22:43
	% EndTime: 2019-10-10 10:22:43
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (87->20), mult. (224->54), div. (52->9), fcn. (332->9), ass. (0->35)
	t40 = sin(qJ(2));
	t41 = sin(qJ(1));
	t43 = cos(qJ(2));
	t49 = t41 * t43;
	t34 = atan2(-t49, t40);
	t32 = sin(t34);
	t33 = cos(t34);
	t25 = -t32 * t49 + t33 * t40;
	t24 = 0.1e1 / t25 ^ 2;
	t44 = cos(qJ(1));
	t56 = t24 * t44 ^ 2;
	t39 = sin(qJ(4));
	t47 = t44 * t39;
	t42 = cos(qJ(4));
	t50 = t41 * t42;
	t31 = t40 * t47 + t50;
	t29 = 0.1e1 / t31 ^ 2;
	t46 = t44 * t42;
	t51 = t41 * t39;
	t30 = -t40 * t46 + t51;
	t55 = t29 * t30;
	t54 = t32 * t40;
	t38 = t43 ^ 2;
	t53 = 0.1e1 / t40 ^ 2 * t38;
	t35 = 0.1e1 / (t41 ^ 2 * t53 + 0.1e1);
	t52 = t41 * t35;
	t48 = t43 * t44;
	t45 = t30 ^ 2 * t29 + 0.1e1;
	t36 = 0.1e1 / t40;
	t28 = 0.1e1 / t31;
	t27 = (0.1e1 + t53) * t52;
	t26 = 0.1e1 / t45;
	t23 = 0.1e1 / t25;
	t22 = 0.1e1 / (t38 * t56 + 0.1e1);
	t1 = [-t36 * t35 * t48, t27, 0, 0, 0, 0; (-t23 * t49 - (t33 * t36 * t38 * t52 + (t35 - 0.1e1) * t43 * t32) * t43 * t56) * t22, (-t40 * t23 - (t41 * t54 + t33 * t43 + (-t33 * t49 - t54) * t27) * t43 * t24) * t44 * t22, 0, 0, 0, 0; ((t40 * t50 + t47) * t28 - (-t40 * t51 + t46) * t55) * t26, (-t28 * t42 - t39 * t55) * t26 * t48, 0, t45 * t26, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:22:43
	% EndTime: 2019-10-10 10:22:43
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (135->21), mult. (224->54), div. (52->9), fcn. (332->9), ass. (0->36)
	t47 = sin(qJ(2));
	t48 = sin(qJ(1));
	t49 = cos(qJ(2));
	t55 = t48 * t49;
	t39 = atan2(-t55, t47);
	t37 = sin(t39);
	t38 = cos(t39);
	t31 = -t37 * t55 + t38 * t47;
	t30 = 0.1e1 / t31 ^ 2;
	t50 = cos(qJ(1));
	t62 = t30 * t50 ^ 2;
	t43 = qJ(4) + pkin(10);
	t41 = sin(t43);
	t53 = t50 * t41;
	t42 = cos(t43);
	t56 = t48 * t42;
	t36 = t47 * t53 + t56;
	t34 = 0.1e1 / t36 ^ 2;
	t52 = t50 * t42;
	t57 = t48 * t41;
	t35 = -t47 * t52 + t57;
	t61 = t34 * t35;
	t60 = t37 * t47;
	t46 = t49 ^ 2;
	t59 = 0.1e1 / t47 ^ 2 * t46;
	t40 = 0.1e1 / (t48 ^ 2 * t59 + 0.1e1);
	t58 = t48 * t40;
	t54 = t49 * t50;
	t51 = t35 ^ 2 * t34 + 0.1e1;
	t44 = 0.1e1 / t47;
	t33 = 0.1e1 / t36;
	t32 = (0.1e1 + t59) * t58;
	t29 = 0.1e1 / t31;
	t28 = 0.1e1 / t51;
	t27 = 0.1e1 / (t46 * t62 + 0.1e1);
	t1 = [-t44 * t40 * t54, t32, 0, 0, 0, 0; (-t29 * t55 - (t38 * t44 * t46 * t58 + (t40 - 0.1e1) * t49 * t37) * t49 * t62) * t27, (-t47 * t29 - (t48 * t60 + t38 * t49 + (-t38 * t55 - t60) * t32) * t49 * t30) * t50 * t27, 0, 0, 0, 0; ((t47 * t56 + t53) * t33 - (-t47 * t57 + t52) * t61) * t28, (-t33 * t42 - t41 * t61) * t28 * t54, 0, t51 * t28, 0, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:22:43
	% EndTime: 2019-10-10 10:22:43
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (221->21), mult. (251->54), div. (57->9), fcn. (367->9), ass. (0->37)
	t58 = sin(qJ(2));
	t59 = sin(qJ(1));
	t60 = cos(qJ(2));
	t66 = t59 * t60;
	t50 = atan2(-t66, t58);
	t48 = sin(t50);
	t49 = cos(t50);
	t42 = -t48 * t66 + t49 * t58;
	t41 = 0.1e1 / t42 ^ 2;
	t61 = cos(qJ(1));
	t73 = t41 * t61 ^ 2;
	t54 = qJ(4) + pkin(10) + qJ(6);
	t52 = sin(t54);
	t64 = t61 * t52;
	t53 = cos(t54);
	t67 = t59 * t53;
	t47 = t58 * t64 + t67;
	t45 = 0.1e1 / t47 ^ 2;
	t63 = t61 * t53;
	t68 = t59 * t52;
	t46 = -t58 * t63 + t68;
	t72 = t45 * t46;
	t71 = t48 * t58;
	t57 = t60 ^ 2;
	t70 = 0.1e1 / t58 ^ 2 * t57;
	t51 = 0.1e1 / (t59 ^ 2 * t70 + 0.1e1);
	t69 = t59 * t51;
	t65 = t60 * t61;
	t62 = t46 ^ 2 * t45 + 0.1e1;
	t55 = 0.1e1 / t58;
	t44 = 0.1e1 / t47;
	t43 = (0.1e1 + t70) * t69;
	t40 = 0.1e1 / t42;
	t39 = 0.1e1 / (t57 * t73 + 0.1e1);
	t38 = 0.1e1 / t62;
	t37 = t62 * t38;
	t1 = [-t55 * t51 * t65, t43, 0, 0, 0, 0; (-t40 * t66 - (t49 * t55 * t57 * t69 + (t51 - 0.1e1) * t60 * t48) * t60 * t73) * t39, (-t58 * t40 - (t59 * t71 + t49 * t60 + (-t49 * t66 - t71) * t43) * t60 * t41) * t61 * t39, 0, 0, 0, 0; ((t58 * t67 + t64) * t44 - (-t58 * t68 + t63) * t72) * t38, (-t44 * t53 - t52 * t72) * t38 * t65, 0, t37, 0, t37;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end