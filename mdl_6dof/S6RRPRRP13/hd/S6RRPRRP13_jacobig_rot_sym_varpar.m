% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S6RRPRRP13
% Use Code from Maple symbolic Code Generation
%
% Geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorgeschwindigkeit und Geschw. der verallgemeinerten Koordinaten.
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5]';
% 
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:48
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RRPRRP13_jacobig_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP13_jacobig_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRRP13_jacobig_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP13_jacobig_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobig_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:48:31
	% EndTime: 2019-10-10 10:48:31
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobig_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:48:31
	% EndTime: 2019-10-10 10:48:31
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobig_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:48:31
	% EndTime: 2019-10-10 10:48:31
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (1->1), mult. (2->2), div. (0->0), fcn. (5->4), ass. (0->2)
	t43 = sin(pkin(6));
	t1 = [0, sin(qJ(1)) * t43, 0, 0, 0, 0; 0, -cos(qJ(1)) * t43, 0, 0, 0, 0; 1, cos(pkin(6)), 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobig_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:48:31
	% EndTime: 2019-10-10 10:48:31
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (1->1), mult. (2->2), div. (0->0), fcn. (5->4), ass. (0->2)
	t55 = sin(pkin(6));
	t1 = [0, sin(qJ(1)) * t55, 0, 0, 0, 0; 0, -cos(qJ(1)) * t55, 0, 0, 0, 0; 1, cos(pkin(6)), 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobig_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:48:31
	% EndTime: 2019-10-10 10:48:31
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (3->3), mult. (9->8), div. (0->0), fcn. (17->6), ass. (0->8)
	t71 = cos(pkin(6));
	t72 = sin(qJ(2));
	t76 = t71 * t72;
	t75 = cos(qJ(1));
	t74 = cos(qJ(2));
	t73 = sin(qJ(1));
	t70 = sin(pkin(6));
	t1 = [0, t73 * t70, 0, -t73 * t76 + t75 * t74, 0, 0; 0, -t75 * t70, 0, t73 * t74 + t75 * t76, 0, 0; 1, t71, 0, t70 * t72, 0, 0;];
	Jg_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobig_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:48:31
	% EndTime: 2019-10-10 10:48:31
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (8->8), mult. (24->18), div. (0->0), fcn. (40->8), ass. (0->15)
	t100 = sin(pkin(6));
	t104 = sin(qJ(1));
	t113 = t104 * t100;
	t103 = sin(qJ(2));
	t112 = t104 * t103;
	t106 = cos(qJ(2));
	t111 = t104 * t106;
	t107 = cos(qJ(1));
	t110 = t107 * t100;
	t109 = t107 * t103;
	t108 = t107 * t106;
	t105 = cos(qJ(4));
	t102 = sin(qJ(4));
	t101 = cos(pkin(6));
	t1 = [0, t113, 0, -t101 * t112 + t108, t102 * t113 - (t101 * t111 + t109) * t105, 0; 0, -t110, 0, t101 * t109 + t111, -t102 * t110 - (-t101 * t108 + t112) * t105, 0; 1, t101, 0, t100 * t103, t100 * t106 * t105 + t101 * t102, 0;];
	Jg_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobig_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:48:31
	% EndTime: 2019-10-10 10:48:31
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (8->8), mult. (24->18), div. (0->0), fcn. (40->8), ass. (0->15)
	t106 = sin(pkin(6));
	t110 = sin(qJ(1));
	t119 = t110 * t106;
	t109 = sin(qJ(2));
	t118 = t110 * t109;
	t112 = cos(qJ(2));
	t117 = t110 * t112;
	t113 = cos(qJ(1));
	t116 = t113 * t106;
	t115 = t113 * t109;
	t114 = t113 * t112;
	t111 = cos(qJ(4));
	t108 = sin(qJ(4));
	t107 = cos(pkin(6));
	t1 = [0, t119, 0, -t107 * t118 + t114, t108 * t119 - (t107 * t117 + t115) * t111, 0; 0, -t116, 0, t107 * t115 + t117, -t108 * t116 - (-t107 * t114 + t118) * t111, 0; 1, t107, 0, t106 * t109, t106 * t112 * t111 + t107 * t108, 0;];
	Jg_rot = t1;
else
	Jg_rot=NaN(3,6);
end