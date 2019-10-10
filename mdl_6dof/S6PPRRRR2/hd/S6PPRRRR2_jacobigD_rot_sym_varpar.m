% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S6PPRRRR2
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
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d3,d4,d5,d6,theta1,theta2]';
% 
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 21:20
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6PPRRRR2_jacobigD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRRR2_jacobigD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PPRRRR2_jacobigD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PPRRRR2_jacobigD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PPRRRR2_jacobigD_rot_sym_varpar: pkin has to be [13x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobigD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:20:19
	% EndTime: 2019-10-09 21:20:19
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobigD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:20:19
	% EndTime: 2019-10-09 21:20:19
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobigD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:20:19
	% EndTime: 2019-10-09 21:20:19
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobigD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:20:19
	% EndTime: 2019-10-09 21:20:19
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobigD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:20:19
	% EndTime: 2019-10-09 21:20:19
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (10->10), mult. (40->28), div. (0->0), fcn. (44->10), ass. (0->14)
	t136 = sin(pkin(12));
	t142 = cos(pkin(6));
	t147 = t136 * t142;
	t137 = sin(pkin(7));
	t138 = sin(pkin(6));
	t146 = t138 * t137;
	t140 = cos(pkin(12));
	t145 = t140 * t142;
	t144 = cos(qJ(3));
	t143 = sin(qJ(3));
	t141 = cos(pkin(7));
	t139 = cos(pkin(13));
	t135 = sin(pkin(13));
	t1 = [0, 0, 0, ((-t135 * t147 + t140 * t139) * t144 + ((-t140 * t135 - t139 * t147) * t141 + t136 * t146) * t143) * qJD(3), 0, 0; 0, 0, 0, ((t135 * t145 + t136 * t139) * t144 + ((-t136 * t135 + t139 * t145) * t141 - t140 * t146) * t143) * qJD(3), 0, 0; 0, 0, 0, (t137 * t142 * t143 + (t139 * t141 * t143 + t135 * t144) * t138) * qJD(3), 0, 0;];
	JgD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobigD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:20:20
	% EndTime: 2019-10-09 21:20:20
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (41->23), mult. (141->56), div. (0->0), fcn. (164->12), ass. (0->29)
	t212 = sin(pkin(12));
	t218 = cos(pkin(6));
	t234 = t212 * t218;
	t213 = sin(pkin(7));
	t214 = sin(pkin(6));
	t233 = t213 * t214;
	t232 = t213 * t218;
	t217 = cos(pkin(7));
	t231 = t214 * t217;
	t215 = cos(pkin(13));
	t230 = t215 * t217;
	t216 = cos(pkin(12));
	t229 = t216 * t218;
	t219 = sin(qJ(4));
	t228 = qJD(3) * t219;
	t211 = sin(pkin(13));
	t207 = -t212 * t211 + t215 * t229;
	t227 = t207 * t217 - t216 * t233;
	t209 = -t216 * t211 - t215 * t234;
	t226 = t209 * t217 + t212 * t233;
	t208 = t211 * t229 + t212 * t215;
	t220 = sin(qJ(3));
	t222 = cos(qJ(3));
	t225 = t208 * t222 + t227 * t220;
	t210 = -t211 * t234 + t216 * t215;
	t224 = t210 * t222 + t226 * t220;
	t223 = t220 * t232 + (t211 * t222 + t220 * t230) * t214;
	t221 = cos(qJ(4));
	t1 = [0, 0, 0, t224 * qJD(3), (t224 * t221 + (-t209 * t213 + t212 * t231) * t219) * qJD(4) + (-t210 * t220 + t226 * t222) * t228, 0; 0, 0, 0, t225 * qJD(3), (t225 * t221 + (-t207 * t213 - t216 * t231) * t219) * qJD(4) + (-t208 * t220 + t227 * t222) * t228, 0; 0, 0, 0, t223 * qJD(3), (t223 * t221 + (-t215 * t233 + t218 * t217) * t219) * qJD(4) + (t222 * t232 + (-t211 * t220 + t222 * t230) * t214) * t228, 0;];
	JgD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobigD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:20:20
	% EndTime: 2019-10-09 21:20:20
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (72->23), mult. (242->56), div. (0->0), fcn. (284->12), ass. (0->32)
	t241 = sin(pkin(12));
	t247 = cos(pkin(6));
	t263 = t241 * t247;
	t242 = sin(pkin(7));
	t243 = sin(pkin(6));
	t262 = t242 * t243;
	t261 = t242 * t247;
	t246 = cos(pkin(7));
	t260 = t243 * t246;
	t244 = cos(pkin(13));
	t259 = t244 * t246;
	t245 = cos(pkin(12));
	t258 = t245 * t247;
	t248 = sin(qJ(4));
	t257 = qJD(3) * t248;
	t240 = sin(pkin(13));
	t236 = -t240 * t241 + t244 * t258;
	t256 = t236 * t246 - t245 * t262;
	t238 = -t240 * t245 - t244 * t263;
	t255 = t238 * t246 + t241 * t262;
	t237 = t240 * t258 + t241 * t244;
	t249 = sin(qJ(3));
	t251 = cos(qJ(3));
	t254 = t237 * t251 + t256 * t249;
	t239 = -t240 * t263 + t244 * t245;
	t253 = t239 * t251 + t255 * t249;
	t252 = t249 * t261 + (t240 * t251 + t249 * t259) * t243;
	t250 = cos(qJ(4));
	t235 = (t252 * t250 + (-t244 * t262 + t246 * t247) * t248) * qJD(4) + (t251 * t261 + (-t240 * t249 + t251 * t259) * t243) * t257;
	t234 = (t253 * t250 + (-t238 * t242 + t241 * t260) * t248) * qJD(4) + (-t239 * t249 + t255 * t251) * t257;
	t233 = (t254 * t250 + (-t236 * t242 - t245 * t260) * t248) * qJD(4) + (-t237 * t249 + t256 * t251) * t257;
	t1 = [0, 0, 0, t253 * qJD(3), t234, t234; 0, 0, 0, t254 * qJD(3), t233, t233; 0, 0, 0, t252 * qJD(3), t235, t235;];
	JgD_rot = t1;
else
	JgD_rot=NaN(3,6);
end