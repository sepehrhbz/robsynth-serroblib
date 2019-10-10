% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S6RRPRRP9
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,theta3]';
% 
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:42
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RRPRRP9_jacobigD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP9_jacobigD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP9_jacobigD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRRP9_jacobigD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRP9_jacobigD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobigD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:42:53
	% EndTime: 2019-10-10 10:42:53
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobigD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:42:53
	% EndTime: 2019-10-10 10:42:53
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobigD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:42:53
	% EndTime: 2019-10-10 10:42:53
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (4->3), div. (0->0), fcn. (4->3), ass. (0->2)
	t59 = qJD(1) * sin(pkin(6));
	t1 = [0, cos(qJ(1)) * t59, 0, 0, 0, 0; 0, sin(qJ(1)) * t59, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobigD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:42:53
	% EndTime: 2019-10-10 10:42:53
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (4->3), div. (0->0), fcn. (4->3), ass. (0->2)
	t81 = qJD(1) * sin(pkin(6));
	t1 = [0, cos(qJ(1)) * t81, 0, 0, 0, 0; 0, sin(qJ(1)) * t81, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobigD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:42:53
	% EndTime: 2019-10-10 10:42:53
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (6->6), mult. (26->17), div. (0->0), fcn. (26->6), ass. (0->12)
	t108 = sin(qJ(2));
	t109 = sin(qJ(1));
	t116 = t108 * t109;
	t111 = cos(qJ(1));
	t115 = t108 * t111;
	t110 = cos(qJ(2));
	t114 = t109 * t110;
	t113 = t110 * t111;
	t106 = sin(pkin(6));
	t112 = qJD(1) * t106;
	t107 = cos(pkin(6));
	t1 = [0, t111 * t112, 0, (-t107 * t116 + t113) * qJD(2) + (t107 * t113 - t116) * qJD(1), 0, 0; 0, t109 * t112, 0, (t107 * t115 + t114) * qJD(2) + (t107 * t114 + t115) * qJD(1), 0, 0; 0, 0, 0, t106 * qJD(2) * t108, 0, 0;];
	JgD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobigD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:42:54
	% EndTime: 2019-10-10 10:42:54
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (33->17), mult. (78->40), div. (0->0), fcn. (80->8), ass. (0->23)
	t167 = sin(pkin(6));
	t170 = sin(qJ(1));
	t185 = t167 * t170;
	t172 = cos(qJ(1));
	t184 = t167 * t172;
	t169 = sin(qJ(2));
	t183 = t169 * t170;
	t182 = t169 * t172;
	t171 = cos(qJ(2));
	t181 = t170 * t171;
	t180 = t172 * t171;
	t179 = qJD(1) * t167;
	t166 = pkin(11) + qJ(4);
	t164 = sin(t166);
	t178 = qJD(2) * t164;
	t177 = qJD(2) * t167;
	t168 = cos(pkin(6));
	t176 = t168 * t180 - t183;
	t175 = t168 * t181 + t182;
	t174 = t168 * t182 + t181;
	t173 = -t168 * t183 + t180;
	t165 = cos(t166);
	t1 = [0, t172 * t179, 0, t176 * qJD(1) + t173 * qJD(2), (t164 * t185 + t173 * t165) * qJD(4) - t175 * t178 + (-t174 * t164 - t165 * t184) * qJD(1), 0; 0, t170 * t179, 0, t175 * qJD(1) + t174 * qJD(2), (-t164 * t184 + t174 * t165) * qJD(4) + t176 * t178 + (t173 * t164 - t165 * t185) * qJD(1), 0; 0, 0, 0, t169 * t177, t171 * t164 * t177 + (t165 * t167 * t169 + t164 * t168) * qJD(4), 0;];
	JgD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobigD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:42:54
	% EndTime: 2019-10-10 10:42:54
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (33->17), mult. (78->40), div. (0->0), fcn. (80->8), ass. (0->23)
	t169 = sin(pkin(6));
	t172 = sin(qJ(1));
	t187 = t169 * t172;
	t174 = cos(qJ(1));
	t186 = t169 * t174;
	t171 = sin(qJ(2));
	t185 = t171 * t172;
	t184 = t171 * t174;
	t173 = cos(qJ(2));
	t183 = t172 * t173;
	t182 = t174 * t173;
	t181 = qJD(1) * t169;
	t168 = pkin(11) + qJ(4);
	t166 = sin(t168);
	t180 = qJD(2) * t166;
	t179 = qJD(2) * t169;
	t170 = cos(pkin(6));
	t178 = t170 * t182 - t185;
	t177 = t170 * t183 + t184;
	t176 = t170 * t184 + t183;
	t175 = -t170 * t185 + t182;
	t167 = cos(t168);
	t1 = [0, t174 * t181, 0, t178 * qJD(1) + t175 * qJD(2), (t166 * t187 + t175 * t167) * qJD(4) - t177 * t180 + (-t176 * t166 - t167 * t186) * qJD(1), 0; 0, t172 * t181, 0, t177 * qJD(1) + t176 * qJD(2), (-t166 * t186 + t176 * t167) * qJD(4) + t178 * t180 + (t175 * t166 - t167 * t187) * qJD(1), 0; 0, 0, 0, t171 * t179, t173 * t166 * t179 + (t167 * t169 * t171 + t166 * t170) * qJD(4), 0;];
	JgD_rot = t1;
else
	JgD_rot=NaN(3,6);
end