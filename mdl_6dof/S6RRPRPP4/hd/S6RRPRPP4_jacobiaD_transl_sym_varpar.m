% Zeitableitung der analytischen Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RRPRPP4
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,theta5]';
% 
% Output:
% JaD_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix (Zeitableitung)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:00
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S6RRPRPP4_jacobiaD_transl_sym_varpar(qJ, qJD, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPP4_jacobiaD_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPP4_jacobiaD_transl_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRPRPP4_jacobiaD_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRPP4_jacobiaD_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPRPP4_jacobiaD_transl_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:00:55
	% EndTime: 2019-10-10 10:00:55
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:00:55
	% EndTime: 2019-10-10 10:00:55
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (2->2), mult. (8->6), div. (0->0), fcn. (4->2), ass. (0->3)
	t27 = cos(qJ(1));
	t26 = sin(qJ(1));
	t1 = [(-r_i_i_C(1) * t27 + r_i_i_C(2) * t26) * qJD(1), 0, 0, 0, 0, 0; (-r_i_i_C(1) * t26 - r_i_i_C(2) * t27) * qJD(1), 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:00:55
	% EndTime: 2019-10-10 10:00:55
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (19->15), mult. (64->29), div. (0->0), fcn. (40->4), ass. (0->13)
	t28 = pkin(7) + r_i_i_C(3);
	t18 = sin(qJ(1));
	t27 = qJD(1) * t18;
	t20 = cos(qJ(1));
	t26 = qJD(1) * t20;
	t25 = qJD(2) * t18;
	t24 = qJD(2) * t20;
	t17 = sin(qJ(2));
	t19 = cos(qJ(2));
	t23 = r_i_i_C(1) * t17 + r_i_i_C(2) * t19;
	t22 = -r_i_i_C(1) * t19 + r_i_i_C(2) * t17 - pkin(1);
	t21 = t23 * qJD(2);
	t1 = [t23 * t25 + (-t28 * t18 + t22 * t20) * qJD(1), (t17 * t24 + t19 * t27) * r_i_i_C(2) + (t17 * t27 - t19 * t24) * r_i_i_C(1), 0, 0, 0, 0; -t20 * t21 + (t22 * t18 + t28 * t20) * qJD(1), (t17 * t25 - t19 * t26) * r_i_i_C(2) + (-t17 * t26 - t19 * t25) * r_i_i_C(1), 0, 0, 0, 0; 0, -t21, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:00:56
	% EndTime: 2019-10-10 10:00:56
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (44->20), mult. (134->34), div. (0->0), fcn. (92->4), ass. (0->15)
	t139 = sin(qJ(2));
	t141 = cos(qJ(2));
	t151 = r_i_i_C(3) + qJ(3);
	t153 = pkin(2) - r_i_i_C(2);
	t154 = t153 * t139 - t151 * t141;
	t155 = t154 * qJD(2) - t139 * qJD(3);
	t152 = pkin(7) + r_i_i_C(1);
	t140 = sin(qJ(1));
	t150 = qJD(1) * t140;
	t142 = cos(qJ(1));
	t149 = qJD(1) * t142;
	t148 = qJD(2) * t142;
	t146 = -t151 * t139 - t153 * t141;
	t144 = -pkin(1) + t146;
	t1 = [t155 * t140 + (-t152 * t140 + t144 * t142) * qJD(1), (-t151 * t148 + t153 * t150) * t139 + (-t151 * t150 + (-t153 * qJD(2) + qJD(3)) * t142) * t141, -t139 * t150 + t141 * t148, 0, 0, 0; -t155 * t142 + (t144 * t140 + t152 * t142) * qJD(1), -t154 * t149 + (t146 * qJD(2) + qJD(3) * t141) * t140, t140 * qJD(2) * t141 + t139 * t149, 0, 0, 0; 0, -t155, qJD(2) * t139, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:00:56
	% EndTime: 2019-10-10 10:00:57
	% DurationCPUTime: 0.24s
	% Computational Cost: add. (101->43), mult. (318->73), div. (0->0), fcn. (248->6), ass. (0->34)
	t199 = sin(qJ(2));
	t202 = cos(qJ(2));
	t216 = pkin(2) + pkin(8) + r_i_i_C(3);
	t213 = t216 * t199;
	t229 = (-qJ(3) * t202 + t213) * qJD(2) - t199 * qJD(3);
	t201 = cos(qJ(4));
	t211 = qJD(4) * t199 + qJD(1);
	t227 = t201 * t211;
	t198 = sin(qJ(4));
	t226 = t211 * t198;
	t225 = pkin(3) + pkin(7);
	t200 = sin(qJ(1));
	t223 = qJD(1) * t200;
	t203 = cos(qJ(1));
	t222 = qJD(1) * t203;
	t221 = qJD(2) * t199;
	t220 = qJD(2) * t202;
	t219 = qJD(2) * t203;
	t218 = qJD(4) * t202;
	t215 = t200 * t220;
	t214 = t202 * t219;
	t212 = t216 * t202;
	t210 = -qJD(1) * t199 - qJD(4);
	t209 = t210 * t203;
	t208 = r_i_i_C(1) * t198 + r_i_i_C(2) * t201 + qJ(3);
	t207 = -qJ(3) * t199 - pkin(1) - t212;
	t206 = qJD(3) + (r_i_i_C(1) * t201 - r_i_i_C(2) * t198) * qJD(4);
	t205 = t210 * t200 + t214;
	t204 = t208 * t202 - t213;
	t197 = t205 * t198 + t203 * t227;
	t196 = t205 * t201 - t203 * t226;
	t195 = -t200 * t227 + (t209 - t215) * t198;
	t194 = t201 * t209 + (-t201 * t220 + t226) * t200;
	t1 = [t195 * r_i_i_C(1) + t194 * r_i_i_C(2) + t229 * t200 + (-t225 * t200 + t207 * t203) * qJD(1), (-t208 * t219 + t216 * t223) * t199 + (-t208 * t223 + (-t216 * qJD(2) + t206) * t203) * t202, -t199 * t223 + t214, t196 * r_i_i_C(1) - t197 * r_i_i_C(2), 0, 0; t197 * r_i_i_C(1) + t196 * r_i_i_C(2) - t229 * t203 + (t207 * t200 + t225 * t203) * qJD(1), t204 * t222 + (t206 * t202 + (-t208 * t199 - t212) * qJD(2)) * t200, t199 * t222 + t215, -t194 * r_i_i_C(1) + t195 * r_i_i_C(2), 0, 0; 0, t204 * qJD(2) + t206 * t199, t221, (-t198 * t221 + t201 * t218) * r_i_i_C(2) + (t198 * t218 + t201 * t221) * r_i_i_C(1), 0, 0;];
	JaD_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:00:56
	% EndTime: 2019-10-10 10:00:57
	% DurationCPUTime: 0.36s
	% Computational Cost: add. (207->53), mult. (440->80), div. (0->0), fcn. (342->8), ass. (0->44)
	t209 = sin(qJ(2));
	t211 = cos(qJ(4));
	t212 = cos(qJ(2));
	t208 = sin(qJ(4));
	t243 = pkin(4) * t208;
	t230 = qJ(3) + t243;
	t234 = t212 * qJD(5);
	t240 = pkin(4) * qJD(4);
	t242 = t211 * pkin(4);
	t233 = pkin(2) + r_i_i_C(3) + qJ(5) + pkin(8);
	t245 = t233 * t209;
	t252 = (-t230 * t212 + t245) * qJD(2) - (pkin(7) + pkin(3) + t242) * qJD(1) - (t211 * t240 + qJD(3)) * t209 - t234;
	t206 = qJ(4) + pkin(9);
	t204 = sin(t206);
	t205 = cos(t206);
	t222 = r_i_i_C(1) * t204 + r_i_i_C(2) * t205 + t243;
	t220 = qJ(3) + t222;
	t250 = -t220 * t212 + t245;
	t210 = sin(qJ(1));
	t229 = qJD(4) * t209 + qJD(1);
	t249 = t210 * t229;
	t213 = cos(qJ(1));
	t228 = qJD(1) * t209 + qJD(4);
	t247 = t228 * t213;
	t223 = t229 * t213;
	t239 = qJD(1) * t210;
	t238 = qJD(1) * t213;
	t237 = qJD(2) * t209;
	t236 = qJD(2) * t212;
	t235 = qJD(2) * t213;
	t232 = t210 * t236;
	t231 = t212 * t235;
	t226 = t233 * t212;
	t221 = r_i_i_C(1) * t205 - r_i_i_C(2) * t204 + t242;
	t219 = -t232 - t247;
	t218 = -t228 * t210 + t231;
	t217 = t221 * qJD(4) + qJD(3);
	t215 = -t208 * t240 + (-t230 * t209 - pkin(1) - t226) * qJD(1);
	t214 = -qJD(5) * t209 + t217 * t212 + (-t220 * t209 - t226) * qJD(2);
	t202 = t218 * t204 + t205 * t223;
	t201 = -t204 * t223 + t218 * t205;
	t200 = t219 * t204 - t205 * t249;
	t199 = t204 * t249 + t219 * t205;
	t1 = [t200 * r_i_i_C(1) + t199 * r_i_i_C(2) + t252 * t210 + t215 * t213, t214 * t213 + t250 * t239, -t209 * t239 + t231, t201 * r_i_i_C(1) - t202 * r_i_i_C(2) + (-t208 * t223 + t218 * t211) * pkin(4), -t209 * t235 - t212 * t239, 0; t202 * r_i_i_C(1) + t201 * r_i_i_C(2) + t215 * t210 - t252 * t213, t214 * t210 - t238 * t250, t209 * t238 + t232, -t199 * r_i_i_C(1) + t200 * r_i_i_C(2) + (t211 * t247 + (-t229 * t208 + t211 * t236) * t210) * pkin(4), -t210 * t237 + t212 * t238, 0; 0, -qJD(2) * t250 + t217 * t209 + t234, t237, t222 * t212 * qJD(4) + t221 * t237, t236, 0;];
	JaD_transl = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:00:57
	% EndTime: 2019-10-10 10:00:58
	% DurationCPUTime: 0.43s
	% Computational Cost: add. (372->67), mult. (680->96), div. (0->0), fcn. (558->8), ass. (0->51)
	t249 = sin(qJ(2));
	t251 = cos(qJ(4));
	t252 = cos(qJ(2));
	t246 = qJ(4) + pkin(9);
	t245 = cos(t246);
	t275 = pkin(2) + r_i_i_C(2) + qJ(5) + pkin(8);
	t262 = -t275 * qJD(2) - t245 * qJD(6) + qJD(3);
	t248 = sin(qJ(4));
	t289 = pkin(4) * t248;
	t270 = qJ(3) + t289;
	t285 = pkin(4) * qJD(4);
	t288 = pkin(4) * t251;
	t297 = (t251 * t285 + t262) * t249 + (t270 * qJD(2) + qJD(5)) * t252 + (pkin(7) + pkin(3) + t288) * qJD(1);
	t296 = t275 * t249;
	t250 = sin(qJ(1));
	t278 = qJD(2) * t252;
	t272 = t250 * t278;
	t253 = cos(qJ(1));
	t280 = qJD(1) * t253;
	t294 = t249 * t280 + t272;
	t244 = sin(t246);
	t286 = r_i_i_C(3) + qJ(6);
	t290 = -r_i_i_C(1) - pkin(5);
	t291 = t290 * t244 + t286 * t245;
	t284 = t244 * t253;
	t283 = t250 * t245;
	t282 = t253 * t245;
	t281 = qJD(1) * t250;
	t279 = qJD(2) * t249;
	t277 = qJD(2) * t253;
	t276 = t244 * qJD(6);
	t271 = t252 * t277;
	t269 = qJD(4) * t249 + qJD(1);
	t268 = qJD(1) * t249 + qJD(4);
	t266 = t269 * t248;
	t265 = t269 * t250;
	t264 = t268 * t253;
	t263 = t249 * t284 + t283;
	t261 = -t268 * t250 + t271;
	t260 = t289 - t291;
	t259 = t286 * t244 - t290 * t245 + t288;
	t258 = -t270 + t291;
	t257 = qJ(3) + t260;
	t256 = -t248 * t285 + t276 + (-t270 * t249 - t275 * t252 - pkin(1)) * qJD(1);
	t255 = t259 * qJD(4) + t262;
	t254 = (t258 * qJD(2) - qJD(5)) * t249 + t255 * t252;
	t238 = t261 * t244 + t269 * t282;
	t237 = -t245 * t271 + t263 * qJD(4) + (t249 * t283 + t284) * qJD(1);
	t236 = t245 * t265 + (t264 + t272) * t244;
	t235 = -qJD(4) * t282 + t244 * t265 - t294 * t245;
	t1 = [-t286 * t235 + t290 * t236 - t297 * t250 + t256 * t253, (t258 * t252 + t296) * t281 + t254 * t253, -t249 * t281 + t271, t263 * qJD(6) + t286 * t238 + t290 * t237 + (t261 * t251 - t253 * t266) * pkin(4), -t249 * t277 - t252 * t281, t237; t286 * t237 - t290 * t238 + t256 * t250 + t297 * t253, (t257 * t252 - t296) * t280 + t254 * t250, t294, -(-t250 * t249 * t244 + t282) * qJD(6) + t286 * t236 + t290 * t235 + (t251 * t264 + (t251 * t278 - t266) * t250) * pkin(4), -t250 * t279 + t252 * t280, t235; 0, (t257 * qJD(2) + qJD(5)) * t252 + t255 * t249, t279, t259 * t279 + (t260 * qJD(4) - t276) * t252, t278, -qJD(4) * t244 * t252 - t245 * t279;];
	JaD_transl = t1;
else
	JaD_transl=NaN(3,6);
end