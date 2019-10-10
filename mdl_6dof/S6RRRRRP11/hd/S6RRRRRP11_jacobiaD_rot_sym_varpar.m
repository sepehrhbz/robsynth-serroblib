% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRRP11
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
%   Wie in S6RRRRRP11_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d4,d5]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 13:13
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6RRRRRP11_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP11_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP11_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRRP11_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRP11_jacobiaD_rot_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:13:34
	% EndTime: 2019-10-10 13:13:34
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:13:34
	% EndTime: 2019-10-10 13:13:34
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:13:34
	% EndTime: 2019-10-10 13:13:35
	% DurationCPUTime: 0.40s
	% Computational Cost: add. (215->39), mult. (853->106), div. (126->12), fcn. (1047->9), ass. (0->54)
	t99 = sin(pkin(6));
	t93 = t99 ^ 2;
	t100 = cos(pkin(6));
	t95 = 0.1e1 / t100 ^ 2;
	t104 = cos(qJ(1));
	t98 = t104 ^ 2;
	t89 = t98 * t93 * t95 + 0.1e1;
	t102 = sin(qJ(1));
	t97 = t102 ^ 2;
	t126 = 0.1e1 / t89 ^ 2 * t97;
	t131 = t126 * t95;
	t122 = t104 * t99;
	t88 = atan2(t122, t100);
	t84 = sin(t88);
	t85 = cos(t88);
	t72 = t85 * t100 + t84 * t122;
	t67 = 0.1e1 / t72;
	t103 = cos(qJ(2));
	t118 = t104 * t103;
	t101 = sin(qJ(2));
	t121 = t102 * t101;
	t113 = t100 * t121 - t118;
	t77 = 0.1e1 / t113;
	t94 = 0.1e1 / t100;
	t68 = 0.1e1 / t72 ^ 2;
	t78 = 0.1e1 / t113 ^ 2;
	t119 = t104 * t101;
	t120 = t102 * t103;
	t81 = -t100 * t119 - t120;
	t82 = t100 * t120 + t119;
	t71 = t81 * qJD(1) - t82 * qJD(2);
	t128 = t71 * t77 * t78;
	t115 = t100 * t118;
	t70 = -qJD(1) * t115 - qJD(2) * t118 + (qJD(2) * t100 + qJD(1)) * t121;
	t129 = t70 * t78;
	t76 = t82 ^ 2;
	t75 = t76 * t78 + 0.1e1;
	t130 = (t76 * t128 - t82 * t129) / t75 ^ 2;
	t127 = t81 * t82;
	t125 = t93 * t94;
	t124 = t102 * t68;
	t123 = t104 * t68;
	t117 = qJD(1) * t104;
	t86 = 0.1e1 / t89;
	t116 = (t86 - 0.1e1) * t99;
	t114 = -0.2e1 * t94 * t131;
	t80 = t115 - t121;
	t63 = (-t104 * t85 * t86 * t125 + t84 * t116) * t102;
	t92 = t99 * t93;
	t73 = 0.1e1 / t75;
	t69 = t67 * t68;
	t66 = t97 * t93 * t68 + 0.1e1;
	t62 = qJD(1) * t63;
	t1 = [(-t86 * t94 * t99 + t92 * t114) * t117, 0, 0, 0, 0, 0; (0.2e1 * (-t104 * t67 + t63 * t124) / t66 ^ 2 * (-t62 * t69 * t97 + t117 * t124) * t93 + ((0.2e1 * t102 * t63 * t69 - t123) * t62 + (-t63 * t123 + (-t67 + (-t92 * t131 - t116) * t84 * t123 - (t93 ^ 2 * t98 * t114 + (-t126 + (0.2e1 * t97 - t98) * t86) * t125) * t68 * t85) * t102) * qJD(1)) / t66) * t99, 0, 0, 0, 0, 0; 0.2e1 * (t78 * t127 + t77 * t80) * t130 + (-(-t82 * qJD(1) + t81 * qJD(2)) * t77 - 0.2e1 * t127 * t128 + (-t80 * t71 - (t113 * qJD(1) - t80 * qJD(2)) * t82 + t81 * t70) * t78) * t73, -0.2e1 * t130 + 0.2e1 * (-t73 * t129 + (t73 * t128 - t78 * t130) * t82) * t82, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:13:35
	% EndTime: 2019-10-10 13:13:36
	% DurationCPUTime: 1.22s
	% Computational Cost: add. (2555->103), mult. (7918->233), div. (442->12), fcn. (10062->13), ass. (0->106)
	t218 = sin(pkin(6));
	t219 = cos(pkin(7));
	t220 = cos(pkin(6));
	t217 = sin(pkin(7));
	t225 = cos(qJ(2));
	t268 = t217 * t225;
	t206 = -t218 * t268 + t220 * t219;
	t203 = 0.1e1 / t206;
	t222 = sin(qJ(2));
	t226 = cos(qJ(1));
	t260 = t226 * t222;
	t223 = sin(qJ(1));
	t261 = t223 * t225;
	t238 = t220 * t260 + t261;
	t267 = t218 * t222;
	t204 = 0.1e1 / t206 ^ 2;
	t259 = t226 * t225;
	t262 = t223 * t222;
	t207 = -t220 * t259 + t262;
	t265 = t218 * t226;
	t242 = -t207 * t217 + t219 * t265;
	t272 = t242 * t204;
	t284 = t217 * (t203 * t238 + t267 * t272);
	t189 = atan2(t242, t206);
	t184 = sin(t189);
	t185 = cos(t189);
	t170 = t184 * t242 + t185 * t206;
	t167 = 0.1e1 / t170;
	t221 = sin(qJ(3));
	t224 = cos(qJ(3));
	t237 = t220 * t262 - t259;
	t239 = t220 * t261 + t260;
	t266 = t218 * t223;
	t252 = t217 * t266;
	t240 = -t219 * t239 + t252;
	t181 = t221 * t240 - t224 * t237;
	t175 = 0.1e1 / t181;
	t168 = 0.1e1 / t170 ^ 2;
	t176 = 0.1e1 / t181 ^ 2;
	t200 = -t217 * t239 - t219 * t266;
	t197 = t200 ^ 2;
	t163 = t197 * t168 + 0.1e1;
	t192 = qJD(1) * t207 + qJD(2) * t237;
	t258 = qJD(1) * t218;
	t249 = t226 * t258;
	t182 = t192 * t217 - t219 * t249;
	t276 = t182 * t168;
	t196 = t242 ^ 2;
	t188 = t196 * t204 + 0.1e1;
	t186 = 0.1e1 / t188;
	t194 = qJD(1) * t239 + qJD(2) * t238;
	t250 = t223 * t258;
	t183 = -t194 * t217 - t219 * t250;
	t257 = qJD(2) * t218;
	t269 = t217 * t222;
	t245 = t257 * t269;
	t244 = t204 * t245;
	t233 = t183 * t203 - t242 * t244;
	t159 = t233 * t186;
	t243 = -t184 * t206 + t185 * t242;
	t155 = t159 * t243 + t184 * t183 + t185 * t245;
	t282 = t155 * t167 * t168;
	t283 = (-t197 * t282 + t200 * t276) / t163 ^ 2;
	t193 = qJD(1) * t238 + qJD(2) * t239;
	t235 = t192 * t219 + t217 * t249;
	t165 = qJD(3) * t181 - t193 * t221 - t224 * t235;
	t263 = t219 * t224;
	t270 = t237 * t221;
	t180 = -t224 * t252 + t239 * t263 - t270;
	t174 = t180 ^ 2;
	t173 = t174 * t176 + 0.1e1;
	t277 = t176 * t180;
	t166 = -t193 * t224 + t235 * t221 + (t224 * t240 + t270) * qJD(3);
	t279 = t166 * t175 * t176;
	t281 = (t165 * t277 - t174 * t279) / t173 ^ 2;
	t205 = t203 * t204;
	t280 = (-t196 * t205 * t245 + t183 * t272) / t188 ^ 2;
	t278 = t168 * t200;
	t275 = t184 * t200;
	t274 = t185 * t200;
	t273 = t242 * t203;
	t271 = t238 * t221;
	t264 = t219 * t221;
	t256 = -0.2e1 * t283;
	t255 = -0.2e1 * t282;
	t254 = 0.2e1 * t281;
	t253 = 0.2e1 * t280;
	t251 = t217 * t265;
	t248 = -0.2e1 * t203 * t280;
	t247 = 0.2e1 * t180 * t279;
	t246 = t217 * t250;
	t241 = t207 * t219 + t251;
	t190 = -t221 * t239 - t237 * t263;
	t191 = -t224 * t239 + t237 * t264;
	t234 = t184 + (t185 * t273 - t184) * t186;
	t179 = t221 * t241 - t224 * t238;
	t216 = t217 ^ 2;
	t195 = qJD(1) * t237 + qJD(2) * t207;
	t178 = -t224 * t241 - t271;
	t171 = 0.1e1 / t173;
	t161 = 0.1e1 / t163;
	t160 = t186 * t284;
	t158 = t234 * t200;
	t156 = (-t184 * t238 + t185 * t267) * t217 - t243 * t160;
	t154 = t253 * t284 + (t195 * t203 * t217 + (-t183 * t204 * t269 + (t204 * t238 * t216 * t222 + (0.2e1 * t205 * t216 * t218 * t222 ^ 2 - t204 * t268) * t242) * qJD(2)) * t218) * t186;
	t1 = [t200 * t248 + (t182 * t203 - t200 * t244) * t186, t154, 0, 0, 0, 0; t242 * t167 * t256 + (t183 * t167 + (-t155 * t242 + t158 * t182) * t168) * t161 + ((t158 * t255 + t234 * t276) * t161 + (t158 * t256 + ((-t159 * t186 * t273 + t253) * t275 + (t242 * t248 + t159 + (-t159 + t233) * t186) * t274) * t161) * t168) * t200, 0.2e1 * (t167 * t217 * t237 - t156 * t278) * t283 + ((t243 * t154 - (-t159 * t170 + t183 * t185) * t160) * t278 + (t200 * t255 + t276) * t156 + (-t193 * t167 + (t237 * t155 + (-t159 * t238 + t225 * t257) * t274 + (t195 + (qJD(2) * t160 - t159) * t267) * t275) * t168) * t217) * t161, 0, 0, 0, 0; (-t175 * t178 + t179 * t277) * t254 + ((-t194 * t263 + t195 * t221 + t224 * t246) * t175 + t179 * t247 + (-t178 * t166 - (t194 * t264 + t195 * t224 - t221 * t246) * t180 - t179 * t165) * t176 + (t179 * t175 - (t207 * t263 + t224 * t251 + t271) * t277) * qJD(3)) * t171, (-t175 * t190 + t191 * t277) * t254 + ((qJD(3) * t191 + t192 * t221 - t193 * t263) * t175 + t191 * t247 + (-t190 * t166 - (-qJD(3) * t190 + t192 * t224 + t193 * t264) * t180 - t191 * t165) * t176) * t171, -0.2e1 * t281 + 0.2e1 * (t165 * t176 * t171 + (-t171 * t279 - t176 * t281) * t180) * t180, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:13:35
	% EndTime: 2019-10-10 13:13:38
	% DurationCPUTime: 2.94s
	% Computational Cost: add. (8022->174), mult. (25165->321), div. (705->12), fcn. (31370->15), ass. (0->161)
	t337 = cos(pkin(7));
	t339 = sin(qJ(3));
	t436 = cos(pkin(6));
	t437 = sin(qJ(2));
	t388 = t436 * t437;
	t438 = sin(qJ(1));
	t374 = t438 * t388;
	t341 = cos(qJ(2));
	t342 = cos(qJ(1));
	t417 = t342 * t341;
	t357 = t374 - t417;
	t398 = t341 * t436;
	t358 = t342 * t437 + t438 * t398;
	t336 = sin(pkin(6));
	t435 = sin(pkin(7));
	t399 = t336 * t435;
	t382 = t438 * t399;
	t439 = cos(qJ(3));
	t300 = -t357 * t439 + (-t358 * t337 + t382) * t339;
	t420 = t336 * t337;
	t392 = t438 * t420;
	t319 = t358 * t435 + t392;
	t338 = sin(qJ(4));
	t340 = cos(qJ(4));
	t280 = t300 * t338 - t319 * t340;
	t448 = 0.2e1 * t280;
	t324 = t438 * t341 + t342 * t388;
	t390 = t342 * t399;
	t375 = t439 * t390;
	t359 = -t324 * t339 - t375;
	t335 = t438 * t437;
	t380 = -t342 * t398 + t335;
	t363 = t380 * t439;
	t361 = t337 * t363;
	t294 = t361 - t359;
	t292 = t294 ^ 2;
	t401 = t437 * t339;
	t402 = t439 * t341;
	t366 = t337 * t402 - t401;
	t384 = t435 * t436;
	t373 = t439 * t384;
	t316 = -t366 * t336 - t373;
	t314 = 0.1e1 / t316 ^ 2;
	t286 = t292 * t314 + 0.1e1;
	t284 = 0.1e1 / t286;
	t371 = t380 * t339;
	t404 = t324 * t439;
	t353 = -t337 * t371 + t404;
	t310 = t358 * qJD(1) + t324 * qJD(2);
	t311 = -qJD(1) * t374 - qJD(2) * t335 + (qJD(2) * t436 + qJD(1)) * t417;
	t331 = t339 * t390;
	t369 = t439 * t382;
	t403 = t337 * t439;
	t362 = -qJD(1) * t369 - qJD(3) * t331 + t310 * t403 + t311 * t339;
	t269 = t353 * qJD(3) + t362;
	t391 = t439 * t437;
	t418 = t339 * t341;
	t365 = t337 * t391 + t418;
	t367 = t337 * t418 + t391;
	t381 = t339 * t384;
	t290 = qJD(3) * t381 + (t365 * qJD(2) + t367 * qJD(3)) * t336;
	t313 = 0.1e1 / t316;
	t422 = t294 * t314;
	t379 = -t269 * t313 + t290 * t422;
	t251 = t379 * t284;
	t287 = atan2(-t294, t316);
	t282 = sin(t287);
	t283 = cos(t287);
	t383 = -t282 * t316 - t283 * t294;
	t246 = t383 * t251 - t282 * t269 + t283 * t290;
	t263 = -t282 * t294 + t283 * t316;
	t261 = 0.1e1 / t263 ^ 2;
	t447 = t246 * t261;
	t446 = t290 * t314;
	t356 = t358 * t439;
	t444 = -t337 * t356 + t339 * t357 + t369;
	t293 = t444 ^ 2;
	t257 = t293 * t261 + 0.1e1;
	t255 = 0.1e1 / t257;
	t260 = 0.1e1 / t263;
	t309 = t324 * qJD(1) + t358 * qJD(2);
	t351 = t380 * qJD(1) + t357 * qJD(2);
	t349 = t351 * t439;
	t267 = -qJD(1) * t375 + t300 * qJD(3) - t309 * t339 - t337 * t349;
	t426 = t267 * t261;
	t433 = t260 * t447;
	t434 = (-t293 * t433 - t426 * t444) / t257 ^ 2;
	t445 = -t255 * t447 - 0.2e1 * t260 * t434;
	t440 = -0.2e1 * t444;
	t393 = t433 * t440;
	t415 = 0.2e1 * t434;
	t428 = t261 * t444;
	t443 = -t415 * t428 + (t393 - t426) * t255;
	t442 = -(qJD(1) * t382 - t324 * qJD(3) - t310 * t337) * t339 + qJD(3) * t375 - t311 * t439;
	t281 = t300 * t340 + t319 * t338;
	t275 = 0.1e1 / t281;
	t276 = 0.1e1 / t281 ^ 2;
	t441 = -0.2e1 * t294;
	t350 = t351 * t339;
	t268 = qJD(1) * t331 + t444 * qJD(3) - t309 * t439 + t337 * t350;
	t405 = t342 * t420;
	t301 = qJD(1) * t405 - t351 * t435;
	t258 = t281 * qJD(4) + t268 * t338 - t301 * t340;
	t274 = t280 ^ 2;
	t266 = t274 * t276 + 0.1e1;
	t425 = t276 * t280;
	t416 = qJD(4) * t280;
	t259 = t268 * t340 + t301 * t338 - t416;
	t429 = t259 * t275 * t276;
	t432 = (t258 * t425 - t274 * t429) / t266 ^ 2;
	t424 = t313 * t446;
	t431 = (t269 * t422 - t292 * t424) / t286 ^ 2;
	t430 = t255 * t260;
	t264 = 0.1e1 / t266;
	t427 = t264 * t276;
	t423 = t294 * t313;
	t419 = t337 * t339;
	t414 = -0.2e1 * t432;
	t413 = -0.2e1 * t431;
	t412 = t276 * t432;
	t411 = t313 * t431;
	t410 = t255 * t428;
	t409 = t258 * t427;
	t406 = t280 * t429;
	t400 = t357 * t435;
	t397 = t435 * t309;
	t395 = 0.2e1 * t406;
	t394 = t424 * t441;
	t372 = t337 * t380;
	t354 = t339 * t372 - t404;
	t298 = t331 + t354;
	t318 = -t380 * t435 + t405;
	t279 = t298 * t340 + t318 * t338;
	t278 = t298 * t338 - t318 * t340;
	t378 = -t338 * t275 + t340 * t425;
	t296 = -t331 + t353;
	t317 = t367 * t336 + t381;
	t377 = -t296 * t313 + t317 * t422;
	t306 = t324 * t403 - t371;
	t323 = t365 * t336;
	t376 = -t306 * t313 + t323 * t422;
	t308 = t357 * t419 - t356;
	t289 = t308 * t340 - t338 * t400;
	t370 = -t308 * t338 - t340 * t400;
	t368 = -t282 + (t283 * t423 + t282) * t284;
	t364 = -t337 * t401 + t402;
	t360 = t439 * t372;
	t307 = -t358 * t339 - t357 * t403;
	t303 = (t366 * qJD(2) + t364 * qJD(3)) * t336;
	t302 = -qJD(1) * t392 - t310 * t435;
	t291 = qJD(3) * t373 + (t364 * qJD(2) + t366 * qJD(3)) * t336;
	t273 = t311 * t403 - t310 * t339 + (-t324 * t419 - t363) * qJD(3);
	t272 = -t307 * qJD(3) + t309 * t419 + t349;
	t271 = qJD(3) * t360 + t442;
	t270 = -qJD(3) * t361 - t442;
	t254 = t376 * t284;
	t253 = t377 * t284;
	t247 = t383 * t253 - t282 * t296 + t283 * t317;
	t245 = t376 * t413 + (t323 * t394 - t273 * t313 + (t269 * t323 + t290 * t306 + t294 * t303) * t314) * t284;
	t244 = t377 * t413 + (t317 * t394 - t270 * t313 + (t269 * t317 + t290 * t296 + t291 * t294) * t314) * t284;
	t1 = [t411 * t440 + (-t267 * t313 - t444 * t446) * t284, t245, t244, 0, 0, 0; (t354 * qJD(3) - t362) * t430 + (t368 * t267 - ((-t251 * t284 * t423 + t413) * t282 + (t411 * t441 - t251 + (t251 - t379) * t284) * t283) * t444) * t410 + t445 * (-t360 + t359) - t443 * t368 * t444, (t308 * qJD(3) - t309 * t403 + t350) * t430 + ((-t245 * t294 - t254 * t269 + t303 + (-t254 * t316 - t306) * t251) * t283 + (-t245 * t316 - t254 * t290 - t273 + (t254 * t294 - t323) * t251) * t282) * t410 + t445 * t307 + t443 * (t383 * t254 - t282 * t306 + t283 * t323), (-t247 * t428 - t260 * t300) * t415 + (t247 * t393 + t268 * t260 + (-t300 * t246 - t247 * t267 - (-(-t244 * t294 - t253 * t269 + t291 + (-t253 * t316 - t296) * t251) * t283 - (-t244 * t316 - t253 * t290 - t270 + (t253 * t294 - t317) * t251) * t282) * t444) * t261) * t255, 0, 0, 0; 0.2e1 * (-t275 * t278 + t279 * t425) * t432 + ((t279 * qJD(4) + t271 * t338 - t302 * t340) * t275 + t279 * t395 + (-t278 * t259 - (-t278 * qJD(4) + t271 * t340 + t302 * t338) * t280 - t279 * t258) * t276) * t264, (t412 * t448 - t409) * t289 - (-t259 * t427 + t275 * t414) * t370 + ((t289 * qJD(4) + t272 * t338 + t340 * t397) * t275 - (t370 * qJD(4) + t272 * t340 - t338 * t397) * t425 + t289 * t395) * t264, -t378 * t444 * t414 + (t378 * t267 - ((-qJD(4) * t275 - 0.2e1 * t406) * t340 + (t258 * t340 + (t259 - t416) * t338) * t276) * t444) * t264, t414 + (t409 + (-t264 * t429 - t412) * t280) * t448, 0, 0;];
	JaD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:13:36
	% EndTime: 2019-10-10 13:13:45
	% DurationCPUTime: 8.54s
	% Computational Cost: add. (19869->241), mult. (59163->460), div. (983->12), fcn. (74815->17), ass. (0->186)
	t565 = cos(pkin(6));
	t566 = sin(qJ(2));
	t515 = t565 * t566;
	t462 = cos(qJ(2));
	t567 = sin(qJ(1));
	t529 = t567 * t462;
	t568 = cos(qJ(1));
	t445 = t515 * t568 + t529;
	t481 = t529 * t565 + t566 * t568;
	t435 = qJD(1) * t481 + qJD(2) * t445;
	t454 = t567 * t566;
	t496 = t567 * t515;
	t516 = t565 * t568;
	t436 = -qJD(1) * t496 - qJD(2) * t454 + (qJD(1) * t568 + qJD(2) * t516) * t462;
	t458 = sin(qJ(3));
	t461 = cos(qJ(3));
	t455 = sin(pkin(6));
	t563 = sin(pkin(7));
	t527 = t455 * t563;
	t504 = t567 * t527;
	t494 = qJD(1) * t504;
	t564 = cos(pkin(7));
	t507 = t568 * t527;
	t492 = -t462 * t516 + t454;
	t575 = t492 * t564;
	t473 = t575 + t507;
	t571 = t445 * t458 + t461 * t473;
	t376 = qJD(3) * t571 - (-t435 * t564 + t494) * t458 - t436 * t461;
	t544 = t445 * t461;
	t425 = t458 * t473 - t544;
	t457 = sin(qJ(4));
	t460 = cos(qJ(4));
	t528 = t455 * t564;
	t508 = t568 * t528;
	t474 = t492 * t563 - t508;
	t405 = t425 * t457 + t474 * t460;
	t505 = t567 * t528;
	t479 = qJD(1) * t505 + t435 * t563;
	t367 = qJD(4) * t405 - t376 * t460 + t479 * t457;
	t406 = t425 * t460 - t474 * t457;
	t584 = qJD(4) * t406 + t376 * t457 + t479 * t460;
	t581 = -t481 * t564 + t504;
	t524 = t461 * t564;
	t541 = qJD(3) * t458;
	t578 = (t458 * t575 - t544) * qJD(3) - t435 * t524 - t436 * t458 + t461 * t494 + t507 * t541;
	t514 = t564 * t566;
	t487 = -t458 * t514 + t461 * t462;
	t523 = t462 * t564;
	t488 = -t458 * t566 + t461 * t523;
	t511 = t565 * t563;
	t503 = qJD(3) * t511;
	t413 = t461 * t503 + (qJD(2) * t487 + qJD(3) * t488) * t455;
	t489 = t458 * t523 + t461 * t566;
	t440 = t455 * t489 + t458 * t511;
	t444 = -t462 * t527 + t564 * t565;
	t419 = t440 * t460 + t444 * t457;
	t513 = t563 * t566;
	t509 = t455 * t513;
	t493 = qJD(2) * t509;
	t391 = qJD(4) * t419 + t413 * t457 - t460 * t493;
	t418 = t440 * t457 - t444 * t460;
	t416 = 0.1e1 / t418 ^ 2;
	t577 = t391 * t416;
	t415 = 0.1e1 / t418;
	t439 = t455 * t488 + t461 * t511;
	t549 = t405 * t416;
	t498 = t415 * t571 - t439 * t549;
	t576 = t457 * t498;
	t480 = -t462 * t568 + t496;
	t471 = qJD(1) * t492 + qJD(2) * t480;
	t574 = qJD(1) * t507 + t471 * t564;
	t573 = t581 * t461;
	t390 = atan2(t405, t418);
	t385 = sin(t390);
	t386 = cos(t390);
	t360 = t385 * t405 + t386 * t418;
	t357 = 0.1e1 / t360;
	t427 = t458 * t581 - t461 * t480;
	t472 = t481 * t563 + t505;
	t408 = t427 * t460 + t457 * t472;
	t426 = -t458 * t480 - t573;
	t456 = sin(qJ(5));
	t459 = cos(qJ(5));
	t384 = t408 * t459 + t426 * t456;
	t378 = 0.1e1 / t384;
	t358 = 0.1e1 / t360 ^ 2;
	t379 = 0.1e1 / t384 ^ 2;
	t570 = 0.2e1 * t405;
	t407 = t427 * t457 - t460 * t472;
	t569 = 0.2e1 * t407;
	t401 = t407 ^ 2;
	t356 = t358 * t401 + 0.1e1;
	t434 = qJD(1) * t445 + qJD(2) * t481;
	t372 = qJD(3) * t573 - t434 * t461 + t458 * t574 + t480 * t541;
	t469 = qJD(1) * t508 - t471 * t563;
	t364 = qJD(4) * t408 + t372 * t457 - t460 * t469;
	t555 = t364 * t358;
	t400 = t405 ^ 2;
	t389 = t400 * t416 + 0.1e1;
	t387 = 0.1e1 / t389;
	t502 = -t391 * t549 + t415 * t584;
	t347 = t502 * t387;
	t510 = -t385 * t418 + t386 * t405;
	t341 = t347 * t510 + t385 * t584 + t386 * t391;
	t359 = t357 * t358;
	t561 = t341 * t359;
	t562 = (-t401 * t561 + t407 * t555) / t356 ^ 2;
	t365 = -qJD(4) * t407 + t372 * t460 + t457 * t469;
	t371 = t427 * qJD(3) - t434 * t458 - t461 * t574;
	t350 = qJD(5) * t384 + t365 * t456 - t371 * t459;
	t383 = t408 * t456 - t426 * t459;
	t377 = t383 ^ 2;
	t363 = t377 * t379 + 0.1e1;
	t554 = t379 * t383;
	t539 = qJD(5) * t383;
	t351 = t365 * t459 + t371 * t456 - t539;
	t557 = t351 * t378 * t379;
	t559 = (t350 * t554 - t377 * t557) / t363 ^ 2;
	t551 = t415 * t577;
	t558 = (-t400 * t551 + t549 * t584) / t389 ^ 2;
	t556 = t358 * t407;
	t553 = t385 * t407;
	t552 = t386 * t407;
	t550 = t405 * t415;
	t548 = t426 * t457;
	t547 = t426 * t460;
	t543 = t456 * t378;
	t542 = t459 * t383;
	t540 = qJD(4) * t460;
	t538 = 0.2e1 * t562;
	t537 = -0.2e1 * t559;
	t536 = 0.2e1 * t559;
	t535 = -0.2e1 * t558;
	t534 = t359 * t569;
	t533 = t415 * t558;
	t532 = t358 * t553;
	t531 = t358 * t552;
	t530 = t383 * t557;
	t526 = t457 * t563;
	t525 = t458 * t564;
	t522 = t563 * t460;
	t521 = -0.2e1 * t357 * t562;
	t520 = t358 * t538;
	t519 = t341 * t534;
	t518 = 0.2e1 * t530;
	t517 = t551 * t570;
	t512 = qJD(5) * t547 + t372;
	t382 = t406 * t459 - t456 * t571;
	t381 = t406 * t456 + t459 * t571;
	t432 = -t461 * t481 + t480 * t525;
	t411 = t432 * t460 - t480 * t526;
	t431 = -t458 * t481 - t480 * t524;
	t398 = t411 * t459 + t431 * t456;
	t397 = t411 * t456 - t431 * t459;
	t501 = t379 * t542 - t543;
	t500 = t406 * t415 - t419 * t549;
	t430 = -t445 * t525 - t461 * t492;
	t409 = t430 * t457 - t445 * t522;
	t443 = t487 * t455;
	t433 = t443 * t457 - t460 * t509;
	t499 = -t409 * t415 - t433 * t549;
	t491 = -t432 * t457 - t480 * t522;
	t490 = -t385 + (-t386 * t550 + t385) * t387;
	t486 = -t458 * t462 - t461 * t514;
	t485 = qJD(4) * t548 + qJD(5) * t427 - t371 * t460;
	t412 = -t458 * t503 + (qJD(2) * t486 - qJD(3) * t489) * t455;
	t399 = t443 * t540 + ((qJD(3) * t486 + qJD(4) * t513) * t457 + (-t457 * t489 - t462 * t522) * qJD(2)) * t455;
	t396 = t427 * t456 - t459 * t547;
	t395 = -t427 * t459 - t456 * t547;
	t394 = -qJD(3) * t431 + t434 * t525 + t461 * t471;
	t393 = qJD(3) * t432 - t434 * t524 + t458 * t471;
	t392 = -qJD(4) * t418 + t413 * t460 + t457 * t493;
	t370 = (-t436 * t525 - t435 * t461 + (-t445 * t524 + t458 * t492) * qJD(3)) * t457 + t430 * t540 - t436 * t522 + t445 * qJD(4) * t526;
	t369 = qJD(4) * t491 + t394 * t460 - t434 * t526;
	t361 = 0.1e1 / t363;
	t354 = 0.1e1 / t356;
	t353 = t387 * t576;
	t352 = t499 * t387;
	t349 = t500 * t387;
	t346 = t490 * t407;
	t344 = (t385 * t571 + t386 * t439) * t457 + t510 * t353;
	t342 = t349 * t510 + t385 * t406 + t386 * t419;
	t340 = t499 * t535 + (t433 * t517 - t370 * t415 + (t391 * t409 - t399 * t405 - t433 * t584) * t416) * t387;
	t338 = t500 * t535 + (t419 * t517 - t367 * t415 + (-t391 * t406 - t392 * t405 - t419 * t584) * t416) * t387;
	t337 = t535 * t576 + (t498 * t540 + (t439 * t517 - t578 * t415 + (-t391 * t571 - t405 * t412 - t439 * t584) * t416) * t457) * t387;
	t1 = [t533 * t569 + (-t364 * t415 + t407 * t577) * t387, t340, t337, t338, 0, 0; t405 * t521 + (t584 * t357 + (-t341 * t405 - t346 * t364) * t358) * t354 + (t346 * t520 + (0.2e1 * t346 * t561 - (t347 * t387 * t550 + t535) * t532 - (t533 * t570 - t347 + (t347 - t502) * t387) * t531 - t490 * t555) * t354) * t407, -t491 * t521 + ((qJD(4) * t411 + t394 * t457 + t434 * t522) * t357 + t491 * t358 * t341 - ((t340 * t405 + t352 * t584 + t399 + (-t352 * t418 - t409) * t347) * t386 + (-t340 * t418 - t352 * t391 - t370 + (-t352 * t405 - t433) * t347) * t385) * t556) * t354 + (t407 * t520 + (-t555 + t519) * t354) * (t352 * t510 - t385 * t409 + t386 * t433), (t344 * t556 + t357 * t548) * t538 + (-t344 * t555 + (-t371 * t457 - t426 * t540) * t357 + (t344 * t534 + t358 * t548) * t341 - (t439 * t540 + t337 * t405 + t353 * t584 + t412 * t457 + (-t353 * t418 + t457 * t571) * t347) * t531 - (t571 * t540 - t337 * t418 - t353 * t391 - t578 * t457 + (-t353 * t405 - t439 * t457) * t347) * t532) * t354, (t342 * t556 - t357 * t408) * t538 + (t342 * t519 + t365 * t357 + (-t408 * t341 - t342 * t364 - (t338 * t405 + t349 * t584 + t392 + (-t349 * t418 + t406) * t347) * t552 - (-t338 * t418 - t349 * t391 - t367 + (-t349 * t405 - t419) * t347) * t553) * t358) * t354, 0, 0; (-t378 * t381 + t382 * t554) * t536 + ((qJD(5) * t382 - t367 * t456 - t459 * t578) * t378 + t382 * t518 + (-t381 * t351 - (-qJD(5) * t381 - t367 * t459 + t456 * t578) * t383 - t382 * t350) * t379) * t361, (-t378 * t397 + t398 * t554) * t536 + ((qJD(5) * t398 + t369 * t456 - t393 * t459) * t378 + t398 * t518 + (-t397 * t351 - (-qJD(5) * t397 + t369 * t459 + t393 * t456) * t383 - t398 * t350) * t379) * t361, (-t378 * t395 + t396 * t554) * t536 + (t396 * t518 - t512 * t378 * t459 + t485 * t543 + (-t383 * t456 * t512 - t396 * t350 - t395 * t351 - t485 * t542) * t379) * t361, t501 * t407 * t537 + (t501 * t364 + ((-qJD(5) * t378 - 0.2e1 * t530) * t459 + (t350 * t459 + (t351 - t539) * t456) * t379) * t407) * t361, t537 + 0.2e1 * (t350 * t379 * t361 + (-t361 * t557 - t379 * t559) * t383) * t383, 0;];
	JaD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:13:36
	% EndTime: 2019-10-10 13:13:44
	% DurationCPUTime: 8.48s
	% Computational Cost: add. (19869->241), mult. (59163->461), div. (983->12), fcn. (74815->17), ass. (0->187)
	t567 = cos(pkin(6));
	t568 = sin(qJ(2));
	t516 = t567 * t568;
	t463 = cos(qJ(2));
	t569 = sin(qJ(1));
	t531 = t569 * t463;
	t570 = cos(qJ(1));
	t446 = t570 * t516 + t531;
	t482 = t567 * t531 + t570 * t568;
	t436 = t482 * qJD(1) + t446 * qJD(2);
	t455 = t569 * t568;
	t497 = t569 * t516;
	t517 = t567 * t570;
	t437 = -qJD(1) * t497 - qJD(2) * t455 + (t570 * qJD(1) + qJD(2) * t517) * t463;
	t459 = sin(qJ(3));
	t462 = cos(qJ(3));
	t456 = sin(pkin(6));
	t565 = sin(pkin(7));
	t529 = t456 * t565;
	t505 = t569 * t529;
	t495 = qJD(1) * t505;
	t566 = cos(pkin(7));
	t508 = t570 * t529;
	t493 = -t463 * t517 + t455;
	t577 = t493 * t566;
	t474 = t577 + t508;
	t573 = t446 * t459 + t474 * t462;
	t377 = t573 * qJD(3) - (-t436 * t566 + t495) * t459 - t437 * t462;
	t544 = t446 * t462;
	t426 = t474 * t459 - t544;
	t458 = sin(qJ(4));
	t461 = cos(qJ(4));
	t530 = t456 * t566;
	t509 = t570 * t530;
	t475 = t493 * t565 - t509;
	t406 = t426 * t458 + t475 * t461;
	t506 = t569 * t530;
	t480 = qJD(1) * t506 + t436 * t565;
	t368 = t406 * qJD(4) - t377 * t461 + t480 * t458;
	t407 = t426 * t461 - t475 * t458;
	t586 = t407 * qJD(4) + t377 * t458 + t480 * t461;
	t583 = -t482 * t566 + t505;
	t525 = t462 * t566;
	t543 = qJD(3) * t459;
	t580 = (t459 * t577 - t544) * qJD(3) - t436 * t525 - t437 * t459 + t462 * t495 + t508 * t543;
	t515 = t566 * t568;
	t488 = -t459 * t515 + t462 * t463;
	t524 = t463 * t566;
	t489 = -t568 * t459 + t462 * t524;
	t512 = t567 * t565;
	t504 = qJD(3) * t512;
	t414 = t462 * t504 + (t488 * qJD(2) + t489 * qJD(3)) * t456;
	t490 = t459 * t524 + t568 * t462;
	t441 = t490 * t456 + t459 * t512;
	t523 = t463 * t565;
	t445 = -t456 * t523 + t567 * t566;
	t420 = t441 * t461 + t445 * t458;
	t514 = t565 * t568;
	t510 = t456 * t514;
	t494 = qJD(2) * t510;
	t392 = t420 * qJD(4) + t414 * t458 - t461 * t494;
	t419 = t441 * t458 - t445 * t461;
	t417 = 0.1e1 / t419 ^ 2;
	t579 = t392 * t417;
	t416 = 0.1e1 / t419;
	t440 = t489 * t456 + t462 * t512;
	t549 = t406 * t417;
	t499 = t416 * t573 - t440 * t549;
	t578 = t458 * t499;
	t481 = -t570 * t463 + t497;
	t472 = t493 * qJD(1) + t481 * qJD(2);
	t576 = qJD(1) * t508 + t472 * t566;
	t575 = t583 * t462;
	t391 = atan2(t406, t419);
	t386 = sin(t391);
	t387 = cos(t391);
	t361 = t386 * t406 + t387 * t419;
	t358 = 0.1e1 / t361;
	t428 = t583 * t459 - t481 * t462;
	t473 = t482 * t565 + t506;
	t409 = t428 * t461 + t473 * t458;
	t427 = -t459 * t481 - t575;
	t457 = sin(qJ(5));
	t460 = cos(qJ(5));
	t385 = t409 * t460 + t427 * t457;
	t379 = 0.1e1 / t385;
	t359 = 0.1e1 / t361 ^ 2;
	t380 = 0.1e1 / t385 ^ 2;
	t572 = 0.2e1 * t406;
	t408 = t428 * t458 - t473 * t461;
	t571 = 0.2e1 * t408;
	t402 = t408 ^ 2;
	t357 = t359 * t402 + 0.1e1;
	t435 = t446 * qJD(1) + t482 * qJD(2);
	t373 = t575 * qJD(3) - t435 * t462 + t576 * t459 + t481 * t543;
	t470 = qJD(1) * t509 - t472 * t565;
	t365 = t409 * qJD(4) + t373 * t458 - t470 * t461;
	t558 = t359 * t408;
	t401 = t406 ^ 2;
	t390 = t401 * t417 + 0.1e1;
	t388 = 0.1e1 / t390;
	t503 = -t392 * t549 + t416 * t586;
	t348 = t503 * t388;
	t511 = -t386 * t419 + t387 * t406;
	t342 = t511 * t348 + t386 * t586 + t387 * t392;
	t360 = t358 * t359;
	t563 = t342 * t360;
	t564 = (t365 * t558 - t402 * t563) / t357 ^ 2;
	t551 = t416 * t579;
	t561 = (-t401 * t551 + t549 * t586) / t390 ^ 2;
	t366 = -t408 * qJD(4) + t373 * t461 + t470 * t458;
	t372 = t428 * qJD(3) - t435 * t459 - t576 * t462;
	t384 = t409 * t457 - t427 * t460;
	t541 = qJD(5) * t384;
	t352 = t366 * t460 + t372 * t457 - t541;
	t560 = t352 * t379 * t380;
	t559 = t359 * t365;
	t351 = t385 * qJD(5) + t366 * t457 - t372 * t460;
	t378 = t384 ^ 2;
	t364 = t378 * t380 + 0.1e1;
	t555 = t380 * t384;
	t557 = 0.1e1 / t364 ^ 2 * (t351 * t555 - t378 * t560);
	t556 = t379 * t457;
	t554 = t384 * t460;
	t553 = t386 * t408;
	t552 = t387 * t408;
	t550 = t406 * t416;
	t548 = t427 * t458;
	t547 = t427 * t461;
	t542 = qJD(4) * t461;
	t540 = 0.2e1 * t564;
	t539 = -0.2e1 * t561;
	t538 = t360 * t571;
	t537 = -0.2e1 * t557;
	t536 = 0.2e1 * t557;
	t535 = t416 * t561;
	t534 = t384 * t560;
	t533 = t359 * t553;
	t532 = t359 * t552;
	t528 = t458 * t565;
	t527 = t459 * t566;
	t526 = t461 * t565;
	t522 = -0.2e1 * t358 * t564;
	t521 = t359 * t540;
	t520 = t342 * t538;
	t519 = 0.2e1 * t534;
	t518 = t551 * t572;
	t513 = qJD(5) * t547 + t373;
	t383 = t407 * t460 - t457 * t573;
	t382 = t407 * t457 + t460 * t573;
	t433 = -t482 * t462 + t481 * t527;
	t412 = t433 * t461 - t481 * t528;
	t432 = -t482 * t459 - t481 * t525;
	t399 = t412 * t460 + t432 * t457;
	t398 = t412 * t457 - t432 * t460;
	t502 = t380 * t554 - t556;
	t501 = t407 * t416 - t420 * t549;
	t431 = -t446 * t527 - t493 * t462;
	t410 = t431 * t458 - t446 * t526;
	t444 = t488 * t456;
	t434 = t444 * t458 - t461 * t510;
	t500 = -t410 * t416 - t434 * t549;
	t492 = -t433 * t458 - t481 * t526;
	t491 = -t386 + (-t387 * t550 + t386) * t388;
	t487 = -t459 * t463 - t462 * t515;
	t486 = qJD(4) * t548 + qJD(5) * t428 - t372 * t461;
	t413 = -t459 * t504 + (t487 * qJD(2) - t490 * qJD(3)) * t456;
	t400 = t444 * t542 + ((t487 * qJD(3) + qJD(4) * t514) * t458 + (-t490 * t458 - t461 * t523) * qJD(2)) * t456;
	t397 = t428 * t457 - t460 * t547;
	t396 = -t428 * t460 - t457 * t547;
	t395 = -t432 * qJD(3) + t435 * t527 + t472 * t462;
	t394 = t433 * qJD(3) - t435 * t525 + t472 * t459;
	t393 = -t419 * qJD(4) + t414 * t461 + t458 * t494;
	t371 = (-t437 * t527 - t436 * t462 + (-t446 * t525 + t493 * t459) * qJD(3)) * t458 + t431 * t542 - t437 * t526 + t446 * qJD(4) * t528;
	t370 = t492 * qJD(4) + t395 * t461 - t435 * t528;
	t362 = 0.1e1 / t364;
	t355 = 0.1e1 / t357;
	t354 = t388 * t578;
	t353 = t500 * t388;
	t350 = t501 * t388;
	t347 = t491 * t408;
	t345 = (t386 * t573 + t387 * t440) * t458 + t511 * t354;
	t343 = t511 * t350 + t386 * t407 + t387 * t420;
	t341 = t500 * t539 + (t434 * t518 - t371 * t416 + (t392 * t410 - t400 * t406 - t434 * t586) * t417) * t388;
	t339 = t501 * t539 + (t420 * t518 - t368 * t416 + (-t392 * t407 - t393 * t406 - t420 * t586) * t417) * t388;
	t338 = t539 * t578 + (t499 * t542 + (t440 * t518 - t580 * t416 + (-t392 * t573 - t406 * t413 - t440 * t586) * t417) * t458) * t388;
	t1 = [t535 * t571 + (-t365 * t416 + t408 * t579) * t388, t341, t338, t339, 0, 0; t406 * t522 + (t586 * t358 + (-t342 * t406 - t347 * t365) * t359) * t355 + (t347 * t521 + (0.2e1 * t347 * t563 - (t348 * t388 * t550 + t539) * t533 - (t535 * t572 - t348 + (t348 - t503) * t388) * t532 - t491 * t559) * t355) * t408, -t492 * t522 + ((t412 * qJD(4) + t395 * t458 + t435 * t526) * t358 + t492 * t359 * t342 - ((t341 * t406 + t353 * t586 + t400 + (-t353 * t419 - t410) * t348) * t387 + (-t341 * t419 - t353 * t392 - t371 + (-t353 * t406 - t434) * t348) * t386) * t558) * t355 + (t408 * t521 + (-t559 + t520) * t355) * (t511 * t353 - t386 * t410 + t387 * t434), (t345 * t558 + t358 * t548) * t540 + (-t345 * t559 + (-t372 * t458 - t427 * t542) * t358 + (t345 * t538 + t359 * t548) * t342 - (t440 * t542 + t338 * t406 + t354 * t586 + t413 * t458 + (-t354 * t419 + t458 * t573) * t348) * t532 - (t573 * t542 - t338 * t419 - t354 * t392 - t580 * t458 + (-t354 * t406 - t440 * t458) * t348) * t533) * t355, (t343 * t558 - t358 * t409) * t540 + (t343 * t520 + t366 * t358 + (-t409 * t342 - t343 * t365 - (t339 * t406 + t350 * t586 + t393 + (-t350 * t419 + t407) * t348) * t552 - (-t339 * t419 - t350 * t392 - t368 + (-t350 * t406 - t420) * t348) * t553) * t359) * t355, 0, 0; (-t379 * t382 + t383 * t555) * t536 + ((t383 * qJD(5) - t368 * t457 - t460 * t580) * t379 + t383 * t519 + (-t382 * t352 - (-t382 * qJD(5) - t368 * t460 + t457 * t580) * t384 - t383 * t351) * t380) * t362, (-t379 * t398 + t399 * t555) * t536 + ((t399 * qJD(5) + t370 * t457 - t394 * t460) * t379 + t399 * t519 + (-t398 * t352 - (-t398 * qJD(5) + t370 * t460 + t394 * t457) * t384 - t399 * t351) * t380) * t362, (-t379 * t396 + t397 * t555) * t536 + (t397 * t519 - t513 * t379 * t460 + t486 * t556 + (-t513 * t384 * t457 - t397 * t351 - t396 * t352 - t486 * t554) * t380) * t362, t502 * t408 * t537 + (t502 * t365 + ((-qJD(5) * t379 - 0.2e1 * t534) * t460 + (t351 * t460 + (t352 - t541) * t457) * t380) * t408) * t362, t537 + 0.2e1 * (t351 * t380 * t362 + (-t362 * t560 - t380 * t557) * t384) * t384, 0;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end