% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S6PRPRRR4
% Use Code from Maple symbolic Code Generation
%
% Geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorgeschwindigkeit und Geschw. der verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,d6,theta1,theta3]';
% 
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 21:59
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6PRPRRR4_jacobigD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRR4_jacobigD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRR4_jacobigD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRPRRR4_jacobigD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRPRRR4_jacobigD_rot_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobigD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:59:27
	% EndTime: 2019-10-09 21:59:27
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobigD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:59:27
	% EndTime: 2019-10-09 21:59:27
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobigD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:59:27
	% EndTime: 2019-10-09 21:59:27
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobigD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:59:27
	% EndTime: 2019-10-09 21:59:27
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobigD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:59:27
	% EndTime: 2019-10-09 21:59:27
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (2->2), mult. (12->9), div. (0->0), fcn. (12->6), ass. (0->6)
	t87 = sin(qJ(2));
	t89 = cos(pkin(6)) * t87;
	t88 = cos(qJ(2));
	t85 = cos(pkin(11));
	t84 = sin(pkin(11));
	t1 = [0, 0, 0, (-t84 * t89 + t85 * t88) * qJD(2), 0, 0; 0, 0, 0, (t84 * t88 + t85 * t89) * qJD(2), 0, 0; 0, 0, 0, sin(pkin(6)) * qJD(2) * t87, 0, 0;];
	JgD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobigD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:59:27
	% EndTime: 2019-10-09 21:59:27
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (21->11), mult. (48->30), div. (0->0), fcn. (50->8), ass. (0->17)
	t135 = pkin(12) + qJ(4);
	t133 = sin(t135);
	t137 = sin(pkin(6));
	t148 = t137 * t133;
	t139 = cos(pkin(6));
	t140 = sin(qJ(2));
	t147 = t139 * t140;
	t141 = cos(qJ(2));
	t146 = t139 * t141;
	t145 = qJD(2) * t133;
	t144 = qJD(2) * t137;
	t136 = sin(pkin(11));
	t138 = cos(pkin(11));
	t143 = t136 * t141 + t138 * t147;
	t142 = -t136 * t147 + t138 * t141;
	t134 = cos(t135);
	t1 = [0, 0, 0, t142 * qJD(2), (t142 * t134 + t136 * t148) * qJD(4) + (-t136 * t146 - t138 * t140) * t145, 0; 0, 0, 0, t143 * qJD(2), (t143 * t134 - t138 * t148) * qJD(4) + (-t136 * t140 + t138 * t146) * t145, 0; 0, 0, 0, t140 * t144, t141 * t133 * t144 + (t134 * t137 * t140 + t133 * t139) * qJD(4), 0;];
	JgD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobigD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:59:27
	% EndTime: 2019-10-09 21:59:27
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (40->11), mult. (84->30), div. (0->0), fcn. (88->8), ass. (0->20)
	t164 = pkin(12) + qJ(4);
	t162 = sin(t164);
	t166 = sin(pkin(6));
	t177 = t166 * t162;
	t168 = cos(pkin(6));
	t169 = sin(qJ(2));
	t176 = t168 * t169;
	t170 = cos(qJ(2));
	t175 = t168 * t170;
	t174 = qJD(2) * t162;
	t173 = qJD(2) * t166;
	t165 = sin(pkin(11));
	t167 = cos(pkin(11));
	t172 = t165 * t170 + t167 * t176;
	t171 = -t165 * t176 + t167 * t170;
	t163 = cos(t164);
	t161 = t170 * t162 * t173 + (t163 * t166 * t169 + t162 * t168) * qJD(4);
	t160 = (t171 * t163 + t165 * t177) * qJD(4) + (-t165 * t175 - t167 * t169) * t174;
	t159 = (t172 * t163 - t167 * t177) * qJD(4) + (-t165 * t169 + t167 * t175) * t174;
	t1 = [0, 0, 0, t171 * qJD(2), t160, t160; 0, 0, 0, t172 * qJD(2), t159, t159; 0, 0, 0, t169 * t173, t161, t161;];
	JgD_rot = t1;
else
	JgD_rot=NaN(3,6);
end