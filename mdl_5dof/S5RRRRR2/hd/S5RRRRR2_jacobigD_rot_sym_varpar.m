% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S5RRRRR2
% Use Code from Maple symbolic Code Generation
%
% Geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorgeschwindigkeit und Geschw. der verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [2x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a4]';
% 
% Output:
% JgD_rot [3x5]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 21:02
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S5RRRRR2_jacobigD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(2,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR2_jacobigD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR2_jacobigD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRRRR2_jacobigD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [2 1]), ...
  'S5RRRRR2_jacobigD_rot_sym_varpar: pkin has to be [2x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobigD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:02:47
	% EndTime: 2019-10-09 21:02:47
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobigD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:02:47
	% EndTime: 2019-10-09 21:02:47
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobigD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:02:47
	% EndTime: 2019-10-09 21:02:47
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobigD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:02:47
	% EndTime: 2019-10-09 21:02:47
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (4->2), mult. (2->2), div. (0->0), fcn. (2->2), ass. (0->3)
	t27 = qJ(1) + qJ(2);
	t26 = qJD(1) + qJD(2);
	t1 = [0, 0, t26 * cos(t27), 0, 0; 0, 0, t26 * sin(t27), 0, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobigD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:02:47
	% EndTime: 2019-10-09 21:02:47
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (8->2), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->5)
	t40 = qJ(1) + qJ(2);
	t39 = qJD(1) + qJD(2);
	t38 = t39 * cos(t40);
	t37 = t39 * sin(t40);
	t1 = [0, 0, t38, t38, 0; 0, 0, t37, t37, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobigD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:02:47
	% EndTime: 2019-10-09 21:02:47
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (24->6), mult. (13->8), div. (0->0), fcn. (13->4), ass. (0->11)
	t122 = qJD(3) + qJD(4);
	t124 = qJ(3) + qJ(4);
	t126 = cos(t124) * t122;
	t125 = qJ(1) + qJ(2);
	t119 = sin(t125);
	t123 = qJD(1) + qJD(2);
	t116 = t123 * t119;
	t121 = cos(t125);
	t117 = t123 * t121;
	t118 = sin(t124);
	t1 = [0, 0, t117, t117, -t118 * t116 + t121 * t126; 0, 0, t116, t116, t118 * t117 + t119 * t126; 0, 0, 0, 0, t122 * t118;];
	JgD_rot = t1;
else
	JgD_rot=NaN(3,5);
end