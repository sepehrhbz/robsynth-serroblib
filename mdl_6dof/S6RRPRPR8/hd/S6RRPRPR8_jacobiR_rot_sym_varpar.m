% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRPRPR8
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta3]';
% 
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:17
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RRPRPR8_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR8_jacobiR_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRPR8_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRPR8_jacobiR_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->3), mult. (0->0), div. (0->0), fcn. (4->2), ass. (0->3)
	t9 = cos(qJ(1));
	t8 = sin(qJ(1));
	t1 = [-t8, 0, 0, 0, 0, 0; t9, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; -t9, 0, 0, 0, 0, 0; -t8, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiR_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (7->7), mult. (8->4), div. (0->0), fcn. (20->4), ass. (0->9)
	t10 = sin(qJ(1));
	t9 = sin(qJ(2));
	t16 = t10 * t9;
	t12 = cos(qJ(1));
	t15 = t12 * t9;
	t11 = cos(qJ(2));
	t14 = t10 * t11;
	t13 = t12 * t11;
	t1 = [-t14, -t15, 0, 0, 0, 0; t13, -t16, 0, 0, 0, 0; 0, t11, 0, 0, 0, 0; t16, -t13, 0, 0, 0, 0; -t15, -t14, 0, 0, 0, 0; 0, -t9, 0, 0, 0, 0; t12, 0, 0, 0, 0, 0; t10, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (8->8), mult. (26->18), div. (0->0), fcn. (45->6), ass. (0->12)
	t47 = sin(qJ(2));
	t48 = sin(qJ(1));
	t55 = t48 * t47;
	t45 = sin(pkin(10));
	t49 = cos(qJ(2));
	t54 = t49 * t45;
	t46 = cos(pkin(10));
	t53 = t49 * t46;
	t50 = cos(qJ(1));
	t52 = t50 * t47;
	t51 = t50 * t49;
	t1 = [t50 * t45 - t48 * t53, -t46 * t52, 0, 0, 0, 0; t48 * t45 + t46 * t51, -t46 * t55, 0, 0, 0, 0; 0, t53, 0, 0, 0, 0; t50 * t46 + t48 * t54, t45 * t52, 0, 0, 0, 0; -t45 * t51 + t48 * t46, t45 * t55, 0, 0, 0, 0; 0, -t54, 0, 0, 0, 0; -t55, t51, 0, 0, 0, 0; t52, t48 * t49, 0, 0, 0, 0; 0, t47, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (38->13), mult. (40->20), div. (0->0), fcn. (69->6), ass. (0->17)
	t68 = sin(qJ(2));
	t69 = sin(qJ(1));
	t76 = t69 * t68;
	t67 = pkin(10) + qJ(4);
	t65 = sin(t67);
	t70 = cos(qJ(2));
	t75 = t70 * t65;
	t66 = cos(t67);
	t74 = t70 * t66;
	t71 = cos(qJ(1));
	t73 = t71 * t68;
	t72 = t71 * t70;
	t64 = t69 * t65 + t66 * t72;
	t63 = -t65 * t72 + t69 * t66;
	t62 = t71 * t65 - t69 * t74;
	t61 = t71 * t66 + t69 * t75;
	t1 = [t62, -t66 * t73, 0, t63, 0, 0; t64, -t66 * t76, 0, -t61, 0, 0; 0, t74, 0, -t68 * t65, 0, 0; t61, t65 * t73, 0, -t64, 0, 0; t63, t65 * t76, 0, t62, 0, 0; 0, -t75, 0, -t68 * t66, 0, 0; -t76, t72, 0, 0, 0, 0; t73, t69 * t70, 0, 0, 0, 0; 0, t68, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (38->13), mult. (40->20), div. (0->0), fcn. (69->6), ass. (0->17)
	t83 = sin(qJ(2));
	t84 = sin(qJ(1));
	t91 = t84 * t83;
	t82 = pkin(10) + qJ(4);
	t80 = sin(t82);
	t85 = cos(qJ(2));
	t90 = t85 * t80;
	t81 = cos(t82);
	t89 = t85 * t81;
	t86 = cos(qJ(1));
	t88 = t86 * t83;
	t87 = t86 * t85;
	t79 = t84 * t80 + t81 * t87;
	t78 = t80 * t87 - t84 * t81;
	t77 = -t86 * t80 + t84 * t89;
	t76 = -t86 * t81 - t84 * t90;
	t1 = [-t77, -t81 * t88, 0, -t78, 0, 0; t79, -t81 * t91, 0, t76, 0, 0; 0, t89, 0, -t83 * t80, 0, 0; -t91, t87, 0, 0, 0, 0; t88, t84 * t85, 0, 0, 0, 0; 0, t83, 0, 0, 0, 0; t76, -t80 * t88, 0, t79, 0, 0; t78, -t80 * t91, 0, t77, 0, 0; 0, t90, 0, t83 * t81, 0, 0;];
	JR_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiR_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (118->26), mult. (148->32), div. (0->0), fcn. (221->8), ass. (0->24)
	t102 = sin(qJ(6));
	t105 = cos(qJ(6));
	t101 = pkin(10) + qJ(4);
	t100 = cos(t101);
	t107 = cos(qJ(1));
	t104 = sin(qJ(1));
	t106 = cos(qJ(2));
	t115 = t104 * t106;
	t99 = sin(t101);
	t93 = t107 * t100 + t99 * t115;
	t94 = t100 * t115 - t107 * t99;
	t113 = t94 * t102 - t93 * t105;
	t103 = sin(qJ(2));
	t110 = t100 * t105 + t102 * t99;
	t117 = t110 * t103;
	t114 = t107 * t106;
	t112 = t93 * t102 + t94 * t105;
	t95 = -t104 * t100 + t99 * t114;
	t96 = t100 * t114 + t104 * t99;
	t111 = t96 * t102 - t95 * t105;
	t89 = t95 * t102 + t96 * t105;
	t109 = t100 * t102 - t105 * t99;
	t91 = t109 * t103;
	t1 = [-t112, -t107 * t117, 0, t111, 0, -t111; t89, -t104 * t117, 0, t113, 0, -t113; 0, t110 * t106, 0, t91, 0, -t91; t113, t107 * t91, 0, t89, 0, -t89; -t111, t104 * t91, 0, t112, 0, -t112; 0, -t109 * t106, 0, t117, 0, -t117; t104 * t103, -t114, 0, 0, 0, 0; -t107 * t103, -t115, 0, 0, 0, 0; 0, -t103, 0, 0, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,6);
end