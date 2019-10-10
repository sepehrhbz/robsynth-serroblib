% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRRP9
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5]';
% 
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 13:09
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RRRRRP9_jacobigD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP9_jacobigD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP9_jacobigD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRRP9_jacobigD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRP9_jacobigD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobigD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:09:38
	% EndTime: 2019-10-10 13:09:38
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobigD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:09:38
	% EndTime: 2019-10-10 13:09:38
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobigD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:09:38
	% EndTime: 2019-10-10 13:09:38
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (4->3), div. (0->0), fcn. (4->3), ass. (0->2)
	t59 = qJD(1) * sin(pkin(6));
	t1 = [0, cos(qJ(1)) * t59, 0, 0, 0, 0; 0, sin(qJ(1)) * t59, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobigD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:09:38
	% EndTime: 2019-10-10 13:09:39
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (6->6), mult. (26->17), div. (0->0), fcn. (26->6), ass. (0->12)
	t103 = sin(qJ(2));
	t104 = sin(qJ(1));
	t111 = t103 * t104;
	t106 = cos(qJ(1));
	t110 = t103 * t106;
	t105 = cos(qJ(2));
	t109 = t104 * t105;
	t108 = t105 * t106;
	t101 = sin(pkin(6));
	t107 = qJD(1) * t101;
	t102 = cos(pkin(6));
	t1 = [0, t106 * t107, (-t102 * t111 + t108) * qJD(2) + (t102 * t108 - t111) * qJD(1), 0, 0, 0; 0, t104 * t107, (t102 * t110 + t109) * qJD(2) + (t102 * t109 + t110) * qJD(1), 0, 0, 0; 0, 0, t101 * qJD(2) * t103, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobigD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:09:39
	% EndTime: 2019-10-10 13:09:39
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (22->16), mult. (78->40), div. (0->0), fcn. (80->8), ass. (0->21)
	t155 = sin(pkin(6));
	t160 = cos(qJ(3));
	t174 = t155 * t160;
	t162 = cos(qJ(1));
	t173 = t155 * t162;
	t158 = sin(qJ(2));
	t159 = sin(qJ(1));
	t172 = t158 * t159;
	t171 = t158 * t162;
	t161 = cos(qJ(2));
	t170 = t159 * t161;
	t169 = t162 * t161;
	t168 = qJD(1) * t155;
	t157 = sin(qJ(3));
	t167 = qJD(2) * t157;
	t156 = cos(pkin(6));
	t166 = t156 * t169 - t172;
	t165 = t156 * t170 + t171;
	t164 = t156 * t171 + t170;
	t163 = -t156 * t172 + t169;
	t1 = [0, t162 * t168, t166 * qJD(1) + t163 * qJD(2), (t159 * t155 * t157 + t163 * t160) * qJD(3) - t165 * t167 + (-t164 * t157 - t160 * t173) * qJD(1), 0, 0; 0, t159 * t168, t165 * qJD(1) + t164 * qJD(2), (-t157 * t173 + t164 * t160) * qJD(3) + t166 * t167 + (t163 * t157 - t159 * t174) * qJD(1), 0, 0; 0, 0, t155 * qJD(2) * t158, t155 * t161 * t167 + (t156 * t157 + t158 * t174) * qJD(3), 0, 0;];
	JgD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobigD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:09:39
	% EndTime: 2019-10-10 13:09:39
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (38->16), mult. (130->40), div. (0->0), fcn. (134->8), ass. (0->24)
	t177 = sin(pkin(6));
	t182 = cos(qJ(3));
	t196 = t177 * t182;
	t184 = cos(qJ(1));
	t195 = t177 * t184;
	t180 = sin(qJ(2));
	t181 = sin(qJ(1));
	t194 = t180 * t181;
	t193 = t180 * t184;
	t183 = cos(qJ(2));
	t192 = t181 * t183;
	t191 = t184 * t183;
	t190 = qJD(1) * t177;
	t179 = sin(qJ(3));
	t189 = qJD(2) * t179;
	t178 = cos(pkin(6));
	t188 = t178 * t191 - t194;
	t187 = t178 * t192 + t193;
	t186 = t178 * t193 + t192;
	t185 = -t178 * t194 + t191;
	t176 = t177 * t183 * t189 + (t178 * t179 + t180 * t196) * qJD(3);
	t175 = (-t179 * t195 + t186 * t182) * qJD(3) + t188 * t189 + (t185 * t179 - t181 * t196) * qJD(1);
	t174 = (t181 * t177 * t179 + t185 * t182) * qJD(3) - t187 * t189 + (-t186 * t179 - t182 * t195) * qJD(1);
	t1 = [0, t184 * t190, t188 * qJD(1) + t185 * qJD(2), t174, t174, 0; 0, t181 * t190, t187 * qJD(1) + t186 * qJD(2), t175, t175, 0; 0, 0, t177 * qJD(2) * t180, t176, t176, 0;];
	JgD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobigD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:09:39
	% EndTime: 2019-10-10 13:09:39
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (38->16), mult. (130->40), div. (0->0), fcn. (134->8), ass. (0->24)
	t181 = sin(pkin(6));
	t186 = cos(qJ(3));
	t200 = t181 * t186;
	t188 = cos(qJ(1));
	t199 = t181 * t188;
	t184 = sin(qJ(2));
	t185 = sin(qJ(1));
	t198 = t184 * t185;
	t197 = t184 * t188;
	t187 = cos(qJ(2));
	t196 = t185 * t187;
	t195 = t188 * t187;
	t194 = qJD(1) * t181;
	t183 = sin(qJ(3));
	t193 = qJD(2) * t183;
	t182 = cos(pkin(6));
	t192 = t182 * t195 - t198;
	t191 = t182 * t196 + t197;
	t190 = t182 * t197 + t196;
	t189 = -t182 * t198 + t195;
	t180 = t181 * t187 * t193 + (t182 * t183 + t184 * t200) * qJD(3);
	t179 = (-t183 * t199 + t190 * t186) * qJD(3) + t192 * t193 + (t189 * t183 - t185 * t200) * qJD(1);
	t178 = (t185 * t181 * t183 + t189 * t186) * qJD(3) - t191 * t193 + (-t190 * t183 - t186 * t199) * qJD(1);
	t1 = [0, t188 * t194, t192 * qJD(1) + t189 * qJD(2), t178, t178, 0; 0, t185 * t194, t191 * qJD(1) + t190 * qJD(2), t179, t179, 0; 0, 0, t181 * qJD(2) * t184, t180, t180, 0;];
	JgD_rot = t1;
else
	JgD_rot=NaN(3,6);
end