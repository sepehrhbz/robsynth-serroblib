% Zeitableitung der analytischen Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RRRPRP8
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5]';
% 
% Output:
% JaD_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix (Zeitableitung)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 11:47
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S6RRRPRP8_jacobiaD_transl_sym_varpar(qJ, qJD, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP8_jacobiaD_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP8_jacobiaD_transl_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRRPRP8_jacobiaD_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRPRP8_jacobiaD_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRPRP8_jacobiaD_transl_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:47:49
	% EndTime: 2019-10-10 11:47:49
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:47:49
	% EndTime: 2019-10-10 11:47:49
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
	% StartTime: 2019-10-10 11:47:49
	% EndTime: 2019-10-10 11:47:49
	% DurationCPUTime: 0.09s
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
	% StartTime: 2019-10-10 11:47:50
	% EndTime: 2019-10-10 11:47:50
	% DurationCPUTime: 0.22s
	% Computational Cost: add. (83->38), mult. (270->73), div. (0->0), fcn. (211->6), ass. (0->31)
	t199 = sin(qJ(2));
	t202 = cos(qJ(2));
	t223 = pkin(8) + r_i_i_C(3);
	t213 = t223 * t202;
	t224 = -pkin(2) * t199 + t213;
	t201 = cos(qJ(3));
	t203 = cos(qJ(1));
	t221 = t201 * t203;
	t200 = sin(qJ(1));
	t220 = qJD(1) * t200;
	t219 = qJD(1) * t203;
	t218 = qJD(2) * t200;
	t217 = qJD(2) * t202;
	t216 = qJD(2) * t203;
	t215 = qJD(3) * t199;
	t214 = qJD(3) * t202;
	t212 = -qJD(1) + t214;
	t211 = qJD(1) * t202 - qJD(3);
	t198 = sin(qJ(3));
	t210 = r_i_i_C(1) * t198 + r_i_i_C(2) * t201;
	t209 = r_i_i_C(1) * t201 - r_i_i_C(2) * t198 + pkin(2);
	t208 = t212 * t198;
	t207 = -pkin(2) * t202 - t223 * t199 - pkin(1);
	t206 = qJD(2) * t209;
	t205 = t199 * t216 + t211 * t200;
	t204 = -t223 * qJD(2) + t210 * qJD(3);
	t197 = -t211 * t221 + (qJD(2) * t199 * t201 + t208) * t200;
	t196 = t212 * t201 * t200 + (-t199 * t218 + t211 * t203) * t198;
	t195 = t205 * t201 + t203 * t208;
	t194 = t205 * t198 - t212 * t221;
	t1 = [t197 * r_i_i_C(1) + t196 * r_i_i_C(2) - t224 * t218 + (-pkin(7) * t200 + t207 * t203) * qJD(1), (-t203 * t206 - t223 * t220) * t202 + (t204 * t203 + t209 * t220) * t199, t194 * r_i_i_C(1) + t195 * r_i_i_C(2), 0, 0, 0; -t195 * r_i_i_C(1) + t194 * r_i_i_C(2) + t224 * t216 + (pkin(7) * t203 + t207 * t200) * qJD(1), (-t200 * t206 + t223 * t219) * t202 + (t204 * t200 - t209 * t219) * t199, -t196 * r_i_i_C(1) + t197 * r_i_i_C(2), 0, 0, 0; 0, -t210 * t214 + (-t209 * t199 + t213) * qJD(2), (t198 * t215 - t201 * t217) * r_i_i_C(2) + (-t198 * t217 - t201 * t215) * r_i_i_C(1), 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:47:50
	% EndTime: 2019-10-10 11:47:51
	% DurationCPUTime: 0.33s
	% Computational Cost: add. (164->54), mult. (510->88), div. (0->0), fcn. (427->6), ass. (0->42)
	t248 = sin(qJ(3));
	t251 = cos(qJ(3));
	t281 = r_i_i_C(3) + qJ(4);
	t284 = pkin(3) + r_i_i_C(1);
	t285 = t284 * t248 - t281 * t251;
	t287 = -t285 * qJD(3) + qJD(4) * t248;
	t249 = sin(qJ(2));
	t252 = cos(qJ(2));
	t283 = pkin(8) + r_i_i_C(2);
	t268 = t283 * t252;
	t286 = -pkin(2) * t249 + t268;
	t259 = -t281 * t248 - t284 * t251;
	t256 = -pkin(2) + t259;
	t250 = sin(qJ(1));
	t280 = t250 * t248;
	t279 = t250 * t252;
	t253 = cos(qJ(1));
	t278 = t253 * t248;
	t277 = t253 * t251;
	t276 = qJD(1) * t250;
	t275 = qJD(1) * t253;
	t274 = qJD(2) * t250;
	t273 = qJD(2) * t252;
	t272 = qJD(2) * t253;
	t271 = qJD(3) * t251;
	t270 = qJD(3) * t253;
	t267 = t249 * t274;
	t266 = qJD(3) * t280;
	t265 = t249 * t272;
	t264 = t248 * t270;
	t263 = t251 * t270;
	t262 = t252 * t277 + t280;
	t261 = t248 * t279 + t277;
	t260 = -pkin(2) * t252 - t283 * t249 - pkin(1);
	t257 = t248 * t275 + t250 * t271;
	t255 = qJD(2) * t256;
	t254 = -t283 * qJD(2) - t287;
	t237 = t262 * qJD(1) - t251 * t267 - t252 * t266 - t263;
	t236 = -t248 * t267 - t251 * t276 + t257 * t252 - t264;
	t235 = t252 * t264 + (t252 * t276 + t265) * t251 - t257;
	t234 = t261 * qJD(1) + t248 * t265 - t252 * t263 - t266;
	t1 = [-t261 * qJD(4) - t284 * t237 - t281 * t236 - t286 * t274 + (-t250 * pkin(7) + t260 * t253) * qJD(1), (t253 * t255 - t283 * t276) * t252 + (t254 * t253 - t256 * t276) * t249, t262 * qJD(4) + t284 * t234 - t281 * t235, -t234, 0, 0; -(t250 * t251 - t252 * t278) * qJD(4) - t284 * t235 - t281 * t234 + t286 * t272 + (t253 * pkin(7) + t260 * t250) * qJD(1), (t250 * t255 + t283 * t275) * t252 + (t254 * t250 + t256 * t275) * t249, -(-t251 * t279 + t278) * qJD(4) + t281 * t237 - t284 * t236, t236, 0, 0; 0, t287 * t252 + (t256 * t249 + t268) * qJD(2), -t285 * t273 + (t259 * qJD(3) + t251 * qJD(4)) * t249, t248 * t273 + t249 * t271, 0, 0;];
	JaD_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:47:50
	% EndTime: 2019-10-10 11:47:51
	% DurationCPUTime: 0.70s
	% Computational Cost: add. (376->90), mult. (1158->144), div. (0->0), fcn. (1082->8), ass. (0->57)
	t285 = sin(qJ(2));
	t335 = (qJD(3) - qJD(5)) * t285;
	t284 = sin(qJ(3));
	t288 = cos(qJ(3));
	t290 = cos(qJ(1));
	t321 = t290 * t288;
	t286 = sin(qJ(1));
	t289 = cos(qJ(2));
	t323 = t286 * t289;
	t267 = t284 * t323 + t321;
	t322 = t290 * t284;
	t268 = t288 * t323 - t322;
	t283 = sin(qJ(5));
	t287 = cos(qJ(5));
	t302 = t267 * t283 + t268 * t287;
	t303 = t267 * t287 - t268 * t283;
	t334 = (t302 * r_i_i_C(1) + t303 * r_i_i_C(2)) * qJD(5);
	t326 = -pkin(3) - pkin(4);
	t305 = t283 * r_i_i_C(2) + t326;
	t296 = t287 * r_i_i_C(1) - t305;
	t306 = -t283 * r_i_i_C(1) - qJ(4);
	t297 = t287 * r_i_i_C(2) - t306;
	t298 = t283 * t284 + t287 * t288;
	t299 = t283 * t288 - t284 * t287;
	t312 = -r_i_i_C(3) - pkin(9) + pkin(8);
	t291 = -t284 * qJD(4) - t312 * qJD(2) + (t299 * r_i_i_C(1) + t298 * r_i_i_C(2)) * qJD(5) + (t296 * t284 - t297 * t288) * qJD(3);
	t332 = -t285 * pkin(2) + t312 * t289;
	t327 = t297 * t284 + t296 * t288 + pkin(2);
	t315 = qJD(3) * t288;
	t319 = qJD(1) * t290;
	t294 = t284 * t319 + t286 * t315;
	t314 = qJD(3) * t290;
	t308 = t284 * t314;
	t318 = qJD(2) * t286;
	t311 = t285 * t318;
	t320 = qJD(1) * t286;
	t265 = -t284 * t311 - t288 * t320 + t294 * t289 - t308;
	t262 = t265 * t287;
	t324 = t286 * t284;
	t317 = qJD(2) * t289;
	t316 = qJD(2) * t290;
	t310 = qJD(3) * t324;
	t309 = t285 * t316;
	t307 = t288 * t314;
	t304 = -(-t298 * t335 + t299 * t317) * r_i_i_C(1) - (t298 * t317 + t299 * t335) * r_i_i_C(2);
	t269 = -t286 * t288 + t289 * t322;
	t270 = t289 * t321 + t324;
	t301 = t269 * t287 - t270 * t283;
	t300 = t269 * t283 + t270 * t287;
	t295 = -pkin(2) * t289 - t312 * t285 - pkin(1);
	t292 = qJD(2) * t327;
	t266 = t270 * qJD(1) - t288 * t311 - t289 * t310 - t307;
	t264 = t289 * t308 + (t289 * t320 + t309) * t288 - t294;
	t263 = t267 * qJD(1) + t284 * t309 - t289 * t307 - t310;
	t259 = t301 * qJD(5) - t263 * t283 - t264 * t287;
	t258 = -t300 * qJD(5) - t263 * t287 + t264 * t283;
	t1 = [-t262 * r_i_i_C(2) - t267 * qJD(4) + t306 * t265 - t296 * t266 + (-t303 * r_i_i_C(1) + t302 * r_i_i_C(2)) * qJD(5) - t332 * t318 + (-t286 * pkin(7) + t295 * t290) * qJD(1), (-t290 * t292 - t312 * t320) * t289 + (t291 * t290 + t327 * t320) * t285, t270 * qJD(4) - t297 * t264 + t296 * t263 + (t300 * r_i_i_C(1) + t301 * r_i_i_C(2)) * qJD(5), -t263, t258 * r_i_i_C(1) - t259 * r_i_i_C(2), 0; t259 * r_i_i_C(1) + t258 * r_i_i_C(2) - t263 * qJ(4) + t269 * qJD(4) + t326 * t264 + t332 * t316 + (pkin(7) * t290 + t295 * t286) * qJD(1), (-t286 * t292 + t312 * t319) * t289 + (t291 * t286 - t319 * t327) * t285, -t262 * r_i_i_C(1) + t268 * qJD(4) + t305 * t265 + t297 * t266 + t334, t265, (-t266 * t283 + t262) * r_i_i_C(1) + (-t265 * t283 - t266 * t287) * r_i_i_C(2) - t334, 0; 0, -t285 * t292 - t291 * t289, (t288 * qJ(4) + t326 * t284) * t317 + (qJD(4) * t288 + (-t284 * qJ(4) + t326 * t288) * qJD(3)) * t285 - t304, t284 * t317 + t285 * t315, t304, 0;];
	JaD_transl = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:47:50
	% EndTime: 2019-10-10 11:47:51
	% DurationCPUTime: 0.96s
	% Computational Cost: add. (495->104), mult. (1488->157), div. (0->0), fcn. (1380->8), ass. (0->66)
	t299 = sin(qJ(2));
	t298 = sin(qJ(3));
	t302 = cos(qJ(3));
	t301 = cos(qJ(5));
	t297 = sin(qJ(5));
	t350 = pkin(5) + r_i_i_C(1);
	t323 = -t350 * t297 - qJ(4);
	t312 = -t301 * r_i_i_C(2) + t323;
	t347 = -t301 * pkin(5) - pkin(3) - pkin(4);
	t324 = t297 * r_i_i_C(2) + t347;
	t314 = t301 * r_i_i_C(1) - t324;
	t307 = t312 * t298 - t314 * t302 - pkin(2);
	t303 = cos(qJ(2));
	t333 = -r_i_i_C(3) - qJ(6) - pkin(9) + pkin(8);
	t354 = t333 * t303;
	t366 = t307 * t299 + t354;
	t315 = t297 * t298 + t301 * t302;
	t316 = t297 * t302 - t298 * t301;
	t365 = (t314 * t298 + t312 * t302) * qJD(3) - t333 * qJD(2) - t298 * qJD(4) + (t315 * r_i_i_C(2) + t350 * t316) * qJD(5);
	t362 = (-t299 * pkin(2) + t354) * qJD(2) - t299 * qJD(6);
	t304 = cos(qJ(1));
	t344 = t302 * t304;
	t300 = sin(qJ(1));
	t345 = t300 * t303;
	t279 = t298 * t345 + t344;
	t343 = t304 * t298;
	t280 = t302 * t345 - t343;
	t320 = t279 * t301 - t280 * t297;
	t357 = t320 * r_i_i_C(2);
	t339 = qJD(2) * t303;
	t355 = t316 * t339;
	t351 = (qJD(3) - qJD(5)) * t299;
	t337 = qJD(3) * t302;
	t341 = qJD(1) * t304;
	t310 = t298 * t341 + t300 * t337;
	t336 = qJD(3) * t304;
	t329 = t298 * t336;
	t340 = qJD(2) * t299;
	t332 = t300 * t340;
	t342 = qJD(1) * t300;
	t277 = -t298 * t332 - t302 * t342 + t310 * t303 - t329;
	t274 = t277 * t301;
	t346 = t300 * t298;
	t338 = qJD(2) * t304;
	t331 = qJD(3) * t346;
	t330 = t299 * t338;
	t328 = t302 * t336;
	t327 = t297 * pkin(5) + qJ(4);
	t313 = t315 * qJD(5);
	t322 = -r_i_i_C(1) * (t355 + (-t315 * qJD(3) + t313) * t299) - r_i_i_C(2) * (t315 * t339 + t316 * t351);
	t282 = t303 * t344 + t346;
	t278 = t282 * qJD(1) - t302 * t332 - t303 * t331 - t328;
	t321 = -t278 * t297 + t274;
	t319 = t279 * t297 + t280 * t301;
	t281 = -t300 * t302 + t303 * t343;
	t318 = t281 * t301 - t282 * t297;
	t317 = t281 * t297 + t282 * t301;
	t309 = -pkin(2) * t303 - t333 * t299 - pkin(1);
	t275 = t279 * qJD(1) + t298 * t330 - t303 * t328 - t331;
	t308 = t318 * qJD(5) - t275 * t297;
	t276 = t303 * t329 + (t303 * t342 + t330) * t302 - t310;
	t270 = -t317 * qJD(5) - t275 * t301 + t276 * t297;
	t306 = t307 * qJD(2) - qJD(6);
	t305 = t365 * t299 + t306 * t303;
	t271 = -t276 * t301 + t308;
	t1 = [-t274 * r_i_i_C(2) - t279 * qJD(4) - t314 * t278 + t323 * t277 + (t319 * r_i_i_C(2) - t350 * t320) * qJD(5) - t362 * t300 + (-t300 * pkin(7) + t309 * t304) * qJD(1), t305 * t304 - t366 * t342, t282 * qJD(4) + t312 * t276 + t314 * t275 + (t318 * r_i_i_C(2) + t350 * t317) * qJD(5), -t275, -r_i_i_C(2) * t271 + t350 * t270, t299 * t342 - t303 * t338; t271 * r_i_i_C(1) + t270 * r_i_i_C(2) - t275 * qJ(4) + t281 * qJD(4) + t347 * t276 + t308 * pkin(5) + t362 * t304 + (pkin(7) * t304 + t309 * t300) * qJD(1), t305 * t300 + t366 * t341, -t274 * r_i_i_C(1) + t280 * qJD(4) - t312 * t278 + t324 * t277 + (t350 * t319 + t357) * qJD(5), t277, t321 * r_i_i_C(1) + (-t277 * t297 - t278 * t301) * r_i_i_C(2) + (-t319 * r_i_i_C(1) - t357) * qJD(5) + (-t319 * qJD(5) + t321) * pkin(5), -t299 * t341 - t300 * t339; 0, t306 * t299 - t365 * t303, (t347 * t298 + t327 * t302) * t339 + (qJD(4) * t302 + pkin(5) * t313 + (-t327 * t298 + t347 * t302) * qJD(3)) * t299 - t322, t298 * t339 + t299 * t337, (t315 * t351 - t355) * pkin(5) + t322, -t340;];
	JaD_transl = t1;
else
	JaD_transl=NaN(3,6);
end