% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S6RRPRPR8
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta3]';
% 
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:17
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RRPRPR8_jacobig_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR8_jacobig_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRPR8_jacobig_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRPR8_jacobig_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobig_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobig_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobig_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (1->1), mult. (0->0), div. (0->0), fcn. (2->2), ass. (0->1)
	t1 = [0, sin(qJ(1)), 0, 0, 0, 0; 0, -cos(qJ(1)), 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobig_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (1->1), mult. (0->0), div. (0->0), fcn. (2->2), ass. (0->1)
	t1 = [0, sin(qJ(1)), 0, 0, 0, 0; 0, -cos(qJ(1)), 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobig_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (2->2), mult. (2->2), div. (0->0), fcn. (7->4), ass. (0->4)
	t60 = cos(qJ(1));
	t59 = sin(qJ(1));
	t58 = sin(qJ(2));
	t1 = [0, t59, 0, t60 * t58, 0, 0; 0, -t60, 0, t59 * t58, 0, 0; 1, 0, 0, -cos(qJ(2)), 0, 0;];
	Jg_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobig_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (2->2), mult. (2->2), div. (0->0), fcn. (7->4), ass. (0->4)
	t75 = cos(qJ(1));
	t74 = sin(qJ(1));
	t73 = sin(qJ(2));
	t1 = [0, t74, 0, t75 * t73, 0, 0; 0, -t75, 0, t74 * t73, 0, 0; 1, 0, 0, -cos(qJ(2)), 0, 0;];
	Jg_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobig_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (4->4), mult. (4->2), div. (0->0), fcn. (12->4), ass. (0->7)
	t82 = sin(qJ(2));
	t83 = sin(qJ(1));
	t87 = t83 * t82;
	t85 = cos(qJ(1));
	t86 = t85 * t82;
	t84 = cos(qJ(2));
	t1 = [0, t83, 0, t86, 0, -t86; 0, -t85, 0, t87, 0, -t87; 1, 0, 0, -t84, 0, t84;];
	Jg_rot = t1;
else
	Jg_rot=NaN(3,6);
end