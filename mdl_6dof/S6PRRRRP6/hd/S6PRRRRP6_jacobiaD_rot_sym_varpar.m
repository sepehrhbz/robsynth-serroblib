% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6PRRRRP6
% Use Code from Maple symbolic Code Generation
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
% 
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S6PRRRRP6_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d5,theta1]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 23:11
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6PRRRRP6_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRP6_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRRP6_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRRRRP6_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRRP6_jacobiaD_rot_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:38
	% EndTime: 2019-10-09 23:11:38
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:38
	% EndTime: 2019-10-09 23:11:38
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:38
	% EndTime: 2019-10-09 23:11:38
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (46->7), mult. (159->21), div. (18->4), fcn. (175->5), ass. (0->15)
	t39 = cos(pkin(12));
	t41 = sin(qJ(2));
	t42 = cos(qJ(2));
	t45 = sin(pkin(12)) * cos(pkin(6));
	t37 = t39 * t42 - t41 * t45;
	t34 = 0.1e1 / t37 ^ 2;
	t49 = qJD(2) * t34;
	t36 = t39 * t41 + t42 * t45;
	t33 = t36 ^ 2;
	t30 = t33 * t34 + 0.1e1;
	t46 = t37 * t49;
	t47 = t36 / t37 * t49;
	t48 = (t33 * t47 + t36 * t46) / t30 ^ 2;
	t28 = 0.1e1 / t30;
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, -0.2e1 * t48 + 0.2e1 * (t28 * t46 + (t28 * t47 - t34 * t48) * t36) * t36, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:38
	% EndTime: 2019-10-09 23:11:39
	% DurationCPUTime: 0.72s
	% Computational Cost: add. (1326->63), mult. (4214->161), div. (275->12), fcn. (5416->13), ass. (0->79)
	t164 = sin(pkin(7));
	t162 = t164 ^ 2;
	t206 = 0.2e1 * t162;
	t166 = cos(pkin(12));
	t163 = sin(pkin(12));
	t170 = sin(qJ(2));
	t168 = cos(pkin(6));
	t172 = cos(qJ(2));
	t190 = t168 * t172;
	t182 = -t163 * t170 + t166 * t190;
	t165 = sin(pkin(6));
	t167 = cos(pkin(7));
	t195 = t165 * t167;
	t146 = t182 * t164 + t166 * t195;
	t196 = t164 * t172;
	t156 = -t165 * t196 + t168 * t167;
	t141 = atan2(t146, t156);
	t136 = sin(t141);
	t137 = cos(t141);
	t123 = t136 * t146 + t137 * t156;
	t120 = 0.1e1 / t123;
	t169 = sin(qJ(3));
	t171 = cos(qJ(3));
	t191 = t168 * t170;
	t180 = t163 * t191 - t166 * t172;
	t181 = t163 * t190 + t166 * t170;
	t187 = t163 * t164 * t165;
	t183 = -t167 * t181 + t187;
	t135 = t183 * t169 - t171 * t180;
	t131 = 0.1e1 / t135;
	t153 = 0.1e1 / t156;
	t121 = 0.1e1 / t123 ^ 2;
	t132 = 0.1e1 / t135 ^ 2;
	t154 = 0.1e1 / t156 ^ 2;
	t147 = t163 * t195 + t164 * t181;
	t145 = t147 ^ 2;
	t119 = t121 * t145 + 0.1e1;
	t152 = t180 * qJD(2);
	t157 = -t163 * t172 - t166 * t191;
	t150 = t157 * qJD(2);
	t194 = t165 * t170;
	t198 = t146 * t154;
	t185 = t194 * t198;
	t144 = t146 ^ 2;
	t140 = t144 * t154 + 0.1e1;
	t138 = 0.1e1 / t140;
	t199 = t138 * t164;
	t115 = (-qJD(2) * t185 + t150 * t153) * t199;
	t184 = -t136 * t156 + t137 * t146;
	t189 = qJD(2) * t165;
	t186 = t170 * t189;
	t112 = (t136 * t150 + t137 * t186) * t164 + t184 * t115;
	t204 = t112 * t120 * t121;
	t205 = (-t121 * t147 * t152 * t164 - t145 * t204) / t119 ^ 2;
	t192 = t167 * t171;
	t197 = t180 * t169;
	t134 = -t171 * t187 + t181 * t192 - t197;
	t130 = t134 ^ 2;
	t127 = t130 * t132 + 0.1e1;
	t151 = t181 * qJD(2);
	t193 = t167 * t169;
	t129 = t152 * t193 - t151 * t171 + (t183 * t171 + t197) * qJD(3);
	t201 = t129 * t131 * t132;
	t128 = t135 * qJD(3) - t151 * t169 - t152 * t192;
	t202 = t128 * t132;
	t203 = (-t130 * t201 + t134 * t202) / t127 ^ 2;
	t143 = -t171 * t181 + t180 * t193;
	t200 = t134 * t143;
	t188 = t154 * t162 * t170;
	t142 = -t169 * t181 - t180 * t192;
	t179 = -t153 * t157 + t185;
	t155 = t153 * t154;
	t149 = t182 * qJD(2);
	t125 = 0.1e1 / t127;
	t117 = 0.1e1 / t119;
	t116 = t179 * t199;
	t113 = (t136 * t157 + t137 * t194) * t164 - t184 * t116;
	t111 = t179 / t140 ^ 2 * (-t144 * t155 * t186 + t150 * t198) * t206 + (-t149 * t153 * t164 + (-t150 * t188 + (-t157 * t188 + (t155 * t165 * t170 ^ 2 * t206 - t154 * t196) * t146) * qJD(2)) * t165) * t138;
	t1 = [0, t111, 0, 0, 0, 0; 0, (-(t123 * t116 * t115 + t184 * t111) * t121 * t117 + 0.2e1 * (t117 * t204 + t121 * t205) * t113) * t147 + (0.2e1 * t180 * t120 * t205 + (-t151 * t120 + (t180 * t112 + t113 * t152 + (-(t115 * t157 - t116 * t150 + t172 * t189) * t137 - (-t149 + (qJD(2) * t116 - t115) * t194) * t136) * t147) * t121) * t117) * t164, 0, 0, 0, 0; 0, 0.2e1 * (-t131 * t142 + t132 * t200) * t203 + ((t143 * qJD(3) - t151 * t192 + t152 * t169) * t131 + 0.2e1 * t200 * t201 + (-t142 * t129 - (-t142 * qJD(3) + t151 * t193 + t152 * t171) * t134 - t143 * t128) * t132) * t125, -0.2e1 * t203 + 0.2e1 * (t125 * t202 + (-t125 * t201 - t132 * t203) * t134) * t134, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:38
	% EndTime: 2019-10-09 23:11:40
	% DurationCPUTime: 1.72s
	% Computational Cost: add. (5341->130), mult. (16984->252), div. (538->12), fcn. (21480->15), ass. (0->122)
	t287 = sin(qJ(2));
	t290 = cos(qJ(2));
	t354 = cos(pkin(12));
	t355 = cos(pkin(6));
	t320 = t355 * t354;
	t353 = sin(pkin(12));
	t306 = -t353 * t287 + t290 * t320;
	t271 = t306 * qJD(2);
	t282 = sin(pkin(7));
	t283 = sin(pkin(6));
	t323 = t354 * t283 * t282;
	t358 = -qJD(3) * t323 + t271;
	t286 = sin(qJ(3));
	t305 = -t287 * t320 - t353 * t290;
	t300 = t305 * qJD(2);
	t289 = cos(qJ(3));
	t301 = t306 * t289;
	t357 = qJD(3) * t301 + t286 * t300;
	t284 = cos(pkin(7));
	t302 = t306 * t286;
	t297 = t284 * t302 - t289 * t305;
	t338 = t284 * t289;
	t225 = t297 * qJD(3) + t358 * t286 - t300 * t338;
	t343 = t305 * t286;
	t249 = -t284 * t301 + t289 * t323 - t343;
	t247 = t249 ^ 2;
	t334 = t289 * t290;
	t337 = t286 * t287;
	t311 = t284 * t334 - t337;
	t327 = t355 * t282;
	t262 = -t311 * t283 - t289 * t327;
	t260 = 0.1e1 / t262 ^ 2;
	t241 = t247 * t260 + 0.1e1;
	t344 = t249 * t260;
	t335 = t287 * t289;
	t336 = t286 * t290;
	t309 = t284 * t336 + t335;
	t310 = t284 * t335 + t336;
	t321 = qJD(3) * t327;
	t245 = t286 * t321 + (t310 * qJD(2) + t309 * qJD(3)) * t283;
	t259 = 0.1e1 / t262;
	t345 = t245 * t259 * t260;
	t356 = -0.2e1 * (t225 * t344 - t247 * t345) / t241 ^ 2;
	t242 = atan2(-t249, t262);
	t237 = sin(t242);
	t238 = cos(t242);
	t219 = -t237 * t249 + t238 * t262;
	t216 = 0.1e1 / t219;
	t319 = t355 * t353;
	t304 = t287 * t319 - t354 * t290;
	t303 = t354 * t287 + t290 * t319;
	t328 = t283 * t353;
	t322 = t282 * t328;
	t307 = -t284 * t303 + t322;
	t253 = t307 * t286 - t289 * t304;
	t264 = t282 * t303 + t284 * t328;
	t285 = sin(qJ(4));
	t288 = cos(qJ(4));
	t236 = t253 * t288 + t264 * t285;
	t232 = 0.1e1 / t236;
	t217 = 0.1e1 / t219 ^ 2;
	t233 = 0.1e1 / t236 ^ 2;
	t239 = 0.1e1 / t241;
	t209 = (-t225 * t259 + t245 * t344) * t239;
	t318 = -t237 * t262 - t238 * t249;
	t205 = t318 * t209 - t237 * t225 + t238 * t245;
	t352 = t205 * t216 * t217;
	t272 = t303 * qJD(2);
	t273 = t304 * qJD(2);
	t339 = t284 * t286;
	t342 = t304 * t286;
	t228 = t273 * t339 - t272 * t289 + (t307 * t289 + t342) * qJD(3);
	t340 = t282 * t288;
	t220 = t236 * qJD(4) + t228 * t285 + t273 * t340;
	t235 = t253 * t285 - t264 * t288;
	t231 = t235 ^ 2;
	t224 = t231 * t233 + 0.1e1;
	t348 = t233 * t235;
	t333 = qJD(4) * t235;
	t341 = t282 * t285;
	t221 = t228 * t288 - t273 * t341 - t333;
	t349 = t221 * t232 * t233;
	t351 = (t220 * t348 - t231 * t349) / t224 ^ 2;
	t252 = -t289 * t322 + t303 * t338 - t342;
	t350 = t217 * t252;
	t347 = t237 * t252;
	t346 = t238 * t252;
	t248 = t252 ^ 2;
	t215 = t248 * t217 + 0.1e1;
	t227 = t253 * qJD(3) - t272 * t286 - t273 * t338;
	t332 = 0.2e1 * (t227 * t350 - t248 * t352) / t215 ^ 2;
	t331 = -0.2e1 * t351;
	t330 = t235 * t349;
	t329 = qJD(3) * t343;
	t325 = -0.2e1 * t249 * t345;
	t324 = 0.2e1 * t252 * t352;
	t315 = -t285 * t232 + t288 * t348;
	t251 = -t286 * t323 + t297;
	t263 = t309 * t283 + t286 * t327;
	t314 = -t251 * t259 + t263 * t344;
	t255 = -t305 * t338 + t302;
	t270 = t310 * t283;
	t313 = -t255 * t259 + t270 * t344;
	t257 = -t289 * t303 + t304 * t339;
	t312 = -t257 * t285 - t304 * t340;
	t244 = t257 * t288 - t304 * t341;
	t256 = -t286 * t303 - t304 * t338;
	t308 = -t284 * t337 + t334;
	t254 = (t311 * qJD(2) + t308 * qJD(3)) * t283;
	t246 = t289 * t321 + (t308 * qJD(2) + t311 * qJD(3)) * t283;
	t230 = -t256 * qJD(3) + t272 * t339 + t273 * t289;
	t229 = t271 * t338 + t284 * t329 + t357;
	t226 = t357 * t284 + t358 * t289 + t329;
	t222 = 0.1e1 / t224;
	t213 = 0.1e1 / t215;
	t211 = t313 * t239;
	t210 = t314 * t239;
	t207 = t318 * t211 - t237 * t255 + t238 * t270;
	t206 = t318 * t210 - t237 * t251 + t238 * t263;
	t204 = t313 * t356 + (t270 * t325 - t229 * t259 + (t225 * t270 + t245 * t255 + t249 * t254) * t260) * t239;
	t203 = t314 * t356 + (t263 * t325 - t226 * t259 + (t225 * t263 + t245 * t251 + t246 * t249) * t260) * t239;
	t1 = [0, t204, t203, 0, 0, 0; 0, (t207 * t350 - t216 * t256) * t332 + ((t257 * qJD(3) - t272 * t338 + t273 * t286) * t216 + t207 * t324 + (-t256 * t205 - t207 * t227 - (-t204 * t249 - t211 * t225 + t254 + (-t211 * t262 - t255) * t209) * t346 - (-t204 * t262 - t211 * t245 - t229 + (t211 * t249 - t270) * t209) * t347) * t217) * t213, (t206 * t350 - t216 * t253) * t332 + (t206 * t324 + t228 * t216 + (-t253 * t205 - t206 * t227 - (-t203 * t249 - t210 * t225 + t246 + (-t210 * t262 - t251) * t209) * t346 - (-t203 * t262 - t210 * t245 - t226 + (t210 * t249 - t263) * t209) * t347) * t217) * t213, 0, 0, 0; 0, 0.2e1 * (t232 * t312 + t244 * t348) * t351 + ((t244 * qJD(4) + t230 * t285 + t272 * t340) * t232 + 0.2e1 * t244 * t330 + (t312 * t221 - (t312 * qJD(4) + t230 * t288 - t272 * t341) * t235 - t244 * t220) * t233) * t222, t315 * t252 * t331 + (t315 * t227 + ((-qJD(4) * t232 - 0.2e1 * t330) * t288 + (t220 * t288 + (t221 - t333) * t285) * t233) * t252) * t222, t331 + 0.2e1 * (t220 * t233 * t222 + (-t222 * t349 - t233 * t351) * t235) * t235, 0, 0;];
	JaD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:39
	% EndTime: 2019-10-09 23:11:43
	% DurationCPUTime: 4.15s
	% Computational Cost: add. (14691->202), mult. (44088->385), div. (816->12), fcn. (56595->17), ass. (0->161)
	t391 = sin(qJ(3));
	t395 = cos(qJ(3));
	t386 = sin(pkin(7));
	t388 = cos(pkin(7));
	t392 = sin(qJ(2));
	t396 = cos(qJ(2));
	t472 = cos(pkin(12));
	t473 = cos(pkin(6));
	t425 = t473 * t472;
	t471 = sin(pkin(12));
	t410 = t471 * t392 - t396 * t425;
	t387 = sin(pkin(6));
	t436 = t387 * t472;
	t403 = -t386 * t436 - t410 * t388;
	t411 = -t392 * t425 - t471 * t396;
	t359 = t391 * t411 + t395 * t403;
	t376 = t410 * qJD(2);
	t377 = t411 * qJD(2);
	t453 = t388 * t391;
	t337 = qJD(3) * t359 - t376 * t395 + t377 * t453;
	t360 = t391 * t403 - t395 * t411;
	t390 = sin(qJ(4));
	t394 = cos(qJ(4));
	t404 = t410 * t386 - t388 * t436;
	t347 = t360 * t394 + t390 * t404;
	t455 = t386 * t394;
	t312 = qJD(4) * t347 + t337 * t390 + t377 * t455;
	t345 = t360 * t390 - t394 * t404;
	t343 = t345 ^ 2;
	t448 = t392 * t395;
	t449 = t391 * t396;
	t414 = t388 * t449 + t448;
	t434 = t473 * t386;
	t372 = t414 * t387 + t391 * t434;
	t454 = t386 * t396;
	t380 = -t387 * t454 + t473 * t388;
	t363 = t372 * t390 - t380 * t394;
	t357 = 0.1e1 / t363 ^ 2;
	t328 = t343 * t357 + 0.1e1;
	t326 = 0.1e1 / t328;
	t446 = t395 * t396;
	t450 = t391 * t392;
	t413 = -t388 * t450 + t446;
	t416 = t388 * t446 - t450;
	t427 = qJD(3) * t434;
	t354 = t395 * t427 + (t413 * qJD(2) + t416 * qJD(3)) * t387;
	t364 = t372 * t394 + t380 * t390;
	t456 = t386 * t392;
	t437 = t387 * t456;
	t429 = qJD(2) * t437;
	t330 = t364 * qJD(4) + t354 * t390 - t394 * t429;
	t356 = 0.1e1 / t363;
	t462 = t345 * t357;
	t295 = (-t312 * t356 + t330 * t462) * t326;
	t329 = atan2(-t345, t363);
	t324 = sin(t329);
	t325 = cos(t329);
	t423 = -t324 * t363 - t325 * t345;
	t290 = t423 * t295 - t324 * t312 + t325 * t330;
	t308 = -t324 * t345 + t325 * t363;
	t305 = 0.1e1 / t308;
	t306 = 0.1e1 / t308 ^ 2;
	t476 = t290 * t305 * t306;
	t424 = t473 * t471;
	t408 = t472 * t392 + t396 * t424;
	t435 = t387 * t471;
	t428 = t386 * t435;
	t405 = -t408 * t388 + t428;
	t409 = t392 * t424 - t472 * t396;
	t362 = t391 * t405 - t395 * t409;
	t406 = t408 * t386 + t388 * t435;
	t348 = t362 * t390 - t394 * t406;
	t430 = 0.2e1 * t348 * t476;
	t371 = t416 * t387 + t395 * t434;
	t418 = -t356 * t359 + t371 * t462;
	t475 = t390 * t418;
	t463 = t330 * t356 * t357;
	t474 = -0.2e1 * (t312 * t462 - t343 * t463) / t328 ^ 2;
	t349 = t362 * t394 + t390 * t406;
	t407 = t408 * t395;
	t458 = t409 * t391;
	t361 = t388 * t407 - t395 * t428 - t458;
	t389 = sin(qJ(5));
	t393 = cos(qJ(5));
	t323 = t349 * t393 + t361 * t389;
	t319 = 0.1e1 / t323;
	t320 = 0.1e1 / t323 ^ 2;
	t378 = t408 * qJD(2);
	t379 = t409 * qJD(2);
	t339 = t379 * t453 - t378 * t395 + (t395 * t405 + t458) * qJD(3);
	t457 = t386 * t390;
	t315 = -qJD(4) * t348 + t339 * t394 - t379 * t457;
	t452 = t388 * t395;
	t338 = qJD(3) * t362 - t378 * t391 - t379 * t452;
	t303 = t323 * qJD(5) + t315 * t389 - t338 * t393;
	t322 = t349 * t389 - t361 * t393;
	t318 = t322 ^ 2;
	t311 = t318 * t320 + 0.1e1;
	t466 = t320 * t322;
	t443 = qJD(5) * t322;
	t304 = t315 * t393 + t338 * t389 - t443;
	t469 = t304 * t319 * t320;
	t470 = (t303 * t466 - t318 * t469) / t311 ^ 2;
	t468 = t306 * t348;
	t314 = qJD(4) * t349 + t339 * t390 + t379 * t455;
	t467 = t314 * t306;
	t465 = t324 * t348;
	t464 = t325 * t348;
	t461 = t361 * t390;
	t460 = t361 * t394;
	t451 = t389 * t319;
	t447 = t393 * t322;
	t445 = qJD(4) * t390;
	t444 = qJD(4) * t394;
	t344 = t348 ^ 2;
	t302 = t344 * t306 + 0.1e1;
	t442 = 0.2e1 * (-t344 * t476 + t348 * t467) / t302 ^ 2;
	t441 = -0.2e1 * t470;
	t440 = 0.2e1 * t470;
	t438 = t322 * t469;
	t432 = 0.2e1 * t438;
	t431 = -0.2e1 * t345 * t463;
	t426 = qJD(5) * t460 + t339;
	t367 = t409 * t453 - t407;
	t352 = t367 * t394 - t409 * t457;
	t366 = -t391 * t408 - t409 * t452;
	t335 = t352 * t393 + t366 * t389;
	t334 = t352 * t389 - t366 * t393;
	t421 = t320 * t447 - t451;
	t420 = -t347 * t356 + t364 * t462;
	t365 = -t395 * t410 + t411 * t453;
	t350 = t365 * t390 + t411 * t455;
	t375 = t413 * t387;
	t368 = t375 * t390 - t394 * t437;
	t419 = -t350 * t356 + t368 * t462;
	t417 = -t367 * t390 - t409 * t455;
	t415 = -t388 * t448 - t449;
	t412 = qJD(5) * t362 - t338 * t394 + t361 * t445;
	t353 = -t391 * t427 + (t415 * qJD(2) - t414 * qJD(3)) * t387;
	t342 = -qJD(3) * t366 + t378 * t453 + t379 * t395;
	t341 = qJD(3) * t367 - t378 * t452 + t379 * t391;
	t340 = t375 * t444 + ((t415 * qJD(3) + qJD(4) * t456) * t390 + (-t414 * t390 - t394 * t454) * qJD(2)) * t387;
	t336 = -t360 * qJD(3) + t376 * t391 + t377 * t452;
	t333 = t362 * t389 - t393 * t460;
	t332 = -t362 * t393 - t389 * t460;
	t331 = -t363 * qJD(4) + t354 * t394 + t390 * t429;
	t317 = t417 * qJD(4) + t342 * t394 - t378 * t457;
	t316 = (t376 * t453 + t377 * t395 + (t391 * t410 + t411 * t452) * qJD(3)) * t390 + t365 * t444 + t376 * t455 - t411 * t386 * t445;
	t313 = -qJD(4) * t345 + t337 * t394 - t377 * t457;
	t309 = 0.1e1 / t311;
	t300 = 0.1e1 / t302;
	t299 = t326 * t475;
	t298 = t419 * t326;
	t297 = t420 * t326;
	t293 = (-t324 * t359 + t325 * t371) * t390 + t423 * t299;
	t292 = t423 * t298 - t324 * t350 + t325 * t368;
	t291 = t423 * t297 - t324 * t347 + t325 * t364;
	t289 = t419 * t474 + (t368 * t431 - t316 * t356 + (t312 * t368 + t330 * t350 + t340 * t345) * t357) * t326;
	t287 = t420 * t474 + (t364 * t431 - t313 * t356 + (t312 * t364 + t330 * t347 + t331 * t345) * t357) * t326;
	t286 = t474 * t475 + (t418 * t444 + (t371 * t431 - t336 * t356 + (t312 * t371 + t330 * t359 + t345 * t353) * t357) * t390) * t326;
	t1 = [0, t289, t286, t287, 0, 0; 0, (t292 * t468 + t305 * t417) * t442 + ((t352 * qJD(4) + t342 * t390 + t378 * t455) * t305 + t292 * t430 + (t417 * t290 - t292 * t314 - (-t289 * t345 - t298 * t312 + t340 + (-t298 * t363 - t350) * t295) * t464 - (-t289 * t363 - t298 * t330 - t316 + (t298 * t345 - t368) * t295) * t465) * t306) * t300, (t293 * t468 + t305 * t461) * t442 + ((-t338 * t390 - t361 * t444) * t305 + (-t467 + t430) * t293 + (t461 * t290 - (t371 * t444 - t286 * t345 - t299 * t312 + t353 * t390 + (-t299 * t363 - t359 * t390) * t295) * t464 - (-t359 * t444 - t286 * t363 - t299 * t330 - t336 * t390 + (t299 * t345 - t371 * t390) * t295) * t465) * t306) * t300, (t291 * t468 - t305 * t349) * t442 + (t291 * t430 + t315 * t305 + (-t349 * t290 - t291 * t314 - (-t287 * t345 - t297 * t312 + t331 + (-t297 * t363 - t347) * t295) * t464 - (-t287 * t363 - t297 * t330 - t313 + (t297 * t345 - t364) * t295) * t465) * t306) * t300, 0, 0; 0, (-t319 * t334 + t335 * t466) * t440 + ((t335 * qJD(5) + t317 * t389 - t341 * t393) * t319 + t335 * t432 + (-t334 * t304 - (-t334 * qJD(5) + t317 * t393 + t341 * t389) * t322 - t335 * t303) * t320) * t309, (-t319 * t332 + t333 * t466) * t440 + (t333 * t432 - t426 * t319 * t393 + t412 * t451 + (-t426 * t322 * t389 - t333 * t303 - t332 * t304 - t412 * t447) * t320) * t309, t421 * t348 * t441 + (t421 * t314 + ((-qJD(5) * t319 - 0.2e1 * t438) * t393 + (t303 * t393 + (t304 - t443) * t389) * t320) * t348) * t309, t441 + 0.2e1 * (t303 * t320 * t309 + (-t309 * t469 - t320 * t470) * t322) * t322, 0;];
	JaD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:39
	% EndTime: 2019-10-09 23:11:47
	% DurationCPUTime: 7.41s
	% Computational Cost: add. (30342->261), mult. (90603->485), div. (1041->12), fcn. (116353->17), ass. (0->185)
	t533 = cos(pkin(12));
	t534 = cos(pkin(6));
	t486 = t534 * t533;
	t532 = sin(pkin(12));
	t535 = sin(qJ(2));
	t537 = cos(qJ(2));
	t468 = -t537 * t486 + t532 * t535;
	t432 = t468 * qJD(2);
	t469 = t486 * t535 + t532 * t537;
	t433 = t469 * qJD(2);
	t445 = cos(pkin(7));
	t448 = sin(qJ(3));
	t518 = t445 * t448;
	t536 = cos(qJ(3));
	t463 = t468 * t536;
	t443 = sin(pkin(7));
	t444 = sin(pkin(6));
	t498 = t444 * t533;
	t489 = t443 * t498;
	t540 = -t445 * t463 - t448 * t469 - t489 * t536;
	t388 = t540 * qJD(3) - t432 * t536 - t433 * t518;
	t413 = t448 * (-t445 * t468 - t489) + t469 * t536;
	t425 = t443 * t468 - t445 * t498;
	t447 = sin(qJ(4));
	t450 = cos(qJ(4));
	t399 = -t413 * t447 + t425 * t450;
	t520 = t443 * t447;
	t364 = qJD(4) * t399 + t388 * t450 + t433 * t520;
	t400 = t413 * t450 + t425 * t447;
	t446 = sin(qJ(5));
	t449 = cos(qJ(5));
	t376 = t400 * t449 - t446 * t540;
	t503 = t445 * t536;
	t539 = t413 * qJD(3) - t432 * t448 + t433 * t503;
	t345 = t376 * qJD(5) + t364 * t446 - t539 * t449;
	t492 = t537 * t536;
	t501 = t535 * t448;
	t472 = -t445 * t501 + t492;
	t473 = t445 * t492 - t501;
	t499 = t443 * t534;
	t481 = t536 * t499;
	t409 = qJD(3) * t481 + (qJD(2) * t472 + qJD(3) * t473) * t444;
	t491 = t535 * t536;
	t502 = t537 * t448;
	t474 = t445 * t502 + t491;
	t490 = t448 * t499;
	t424 = t444 * t474 + t490;
	t505 = t443 * t537;
	t436 = -t444 * t505 + t445 * t534;
	t416 = -t424 * t447 + t436 * t450;
	t504 = t443 * t535;
	t493 = t444 * t504;
	t482 = qJD(2) * t493;
	t380 = qJD(4) * t416 + t409 * t450 + t447 * t482;
	t417 = t424 * t450 + t436 * t447;
	t423 = -t473 * t444 - t481;
	t398 = t417 * t449 + t423 * t446;
	t471 = t445 * t491 + t502;
	t408 = qJD(3) * t490 + (qJD(2) * t471 + qJD(3) * t474) * t444;
	t351 = qJD(5) * t398 + t380 * t446 - t408 * t449;
	t374 = t400 * t446 + t449 * t540;
	t369 = t374 ^ 2;
	t397 = t417 * t446 - t423 * t449;
	t392 = 0.1e1 / t397 ^ 2;
	t359 = t369 * t392 + 0.1e1;
	t355 = 0.1e1 / t359;
	t391 = 0.1e1 / t397;
	t522 = t374 * t392;
	t331 = (-t345 * t391 + t351 * t522) * t355;
	t361 = atan2(-t374, t397);
	t353 = sin(t361);
	t354 = cos(t361);
	t484 = -t353 * t397 - t354 * t374;
	t326 = t331 * t484 - t353 * t345 + t354 * t351;
	t344 = -t353 * t374 + t354 * t397;
	t341 = 0.1e1 / t344;
	t342 = 0.1e1 / t344 ^ 2;
	t543 = t326 * t341 * t342;
	t485 = t534 * t532;
	t437 = -t485 * t535 + t533 * t537;
	t470 = t485 * t537 + t533 * t535;
	t497 = t444 * t532;
	t488 = t443 * t497;
	t415 = t437 * t536 + (-t445 * t470 + t488) * t448;
	t426 = t443 * t470 + t445 * t497;
	t402 = t415 * t450 + t426 * t447;
	t465 = t470 * t536;
	t414 = t437 * t448 + t445 * t465 - t488 * t536;
	t377 = t402 * t446 - t414 * t449;
	t542 = -0.2e1 * t377;
	t495 = 0.2e1 * t377 * t543;
	t477 = -t391 * t399 + t416 * t522;
	t541 = t446 * t477;
	t527 = t351 * t391 * t392;
	t538 = -0.2e1 * (t345 * t522 - t369 * t527) / t359 ^ 2;
	t378 = t402 * t449 + t414 * t446;
	t371 = 0.1e1 / t378;
	t372 = 0.1e1 / t378 ^ 2;
	t401 = -t415 * t447 + t426 * t450;
	t396 = t401 ^ 2;
	t524 = t372 * t396;
	t360 = 0.1e1 + t524;
	t434 = t470 * qJD(2);
	t435 = t437 * qJD(2);
	t390 = -qJD(3) * t414 - t434 * t536 - t435 * t518;
	t519 = t443 * t450;
	t365 = -qJD(4) * t402 - t390 * t447 + t435 * t519;
	t366 = qJD(4) * t401 + t390 * t450 + t435 * t520;
	t389 = qJD(3) * t415 - t434 * t448 + t435 * t503;
	t348 = -qJD(5) * t377 + t366 * t449 + t389 * t446;
	t528 = t348 * t371 * t372;
	t507 = t396 * t528;
	t523 = t372 * t401;
	t531 = (t365 * t523 - t507) / t360 ^ 2;
	t530 = t342 * t377;
	t347 = qJD(5) * t378 + t366 * t446 - t389 * t449;
	t529 = t347 * t342;
	t526 = t353 * t377;
	t525 = t354 * t377;
	t521 = t401 * t446;
	t517 = t446 * t450;
	t516 = t449 * t450;
	t515 = qJD(4) * t447;
	t514 = qJD(4) * t450;
	t513 = qJD(5) * t446;
	t512 = qJD(5) * t449;
	t511 = qJD(5) * t450;
	t370 = t377 ^ 2;
	t340 = t342 * t370 + 0.1e1;
	t510 = 0.2e1 * (-t370 * t543 + t377 * t529) / t340 ^ 2;
	t509 = 0.2e1 * t531;
	t506 = t401 * t528;
	t500 = t446 * t515;
	t496 = -0.2e1 * t374 * t527;
	t494 = 0.2e1 * t506;
	t421 = -t437 * t518 - t465;
	t406 = t421 * t450 + t437 * t520;
	t420 = t437 * t503 - t448 * t470;
	t386 = t406 * t449 + t420 * t446;
	t385 = t406 * t446 - t420 * t449;
	t480 = -t376 * t391 + t398 * t522;
	t459 = t450 * t540;
	t381 = -t413 * t449 + t446 * t459;
	t403 = -t423 * t517 - t424 * t449;
	t479 = -t381 * t391 + t403 * t522;
	t466 = t445 * t469;
	t419 = -t448 * t466 - t463;
	t467 = t443 * t469;
	t404 = t419 * t450 + t447 * t467;
	t458 = -t448 * t468 + t466 * t536;
	t384 = t404 * t446 - t449 * t458;
	t431 = t472 * t444;
	t422 = t431 * t450 + t447 * t493;
	t430 = t471 * t444;
	t407 = t422 * t446 - t430 * t449;
	t478 = -t384 * t391 + t407 * t522;
	t405 = -t421 * t447 + t437 * t519;
	t395 = -qJD(3) * t420 + t434 * t518 - t435 * t536;
	t394 = qJD(3) * t421 - t434 * t503 - t435 * t448;
	t383 = -t414 * t516 + t415 * t446;
	t382 = -t414 * t517 - t415 * t449;
	t379 = -qJD(4) * t417 - t409 * t447 + t450 * t482;
	t368 = qJD(4) * t405 + t395 * t450 - t434 * t520;
	t367 = -t431 * t500 + (t422 * t449 + t430 * t446) * qJD(5) + (t446 * t504 * t514 + (-t449 * t472 - t471 * t517) * qJD(3) + ((t447 * t505 - t450 * t474) * t446 - t473 * t449) * qJD(2)) * t444;
	t363 = -qJD(4) * t400 - t388 * t447 + t433 * t519;
	t362 = (-t423 * t511 - t409) * t449 + (qJD(5) * t424 - t408 * t450 + t423 * t515) * t446;
	t357 = 0.1e1 / t360;
	t352 = -qJD(5) * t397 + t380 * t449 + t408 * t446;
	t350 = -t388 * t449 + t413 * t513 + t459 * t512 - t500 * t540 - t539 * t517;
	t349 = ((-qJD(3) * t458 + t432 * t518 - t433 * t536) * t450 - t419 * t515 - t432 * t520 + t467 * t514) * t446 + t404 * t512 - (qJD(3) * t419 - t432 * t503 - t433 * t448) * t449 + t458 * t513;
	t346 = -qJD(5) * t374 + t364 * t449 + t539 * t446;
	t338 = 0.1e1 / t340;
	t337 = t355 * t541;
	t336 = t478 * t355;
	t335 = t479 * t355;
	t334 = t480 * t355;
	t330 = (-t353 * t399 + t354 * t416) * t446 + t484 * t337;
	t329 = t336 * t484 - t353 * t384 + t354 * t407;
	t328 = t335 * t484 - t353 * t381 + t354 * t403;
	t327 = t334 * t484 - t353 * t376 + t354 * t398;
	t325 = t478 * t538 + (t407 * t496 - t349 * t391 + (t345 * t407 + t351 * t384 + t367 * t374) * t392) * t355;
	t323 = t479 * t538 + (t403 * t496 - t350 * t391 + (t345 * t403 + t351 * t381 + t362 * t374) * t392) * t355;
	t322 = t480 * t538 + (t398 * t496 - t346 * t391 + (t345 * t398 + t351 * t376 + t352 * t374) * t392) * t355;
	t321 = t538 * t541 + (t477 * t512 + (t416 * t496 - t363 * t391 + (t345 * t416 + t351 * t399 + t374 * t379) * t392) * t446) * t355;
	t1 = [0, t325, t323, t321, t322, 0; 0, (t329 * t530 - t341 * t385) * t510 + ((qJD(5) * t386 + t368 * t446 - t394 * t449) * t341 + t329 * t495 + (-t385 * t326 - t329 * t347 - (-t325 * t374 - t336 * t345 + t367 + (-t336 * t397 - t384) * t331) * t525 - (-t325 * t397 - t336 * t351 - t349 + (t336 * t374 - t407) * t331) * t526) * t342) * t338, (t328 * t530 - t341 * t382) * t510 + (t328 * t495 + (-t382 * t326 - t328 * t347 - (-t323 * t374 - t335 * t345 + t362 + (-t335 * t397 - t381) * t331) * t525 - (-t323 * t397 - t335 * t351 - t350 + (t335 * t374 - t403) * t331) * t526) * t342 + ((-t414 * t511 - t390) * t449 + (qJD(5) * t415 - t389 * t450 + t414 * t515) * t446) * t341) * t338, (t330 * t530 - t341 * t521) * t510 + ((t365 * t446 + t401 * t512) * t341 + (-t529 + t495) * t330 + (-t521 * t326 - (t416 * t512 - t321 * t374 - t337 * t345 + t379 * t446 + (-t337 * t397 - t399 * t446) * t331) * t525 - (-t399 * t512 - t321 * t397 - t337 * t351 - t363 * t446 + (t337 * t374 - t416 * t446) * t331) * t526) * t342) * t338, (t327 * t530 - t341 * t378) * t510 + (t327 * t495 + t348 * t341 + (-t378 * t326 - t327 * t347 - (-t322 * t374 - t334 * t345 + t352 + (-t334 * t397 - t376) * t331) * t525 - (-t322 * t397 - t334 * t351 - t346 + (t334 * t374 - t398) * t331) * t526) * t342) * t338, 0; 0, (-t371 * t405 + t386 * t523) * t509 + ((-qJD(4) * t406 - t395 * t447 - t434 * t519) * t371 + t386 * t494 + (-t405 * t348 - (-qJD(5) * t385 + t368 * t449 + t394 * t446) * t401 - t386 * t365) * t372) * t357, (-t371 * t414 * t447 + t383 * t523) * t509 + (t383 * t494 + (t389 * t447 + t414 * t514) * t371 + (-(-t389 * t516 + t390 * t446 + t415 * t512) * t401 - t383 * t365 + (-t447 * t348 - (t446 * t511 + t449 * t515) * t401) * t414) * t372) * t357, (t371 * t402 + t449 * t524) * t509 + (0.2e1 * t449 * t507 - t366 * t371 + (-0.2e1 * t365 * t401 * t449 + t348 * t402 + t396 * t513) * t372) * t357, t523 * t531 * t542 + (t506 * t542 + (t347 * t401 + t365 * t377) * t372) * t357, 0;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end