% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RRPRR16
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d4,d5]';
% 
% Output:
% JR_rot [9x5]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 19:30
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S5RRPRR16_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR16_jacobiR_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRPRR16_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR16_jacobiR_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:30:31
	% EndTime: 2019-12-29 19:30:31
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:30:30
	% EndTime: 2019-12-29 19:30:30
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (3->3), mult. (0->0), div. (0->0), fcn. (4->2), ass. (0->3)
	t9 = cos(qJ(1));
	t8 = sin(qJ(1));
	t1 = [-t8, 0, 0, 0, 0; t9, 0, 0, 0, 0; 0, 0, 0, 0, 0; -t9, 0, 0, 0, 0; -t8, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiR_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:30:35
	% EndTime: 2019-12-29 19:30:35
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (9->7), mult. (28->12), div. (0->0), fcn. (48->6), ass. (0->15)
	t50 = sin(qJ(2));
	t51 = sin(qJ(1));
	t57 = t51 * t50;
	t52 = cos(qJ(2));
	t56 = t51 * t52;
	t53 = cos(qJ(1));
	t55 = t53 * t50;
	t54 = t53 * t52;
	t49 = cos(pkin(5));
	t48 = sin(pkin(5));
	t47 = -t49 * t57 + t54;
	t46 = -t49 * t56 - t55;
	t45 = -t49 * t55 - t56;
	t44 = -t49 * t54 + t57;
	t1 = [t45, t46, 0, 0, 0; t47, -t44, 0, 0, 0; 0, t48 * t52, 0, 0, 0; t44, -t47, 0, 0, 0; t46, t45, 0, 0, 0; 0, -t48 * t50, 0, 0, 0; t53 * t48, 0, 0, 0, 0; t51 * t48, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:30:30
	% EndTime: 2019-12-29 19:30:30
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (9->7), mult. (28->12), div. (0->0), fcn. (48->6), ass. (0->15)
	t62 = sin(qJ(2));
	t63 = sin(qJ(1));
	t69 = t63 * t62;
	t64 = cos(qJ(2));
	t68 = t63 * t64;
	t65 = cos(qJ(1));
	t67 = t65 * t62;
	t66 = t65 * t64;
	t61 = cos(pkin(5));
	t60 = sin(pkin(5));
	t59 = -t61 * t69 + t66;
	t58 = t61 * t68 + t67;
	t57 = t61 * t67 + t68;
	t56 = -t61 * t66 + t69;
	t1 = [t65 * t60, 0, 0, 0, 0; t63 * t60, 0, 0, 0, 0; 0, 0, 0, 0, 0; t57, t58, 0, 0, 0; -t59, t56, 0, 0, 0; 0, -t60 * t64, 0, 0, 0; -t56, t59, 0, 0, 0; t58, t57, 0, 0, 0; 0, t60 * t62, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:30:30
	% EndTime: 2019-12-29 19:30:30
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (26->15), mult. (87->30), div. (0->0), fcn. (134->8), ass. (0->25)
	t85 = sin(pkin(5));
	t87 = sin(qJ(4));
	t102 = t85 * t87;
	t90 = cos(qJ(4));
	t101 = t85 * t90;
	t91 = cos(qJ(2));
	t100 = t85 * t91;
	t92 = cos(qJ(1));
	t99 = t85 * t92;
	t88 = sin(qJ(2));
	t89 = sin(qJ(1));
	t98 = t89 * t88;
	t97 = t89 * t91;
	t96 = t92 * t88;
	t95 = t92 * t91;
	t86 = cos(pkin(5));
	t79 = -t86 * t95 + t98;
	t94 = -t79 * t87 + t90 * t99;
	t93 = t79 * t90 + t87 * t99;
	t82 = -t86 * t98 + t95;
	t81 = t86 * t97 + t96;
	t80 = t86 * t96 + t97;
	t78 = t89 * t101 + t81 * t87;
	t77 = -t89 * t102 + t81 * t90;
	t1 = [t94, t82 * t87, 0, t77, 0; t78, t80 * t87, 0, t93, 0; 0, t88 * t102, 0, -t90 * t100 - t86 * t87, 0; -t93, t82 * t90, 0, -t78, 0; t77, t80 * t90, 0, t94, 0; 0, t88 * t101, 0, t87 * t100 - t86 * t90, 0; -t80, -t81, 0, 0, 0; t82, -t79, 0, 0, 0; 0, t100, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:30:30
	% EndTime: 2019-12-29 19:30:30
	% DurationCPUTime: 0.29s
	% Computational Cost: add. (77->31), mult. (219->63), div. (0->0), fcn. (320->10), ass. (0->36)
	t131 = cos(pkin(5));
	t138 = cos(qJ(2));
	t139 = cos(qJ(1));
	t140 = t139 * t138;
	t134 = sin(qJ(2));
	t135 = sin(qJ(1));
	t143 = t135 * t134;
	t124 = -t131 * t140 + t143;
	t133 = sin(qJ(4));
	t137 = cos(qJ(4));
	t130 = sin(pkin(5));
	t148 = t130 * t139;
	t119 = -t124 * t133 + t137 * t148;
	t141 = t139 * t134;
	t142 = t135 * t138;
	t125 = t131 * t141 + t142;
	t132 = sin(qJ(5));
	t136 = cos(qJ(5));
	t154 = t119 * t132 + t125 * t136;
	t153 = t119 * t136 - t125 * t132;
	t150 = t130 * t137;
	t149 = t130 * t138;
	t147 = t132 * t133;
	t146 = t132 * t134;
	t145 = t133 * t136;
	t144 = t134 * t136;
	t118 = t124 * t137 + t133 * t148;
	t127 = -t131 * t143 + t140;
	t126 = t131 * t142 + t141;
	t123 = t131 * t137 - t133 * t149;
	t122 = -t131 * t133 - t137 * t149;
	t117 = t126 * t133 + t135 * t150;
	t116 = t135 * t130 * t133 - t126 * t137;
	t115 = t117 * t136 + t127 * t132;
	t114 = -t117 * t132 + t127 * t136;
	t1 = [t153, -t126 * t132 + t127 * t145, 0, -t116 * t136, t114; t115, -t124 * t132 + t125 * t145, 0, t118 * t136, t154; 0, (t132 * t138 + t133 * t144) * t130, 0, t122 * t136, -t123 * t132 + t130 * t144; -t154, -t126 * t136 - t127 * t147, 0, t116 * t132, -t115; t114, -t124 * t136 - t125 * t147, 0, -t118 * t132, t153; 0, (-t133 * t146 + t136 * t138) * t130, 0, -t122 * t132, -t123 * t136 - t130 * t146; t118, -t127 * t137, 0, t117, 0; t116, -t125 * t137, 0, -t119, 0; 0, -t134 * t150, 0, t123, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,5);
end