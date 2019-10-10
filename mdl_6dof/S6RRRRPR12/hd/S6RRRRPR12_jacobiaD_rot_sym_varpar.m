% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRPR12
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
%   Wie in S6RRRRPR12_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:50
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6RRRRPR12_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR12_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR12_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRPR12_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RRRRPR12_jacobiaD_rot_sym_varpar: pkin has to be [13x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:49:58
	% EndTime: 2019-10-10 12:49:58
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:49:58
	% EndTime: 2019-10-10 12:49:58
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:49:58
	% EndTime: 2019-10-10 12:49:59
	% DurationCPUTime: 0.41s
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
	% StartTime: 2019-10-10 12:49:59
	% EndTime: 2019-10-10 12:50:00
	% DurationCPUTime: 1.24s
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
	% StartTime: 2019-10-10 12:49:59
	% EndTime: 2019-10-10 12:50:02
	% DurationCPUTime: 2.91s
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
	% StartTime: 2019-10-10 12:49:59
	% EndTime: 2019-10-10 12:50:02
	% DurationCPUTime: 2.98s
	% Computational Cost: add. (8441->175), mult. (25165->321), div. (705->12), fcn. (31370->15), ass. (0->162)
	t349 = cos(pkin(7));
	t350 = sin(qJ(3));
	t446 = cos(pkin(6));
	t447 = sin(qJ(2));
	t398 = t446 * t447;
	t448 = sin(qJ(1));
	t384 = t448 * t398;
	t351 = cos(qJ(2));
	t352 = cos(qJ(1));
	t427 = t352 * t351;
	t367 = t384 - t427;
	t408 = t351 * t446;
	t368 = t352 * t447 + t448 * t408;
	t348 = sin(pkin(6));
	t445 = sin(pkin(7));
	t409 = t348 * t445;
	t392 = t448 * t409;
	t449 = cos(qJ(3));
	t309 = -t367 * t449 + (-t368 * t349 + t392) * t350;
	t430 = t348 * t349;
	t402 = t448 * t430;
	t328 = t368 * t445 + t402;
	t347 = qJ(4) + pkin(13);
	t345 = sin(t347);
	t346 = cos(t347);
	t289 = t309 * t345 - t328 * t346;
	t458 = 0.2e1 * t289;
	t333 = t448 * t351 + t352 * t398;
	t400 = t352 * t409;
	t385 = t449 * t400;
	t369 = -t333 * t350 - t385;
	t344 = t448 * t447;
	t390 = -t352 * t408 + t344;
	t373 = t390 * t449;
	t371 = t349 * t373;
	t303 = t371 - t369;
	t301 = t303 ^ 2;
	t411 = t447 * t350;
	t412 = t449 * t351;
	t376 = t349 * t412 - t411;
	t394 = t445 * t446;
	t383 = t449 * t394;
	t325 = -t376 * t348 - t383;
	t323 = 0.1e1 / t325 ^ 2;
	t295 = t301 * t323 + 0.1e1;
	t293 = 0.1e1 / t295;
	t381 = t390 * t350;
	t414 = t333 * t449;
	t363 = -t349 * t381 + t414;
	t319 = t368 * qJD(1) + qJD(2) * t333;
	t320 = -qJD(1) * t384 - qJD(2) * t344 + (qJD(2) * t446 + qJD(1)) * t427;
	t340 = t350 * t400;
	t379 = t449 * t392;
	t413 = t349 * t449;
	t372 = -qJD(1) * t379 - qJD(3) * t340 + t319 * t413 + t320 * t350;
	t278 = qJD(3) * t363 + t372;
	t401 = t449 * t447;
	t428 = t350 * t351;
	t375 = t349 * t401 + t428;
	t377 = t349 * t428 + t401;
	t391 = t350 * t394;
	t299 = qJD(3) * t391 + (qJD(2) * t375 + qJD(3) * t377) * t348;
	t322 = 0.1e1 / t325;
	t432 = t303 * t323;
	t389 = -t278 * t322 + t299 * t432;
	t260 = t389 * t293;
	t296 = atan2(-t303, t325);
	t291 = sin(t296);
	t292 = cos(t296);
	t393 = -t291 * t325 - t292 * t303;
	t255 = t260 * t393 - t291 * t278 + t292 * t299;
	t272 = -t291 * t303 + t292 * t325;
	t270 = 0.1e1 / t272 ^ 2;
	t457 = t255 * t270;
	t456 = t299 * t323;
	t366 = t368 * t449;
	t454 = -t349 * t366 + t350 * t367 + t379;
	t302 = t454 ^ 2;
	t266 = t302 * t270 + 0.1e1;
	t264 = 0.1e1 / t266;
	t269 = 0.1e1 / t272;
	t318 = qJD(1) * t333 + qJD(2) * t368;
	t361 = t390 * qJD(1) + t367 * qJD(2);
	t359 = t361 * t449;
	t276 = -qJD(1) * t385 + qJD(3) * t309 - t318 * t350 - t349 * t359;
	t436 = t276 * t270;
	t443 = t269 * t457;
	t444 = (-t302 * t443 - t436 * t454) / t266 ^ 2;
	t455 = -t264 * t457 - 0.2e1 * t269 * t444;
	t450 = -0.2e1 * t454;
	t403 = t443 * t450;
	t425 = 0.2e1 * t444;
	t438 = t270 * t454;
	t453 = -t425 * t438 + (t403 - t436) * t264;
	t452 = -t350 * (qJD(1) * t392 - t333 * qJD(3) - t319 * t349) + qJD(3) * t385 - t320 * t449;
	t290 = t309 * t346 + t328 * t345;
	t284 = 0.1e1 / t290;
	t285 = 0.1e1 / t290 ^ 2;
	t451 = -0.2e1 * t303;
	t360 = t361 * t350;
	t277 = qJD(1) * t340 + t454 * qJD(3) - t318 * t449 + t349 * t360;
	t415 = t352 * t430;
	t310 = qJD(1) * t415 - t361 * t445;
	t267 = qJD(4) * t290 + t277 * t345 - t310 * t346;
	t283 = t289 ^ 2;
	t275 = t283 * t285 + 0.1e1;
	t435 = t285 * t289;
	t426 = qJD(4) * t289;
	t268 = t277 * t346 + t310 * t345 - t426;
	t439 = t268 * t284 * t285;
	t442 = (t267 * t435 - t283 * t439) / t275 ^ 2;
	t434 = t322 * t456;
	t441 = (t278 * t432 - t301 * t434) / t295 ^ 2;
	t440 = t264 * t269;
	t273 = 0.1e1 / t275;
	t437 = t273 * t285;
	t433 = t303 * t322;
	t429 = t349 * t350;
	t424 = -0.2e1 * t442;
	t423 = -0.2e1 * t441;
	t422 = t285 * t442;
	t421 = t322 * t441;
	t420 = t264 * t438;
	t419 = t267 * t437;
	t416 = t289 * t439;
	t410 = t367 * t445;
	t407 = t445 * t318;
	t405 = 0.2e1 * t416;
	t404 = t434 * t451;
	t382 = t349 * t390;
	t364 = t350 * t382 - t414;
	t307 = t340 + t364;
	t327 = -t390 * t445 + t415;
	t288 = t307 * t346 + t327 * t345;
	t287 = t307 * t345 - t327 * t346;
	t388 = -t345 * t284 + t346 * t435;
	t305 = -t340 + t363;
	t326 = t377 * t348 + t391;
	t387 = -t305 * t322 + t326 * t432;
	t315 = t333 * t413 - t381;
	t332 = t375 * t348;
	t386 = -t315 * t322 + t332 * t432;
	t317 = t367 * t429 - t366;
	t298 = t317 * t346 - t345 * t410;
	t380 = -t317 * t345 - t346 * t410;
	t378 = -t291 + (t292 * t433 + t291) * t293;
	t374 = -t349 * t411 + t412;
	t370 = t449 * t382;
	t316 = -t368 * t350 - t367 * t413;
	t312 = (qJD(2) * t376 + qJD(3) * t374) * t348;
	t311 = -qJD(1) * t402 - t319 * t445;
	t300 = qJD(3) * t383 + (qJD(2) * t374 + qJD(3) * t376) * t348;
	t282 = t320 * t413 - t319 * t350 + (-t333 * t429 - t373) * qJD(3);
	t281 = -qJD(3) * t316 + t318 * t429 + t359;
	t280 = qJD(3) * t370 + t452;
	t279 = -qJD(3) * t371 - t452;
	t263 = t386 * t293;
	t262 = t387 * t293;
	t256 = t262 * t393 - t291 * t305 + t292 * t326;
	t254 = t386 * t423 + (t332 * t404 - t282 * t322 + (t278 * t332 + t299 * t315 + t303 * t312) * t323) * t293;
	t253 = t387 * t423 + (t326 * t404 - t279 * t322 + (t278 * t326 + t299 * t305 + t300 * t303) * t323) * t293;
	t1 = [t421 * t450 + (-t276 * t322 - t454 * t456) * t293, t254, t253, 0, 0, 0; (qJD(3) * t364 - t372) * t440 + (t378 * t276 - ((-t260 * t293 * t433 + t423) * t291 + (t421 * t451 - t260 + (t260 - t389) * t293) * t292) * t454) * t420 + t455 * (-t370 + t369) - t453 * t378 * t454, (qJD(3) * t317 - t318 * t413 + t360) * t440 + ((-t254 * t303 - t263 * t278 + t312 + (-t263 * t325 - t315) * t260) * t292 + (-t254 * t325 - t263 * t299 - t282 + (t263 * t303 - t332) * t260) * t291) * t420 + t455 * t316 + t453 * (t263 * t393 - t291 * t315 + t292 * t332), (-t256 * t438 - t269 * t309) * t425 + (t256 * t403 + t277 * t269 + (-t309 * t255 - t256 * t276 - (-(-t253 * t303 - t262 * t278 + t300 + (-t262 * t325 - t305) * t260) * t292 - (-t253 * t325 - t262 * t299 - t279 + (t262 * t303 - t326) * t260) * t291) * t454) * t270) * t264, 0, 0, 0; 0.2e1 * (-t284 * t287 + t288 * t435) * t442 + ((qJD(4) * t288 + t280 * t345 - t311 * t346) * t284 + t288 * t405 + (-t287 * t268 - (-qJD(4) * t287 + t280 * t346 + t311 * t345) * t289 - t288 * t267) * t285) * t273, (t422 * t458 - t419) * t298 - (-t268 * t437 + t284 * t424) * t380 + ((qJD(4) * t298 + t281 * t345 + t346 * t407) * t284 - (qJD(4) * t380 + t281 * t346 - t345 * t407) * t435 + t298 * t405) * t273, -t388 * t454 * t424 + (t388 * t276 - ((-qJD(4) * t284 - 0.2e1 * t416) * t346 + (t267 * t346 + (t268 - t426) * t345) * t285) * t454) * t273, t424 + (t419 + (-t273 * t439 - t422) * t289) * t458, 0, 0;];
	JaD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:50:01
	% EndTime: 2019-10-10 12:50:09
	% DurationCPUTime: 8.56s
	% Computational Cost: add. (25275->242), mult. (59163->460), div. (983->12), fcn. (74815->17), ass. (0->188)
	t580 = cos(pkin(6));
	t581 = sin(qJ(2));
	t529 = t580 * t581;
	t476 = cos(qJ(2));
	t582 = sin(qJ(1));
	t543 = t582 * t476;
	t583 = cos(qJ(1));
	t458 = t583 * t529 + t543;
	t495 = t580 * t543 + t583 * t581;
	t448 = t495 * qJD(1) + t458 * qJD(2);
	t467 = t582 * t581;
	t510 = t582 * t529;
	t530 = t580 * t583;
	t449 = -qJD(1) * t510 - qJD(2) * t467 + (t583 * qJD(1) + qJD(2) * t530) * t476;
	t473 = sin(qJ(3));
	t475 = cos(qJ(3));
	t471 = sin(pkin(6));
	t578 = sin(pkin(7));
	t540 = t471 * t578;
	t518 = t582 * t540;
	t508 = qJD(1) * t518;
	t579 = cos(pkin(7));
	t521 = t583 * t540;
	t506 = -t476 * t530 + t467;
	t590 = t506 * t579;
	t487 = t590 + t521;
	t586 = t458 * t473 + t487 * t475;
	t403 = qJD(3) * t586 - (-t448 * t579 + t508) * t473 - t449 * t475;
	t558 = t458 * t475;
	t438 = t487 * t473 - t558;
	t470 = qJ(4) + pkin(13);
	t468 = sin(t470);
	t469 = cos(t470);
	t541 = t471 * t579;
	t522 = t583 * t541;
	t488 = t506 * t578 - t522;
	t418 = t438 * t468 + t488 * t469;
	t519 = t582 * t541;
	t493 = qJD(1) * t519 + t448 * t578;
	t380 = t418 * qJD(4) - t403 * t469 + t493 * t468;
	t419 = t438 * t469 - t488 * t468;
	t599 = t419 * qJD(4) + t403 * t468 + t493 * t469;
	t596 = -t495 * t579 + t518;
	t538 = t475 * t579;
	t555 = qJD(3) * t473;
	t593 = (t473 * t590 - t558) * qJD(3) - t448 * t538 - t449 * t473 + t475 * t508 + t521 * t555;
	t537 = t476 * t579;
	t503 = t473 * t537 + t581 * t475;
	t525 = t578 * t580;
	t453 = t503 * t471 + t473 * t525;
	t457 = -t476 * t540 + t580 * t579;
	t429 = t453 * t469 + t457 * t468;
	t528 = t579 * t581;
	t501 = -t473 * t528 + t475 * t476;
	t502 = -t581 * t473 + t475 * t537;
	t517 = qJD(3) * t525;
	t431 = t475 * t517 + (t501 * qJD(2) + t502 * qJD(3)) * t471;
	t527 = t578 * t581;
	t523 = t471 * t527;
	t507 = qJD(2) * t523;
	t404 = t429 * qJD(4) + t431 * t468 - t469 * t507;
	t428 = t453 * t468 - t457 * t469;
	t426 = 0.1e1 / t428 ^ 2;
	t592 = t404 * t426;
	t425 = 0.1e1 / t428;
	t452 = t502 * t471 + t475 * t525;
	t564 = t418 * t426;
	t512 = t425 * t586 - t452 * t564;
	t591 = t468 * t512;
	t494 = -t583 * t476 + t510;
	t485 = qJD(1) * t506 + t494 * qJD(2);
	t589 = qJD(1) * t521 + t485 * t579;
	t588 = t596 * t475;
	t393 = atan2(t418, t428);
	t384 = sin(t393);
	t385 = cos(t393);
	t373 = t384 * t418 + t385 * t428;
	t370 = 0.1e1 / t373;
	t440 = t596 * t473 - t494 * t475;
	t486 = t495 * t578 + t519;
	t421 = t440 * t469 + t486 * t468;
	t474 = cos(qJ(6));
	t439 = -t473 * t494 - t588;
	t472 = sin(qJ(6));
	t562 = t439 * t472;
	t397 = t421 * t474 + t562;
	t390 = 0.1e1 / t397;
	t371 = 0.1e1 / t373 ^ 2;
	t391 = 0.1e1 / t397 ^ 2;
	t585 = 0.2e1 * t418;
	t420 = t440 * t468 - t486 * t469;
	t584 = 0.2e1 * t420;
	t414 = t420 ^ 2;
	t369 = t414 * t371 + 0.1e1;
	t447 = t458 * qJD(1) + t495 * qJD(2);
	t399 = qJD(3) * t588 - t447 * t475 + t473 * t589 + t494 * t555;
	t483 = qJD(1) * t522 - t485 * t578;
	t377 = t421 * qJD(4) + t399 * t468 - t483 * t469;
	t570 = t377 * t371;
	t413 = t418 ^ 2;
	t388 = t413 * t426 + 0.1e1;
	t386 = 0.1e1 / t388;
	t516 = -t404 * t564 + t425 * t599;
	t360 = t516 * t386;
	t524 = -t384 * t428 + t385 * t418;
	t354 = t524 * t360 + t384 * t599 + t385 * t404;
	t372 = t370 * t371;
	t576 = t354 * t372;
	t577 = (-t414 * t576 + t420 * t570) / t369 ^ 2;
	t378 = -t420 * qJD(4) + t399 * t469 + t483 * t468;
	t398 = t440 * qJD(3) - t447 * t473 - t475 * t589;
	t364 = t397 * qJD(6) + t378 * t472 - t398 * t474;
	t561 = t439 * t474;
	t396 = t421 * t472 - t561;
	t389 = t396 ^ 2;
	t376 = t389 * t391 + 0.1e1;
	t567 = t391 * t396;
	t553 = qJD(6) * t396;
	t365 = t378 * t474 + t398 * t472 - t553;
	t572 = t365 * t390 * t391;
	t574 = (t364 * t567 - t389 * t572) / t376 ^ 2;
	t566 = t425 * t592;
	t573 = (-t413 * t566 + t564 * t599) / t388 ^ 2;
	t571 = t371 * t420;
	t569 = t384 * t420;
	t568 = t385 * t420;
	t565 = t418 * t425;
	t563 = t439 * t468;
	t557 = t472 * t390;
	t556 = t474 * t396;
	t554 = qJD(4) * t469;
	t552 = 0.2e1 * t577;
	t551 = -0.2e1 * t574;
	t550 = 0.2e1 * t574;
	t549 = -0.2e1 * t573;
	t548 = t372 * t584;
	t547 = t425 * t573;
	t546 = t371 * t569;
	t545 = t371 * t568;
	t544 = t396 * t572;
	t542 = t468 * t578;
	t539 = t473 * t579;
	t536 = t578 * t469;
	t535 = -0.2e1 * t370 * t577;
	t534 = t371 * t552;
	t533 = t354 * t548;
	t532 = 0.2e1 * t544;
	t531 = t566 * t585;
	t526 = qJD(6) * t439 * t469 + t399;
	t395 = t419 * t474 - t472 * t586;
	t394 = t419 * t472 + t474 * t586;
	t446 = -t495 * t475 + t494 * t539;
	t424 = t446 * t469 - t494 * t542;
	t445 = -t495 * t473 - t494 * t538;
	t409 = t424 * t474 + t445 * t472;
	t408 = t424 * t472 - t445 * t474;
	t515 = t391 * t556 - t557;
	t514 = t419 * t425 - t429 * t564;
	t444 = -t458 * t539 - t506 * t475;
	t422 = t444 * t468 - t458 * t536;
	t456 = t501 * t471;
	t443 = t456 * t468 - t469 * t523;
	t513 = -t422 * t425 - t443 * t564;
	t505 = -t446 * t468 - t494 * t536;
	t504 = -t384 + (-t385 * t565 + t384) * t386;
	t500 = -t473 * t476 - t475 * t528;
	t499 = qJD(4) * t563 + qJD(6) * t440 - t398 * t469;
	t430 = -t473 * t517 + (t500 * qJD(2) - t503 * qJD(3)) * t471;
	t412 = t456 * t554 + ((t500 * qJD(3) + qJD(4) * t527) * t468 + (-t503 * t468 - t476 * t536) * qJD(2)) * t471;
	t411 = t440 * t472 - t469 * t561;
	t410 = -t440 * t474 - t469 * t562;
	t407 = -t445 * qJD(3) + t447 * t539 + t485 * t475;
	t406 = t446 * qJD(3) - t447 * t538 + t485 * t473;
	t405 = -t428 * qJD(4) + t431 * t469 + t468 * t507;
	t383 = (-t449 * t539 - t448 * t475 + (-t458 * t538 + t506 * t473) * qJD(3)) * t468 + t444 * t554 - t449 * t536 + t458 * qJD(4) * t542;
	t382 = t505 * qJD(4) + t407 * t469 - t447 * t542;
	t374 = 0.1e1 / t376;
	t367 = 0.1e1 / t369;
	t366 = t386 * t591;
	t363 = t513 * t386;
	t362 = t514 * t386;
	t359 = t504 * t420;
	t357 = (t384 * t586 + t385 * t452) * t468 + t524 * t366;
	t355 = t524 * t362 + t384 * t419 + t385 * t429;
	t353 = t513 * t549 + (t443 * t531 - t383 * t425 + (t404 * t422 - t412 * t418 - t443 * t599) * t426) * t386;
	t351 = t514 * t549 + (t429 * t531 - t380 * t425 + (-t404 * t419 - t405 * t418 - t429 * t599) * t426) * t386;
	t350 = t549 * t591 + (t512 * t554 + (t452 * t531 - t593 * t425 + (-t404 * t586 - t418 * t430 - t452 * t599) * t426) * t468) * t386;
	t1 = [t547 * t584 + (-t377 * t425 + t420 * t592) * t386, t353, t350, t351, 0, 0; t418 * t535 + (t599 * t370 + (-t418 * t354 - t359 * t377) * t371) * t367 + (t359 * t534 + (0.2e1 * t359 * t576 - (t360 * t386 * t565 + t549) * t546 - (t547 * t585 - t360 + (t360 - t516) * t386) * t545 - t504 * t570) * t367) * t420, -t505 * t535 + ((t424 * qJD(4) + t407 * t468 + t447 * t536) * t370 + t505 * t371 * t354 - ((t353 * t418 + t363 * t599 + t412 + (-t363 * t428 - t422) * t360) * t385 + (-t353 * t428 - t363 * t404 - t383 + (-t363 * t418 - t443) * t360) * t384) * t571) * t367 + (t420 * t534 + (-t570 + t533) * t367) * (t524 * t363 - t384 * t422 + t385 * t443), (t357 * t571 + t370 * t563) * t552 + (-t357 * t570 + (-t398 * t468 - t439 * t554) * t370 + (t357 * t548 + t371 * t563) * t354 - (t452 * t554 + t350 * t418 + t366 * t599 + t430 * t468 + (-t366 * t428 + t468 * t586) * t360) * t545 - (t586 * t554 - t350 * t428 - t366 * t404 - t593 * t468 + (-t366 * t418 - t452 * t468) * t360) * t546) * t367, (t355 * t571 - t370 * t421) * t552 + (t355 * t533 + t378 * t370 + (-t421 * t354 - t355 * t377 - (t351 * t418 + t362 * t599 + t405 + (-t362 * t428 + t419) * t360) * t568 - (-t351 * t428 - t362 * t404 - t380 + (-t362 * t418 - t429) * t360) * t569) * t371) * t367, 0, 0; (-t390 * t394 + t395 * t567) * t550 + ((t395 * qJD(6) - t380 * t472 - t474 * t593) * t390 + t395 * t532 + (-t394 * t365 - (-t394 * qJD(6) - t380 * t474 + t472 * t593) * t396 - t395 * t364) * t391) * t374, (-t390 * t408 + t409 * t567) * t550 + ((t409 * qJD(6) + t382 * t472 - t406 * t474) * t390 + t409 * t532 + (-t408 * t365 - (-t408 * qJD(6) + t382 * t474 + t406 * t472) * t396 - t409 * t364) * t391) * t374, (-t390 * t410 + t411 * t567) * t550 + (t411 * t532 - t526 * t390 * t474 + t499 * t557 + (-t526 * t396 * t472 - t411 * t364 - t410 * t365 - t499 * t556) * t391) * t374, t515 * t420 * t551 + (t515 * t377 + ((-qJD(6) * t390 - 0.2e1 * t544) * t474 + (t364 * t474 + (t365 - t553) * t472) * t391) * t420) * t374, 0, t551 + 0.2e1 * (t364 * t391 * t374 + (-t374 * t572 - t391 * t574) * t396) * t396;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end