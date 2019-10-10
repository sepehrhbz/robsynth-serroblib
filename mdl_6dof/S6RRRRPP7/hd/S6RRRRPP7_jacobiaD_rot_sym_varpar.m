% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRPP7
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
%   Wie in S6RRRRPP7_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,theta5]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:29
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6RRRRPP7_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP7_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP7_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRPP7_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPP7_jacobiaD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:29:20
	% EndTime: 2019-10-10 12:29:20
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:29:20
	% EndTime: 2019-10-10 12:29:20
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:29:20
	% EndTime: 2019-10-10 12:29:20
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
	% StartTime: 2019-10-10 12:29:20
	% EndTime: 2019-10-10 12:29:21
	% DurationCPUTime: 1.06s
	% Computational Cost: add. (1479->91), mult. (4303->201), div. (668->14), fcn. (5516->11), ass. (0->91)
	t171 = sin(qJ(2));
	t172 = sin(qJ(1));
	t225 = cos(pkin(6));
	t195 = t172 * t225;
	t193 = t171 * t195;
	t174 = cos(qJ(2));
	t175 = cos(qJ(1));
	t209 = t175 * t174;
	t157 = -t193 + t209;
	t170 = sin(qJ(3));
	t173 = cos(qJ(3));
	t169 = sin(pkin(6));
	t213 = t169 * t172;
	t185 = -t157 * t170 + t173 * t213;
	t227 = t185 * qJD(3);
	t194 = t175 * t225;
	t192 = t174 * t194;
	t210 = t172 * t171;
	t153 = -t192 + t210;
	t212 = t169 * t174;
	t147 = atan2(-t153, -t212);
	t145 = sin(t147);
	t146 = cos(t147);
	t151 = t153 ^ 2;
	t165 = 0.1e1 / t169 ^ 2;
	t167 = 0.1e1 / t174 ^ 2;
	t150 = t151 * t165 * t167 + 0.1e1;
	t148 = 0.1e1 / t150;
	t164 = 0.1e1 / t169;
	t166 = 0.1e1 / t174;
	t199 = t153 * t164 * t166;
	t226 = (t146 * t199 - t145) * t148 + t145;
	t129 = -t145 * t153 - t146 * t212;
	t126 = 0.1e1 / t129;
	t144 = t157 * t173 + t170 * t213;
	t138 = 0.1e1 / t144;
	t127 = 0.1e1 / t129 ^ 2;
	t139 = 0.1e1 / t144 ^ 2;
	t182 = -t171 * t194 - t172 * t174;
	t183 = -t175 * t171 - t174 * t195;
	t135 = -t183 * qJD(1) - t182 * qJD(2);
	t207 = qJD(2) * t171;
	t196 = t167 * t207;
	t184 = t135 * t166 + t153 * t196;
	t215 = t148 * t164;
	t118 = t184 * t215;
	t188 = t145 * t212 - t146 * t153;
	t200 = t146 * t169 * t171;
	t114 = qJD(2) * t200 + t188 * t118 - t145 * t135;
	t224 = t114 * t126 * t127;
	t214 = t167 * t171;
	t187 = t153 * t214 - t166 * t182;
	t119 = t187 * t215;
	t115 = t188 * t119 + t145 * t182 + t200;
	t223 = t115 * t183;
	t134 = t182 * qJD(1) + t183 * qJD(2);
	t208 = qJD(1) * t169;
	t197 = t175 * t208;
	t124 = t144 * qJD(3) + t134 * t170 - t173 * t197;
	t137 = t185 ^ 2;
	t132 = t137 * t139 + 0.1e1;
	t218 = t139 * t185;
	t125 = t134 * t173 + t170 * t197 + t227;
	t220 = t125 * t138 * t139;
	t222 = (-t124 * t218 - t137 * t220) / t132 ^ 2;
	t168 = t166 * t167;
	t221 = (t135 * t153 * t167 + t151 * t168 * t207) * t165 / t150 ^ 2;
	t191 = qJD(2) * t225 + qJD(1);
	t206 = qJD(2) * t174;
	t133 = -qJD(1) * t192 - t175 * t206 + t191 * t210;
	t219 = t133 * t127;
	t217 = t145 * t183;
	t216 = t146 * t183;
	t211 = t169 * t175;
	t152 = t183 ^ 2;
	t122 = t152 * t127 + 0.1e1;
	t205 = 0.2e1 * (-t152 * t224 + t183 * t219) / t122 ^ 2;
	t204 = 0.2e1 * t224;
	t203 = 0.2e1 * t222;
	t202 = -0.2e1 * t221;
	t201 = t185 * t220;
	t198 = t172 * t208;
	t189 = t170 * t138 + t173 * t218;
	t186 = -t170 * t182 + t173 * t211;
	t142 = t170 * t211 + t173 * t182;
	t136 = -qJD(1) * t193 - t172 * t207 + t191 * t209;
	t130 = 0.1e1 / t132;
	t120 = 0.1e1 / t122;
	t117 = t226 * t183;
	t113 = (t187 * t202 + (t135 * t214 + t136 * t166 + (-t182 * t214 + (0.2e1 * t168 * t171 ^ 2 + t166) * t153) * qJD(2)) * t148) * t164;
	t1 = [(-t183 * t166 * t202 + (-t133 * t166 - t183 * t196) * t148) * t164, t113, 0, 0, 0, 0; t153 * t126 * t205 + (-t135 * t126 + (t114 * t153 + t117 * t133) * t127) * t120 - ((t117 * t204 - t226 * t219) * t120 + (t117 * t205 + ((t118 * t148 * t199 + t202) * t217 + (0.2e1 * t199 * t221 - t118 + (-t184 * t164 + t118) * t148) * t216) * t120) * t127) * t183, (-t126 * t157 - t127 * t223) * t205 + (-t204 * t223 + t134 * t126 + (-t157 * t114 + t115 * t133 + (t169 * t206 - t113 * t153 - t119 * t135 + (t119 * t212 + t182) * t118) * t216 + (t118 * t119 * t153 - t136 + (t113 * t174 + (-qJD(2) * t119 - t118) * t171) * t169) * t217) * t127) * t120, 0, 0, 0, 0; (t138 * t186 - t142 * t218) * t203 + ((t142 * qJD(3) - t136 * t170 + t173 * t198) * t138 - 0.2e1 * t142 * t201 + (t186 * t125 + (t186 * qJD(3) - t136 * t173 - t170 * t198) * t185 - t142 * t124) * t139) * t130, -t189 * t183 * t203 + (t189 * t133 - ((-qJD(3) * t138 + 0.2e1 * t201) * t173 + (t124 * t173 + (t125 + t227) * t170) * t139) * t183) * t130, -0.2e1 * t222 - 0.2e1 * (t124 * t139 * t130 - (-t130 * t220 - t139 * t222) * t185) * t185, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:29:21
	% EndTime: 2019-10-10 12:29:23
	% DurationCPUTime: 2.05s
	% Computational Cost: add. (4522->148), mult. (13478->297), div. (726->12), fcn. (17045->13), ass. (0->126)
	t256 = cos(pkin(6));
	t259 = sin(qJ(2));
	t331 = sin(qJ(1));
	t293 = t331 * t259;
	t283 = t256 * t293;
	t287 = t331 * qJD(2);
	t262 = cos(qJ(2));
	t263 = cos(qJ(1));
	t309 = t263 * t262;
	t255 = sin(pkin(6));
	t313 = t255 * t263;
	t336 = -qJD(1) * t283 - t259 * t287 + (qJD(2) * t256 + qJD(1)) * t309 - qJD(3) * t313;
	t258 = sin(qJ(3));
	t261 = cos(qJ(3));
	t292 = t331 * t262;
	t310 = t263 * t259;
	t275 = -t256 * t310 - t292;
	t228 = -t258 * t275 + t261 * t313;
	t315 = t255 * t259;
	t239 = -t256 * t261 + t258 * t315;
	t217 = atan2(-t228, t239);
	t212 = sin(t217);
	t213 = cos(t217);
	t195 = -t212 * t228 + t213 * t239;
	t193 = 0.1e1 / t195 ^ 2;
	t244 = -t283 + t309;
	t294 = t255 * t331;
	t274 = -t244 * t258 + t261 * t294;
	t225 = t274 ^ 2;
	t191 = t225 * t193 + 0.1e1;
	t273 = -t256 * t292 - t310;
	t221 = t275 * qJD(1) + t273 * qJD(2);
	t234 = t244 * t261 + t258 * t294;
	t291 = qJD(1) * t313;
	t199 = t234 * qJD(3) + t221 * t258 - t261 * t291;
	t324 = t199 * t193;
	t224 = t228 ^ 2;
	t237 = 0.1e1 / t239 ^ 2;
	t216 = t224 * t237 + 0.1e1;
	t214 = 0.1e1 / t216;
	t288 = t331 * qJD(1);
	t282 = t255 * t288;
	t306 = qJD(3) * t261;
	t201 = t336 * t258 - t261 * t282 - t275 * t306;
	t240 = t256 * t258 + t261 * t315;
	t307 = qJD(2) * t262;
	t290 = t255 * t307;
	t226 = t240 * qJD(3) + t258 * t290;
	t236 = 0.1e1 / t239;
	t318 = t228 * t237;
	t279 = -t201 * t236 + t226 * t318;
	t183 = t279 * t214;
	t280 = -t212 * t239 - t213 * t228;
	t178 = t280 * t183 - t212 * t201 + t213 * t226;
	t192 = 0.1e1 / t195;
	t194 = t192 * t193;
	t329 = t178 * t194;
	t304 = 0.2e1 * (-t225 * t329 - t274 * t324) / t191 ^ 2;
	t335 = t226 * t237;
	t295 = t256 * t309;
	t241 = -t293 + t295;
	t314 = t255 * t262;
	t276 = -t236 * t241 + t314 * t318;
	t334 = t258 * t276;
	t202 = (qJD(3) * t275 + t282) * t258 + t336 * t261;
	t257 = sin(qJ(4));
	t260 = cos(qJ(4));
	t211 = t234 * t260 - t257 * t273;
	t205 = 0.1e1 / t211;
	t206 = 0.1e1 / t211 ^ 2;
	t333 = -0.2e1 * t228;
	t332 = -0.2e1 * t274;
	t200 = t274 * qJD(3) + t221 * t261 + t258 * t291;
	t220 = -qJD(1) * t295 - t263 * t307 + (t256 * t287 + t288) * t259;
	t187 = t211 * qJD(4) + t200 * t257 + t220 * t260;
	t210 = t234 * t257 + t260 * t273;
	t204 = t210 ^ 2;
	t198 = t204 * t206 + 0.1e1;
	t323 = t206 * t210;
	t305 = qJD(4) * t210;
	t188 = t200 * t260 - t220 * t257 - t305;
	t326 = t188 * t205 * t206;
	t328 = (t187 * t323 - t204 * t326) / t198 ^ 2;
	t320 = t236 * t335;
	t327 = (t201 * t318 - t224 * t320) / t216 ^ 2;
	t325 = t193 * t274;
	t322 = t212 * t274;
	t321 = t213 * t274;
	t319 = t228 * t236;
	t317 = t273 * t258;
	t316 = t273 * t261;
	t312 = t257 * t205;
	t311 = t260 * t210;
	t308 = qJD(2) * t259;
	t303 = -0.2e1 * t328;
	t302 = 0.2e1 * t328;
	t301 = -0.2e1 * t327;
	t300 = t194 * t332;
	t299 = t236 * t327;
	t298 = t193 * t322;
	t297 = t193 * t321;
	t296 = t210 * t326;
	t286 = 0.2e1 * t296;
	t285 = t320 * t333;
	t230 = -t258 * t313 - t261 * t275;
	t281 = -qJD(4) * t316 + t221;
	t209 = -t230 * t260 + t241 * t257;
	t208 = -t230 * t257 - t241 * t260;
	t278 = t206 * t311 - t312;
	t277 = -t230 * t236 + t240 * t318;
	t271 = -t212 + (t213 * t319 + t212) * t214;
	t270 = -qJD(3) * t317 + qJD(4) * t244 + t220 * t261;
	t227 = -t239 * qJD(3) + t261 * t290;
	t222 = t273 * qJD(1) + t275 * qJD(2);
	t219 = t244 * t257 + t260 * t316;
	t218 = -t244 * t260 + t257 * t316;
	t196 = 0.1e1 / t198;
	t189 = 0.1e1 / t191;
	t186 = t214 * t334;
	t185 = t277 * t214;
	t182 = t271 * t274;
	t180 = (-t212 * t241 + t213 * t314) * t258 + t280 * t186;
	t179 = t280 * t185 - t212 * t230 + t213 * t240;
	t177 = t277 * t301 + (t240 * t285 - t202 * t236 + (t201 * t240 + t226 * t230 + t227 * t228) * t237) * t214;
	t175 = t301 * t334 + (t276 * t306 + (t285 * t314 - t222 * t236 + (t226 * t241 + (t201 * t262 - t228 * t308) * t255) * t237) * t258) * t214;
	t1 = [t299 * t332 + (-t199 * t236 - t274 * t335) * t214, t175, t177, 0, 0, 0; t228 * t192 * t304 + (-t201 * t192 + (t178 * t228 + t182 * t199) * t193) * t189 - (-t182 * t193 * t304 + (-0.2e1 * t182 * t329 + (-t183 * t214 * t319 + t301) * t298 + (t299 * t333 - t183 + (t183 - t279) * t214) * t297 - t271 * t324) * t189) * t274, (-t180 * t325 - t192 * t317) * t304 + (-t180 * t324 + (t220 * t258 + t273 * t306) * t192 + (t180 * t300 - t193 * t317) * t178 + (-t175 * t228 - t186 * t201 + (-t258 * t308 + t262 * t306) * t255 + (-t186 * t239 - t241 * t258) * t183) * t297 + (-t241 * t306 - t175 * t239 - t186 * t226 - t222 * t258 + (t186 * t228 - t258 * t314) * t183) * t298) * t189, (-t179 * t325 - t192 * t234) * t304 + (t179 * t178 * t300 + t200 * t192 + (-t234 * t178 - t179 * t199 + (-t177 * t228 - t185 * t201 + t227 + (-t185 * t239 - t230) * t183) * t321 + (-t177 * t239 - t185 * t226 - t202 + (t185 * t228 - t240) * t183) * t322) * t193) * t189, 0, 0, 0; (-t205 * t208 + t209 * t323) * t302 + ((t209 * qJD(4) - t202 * t257 - t222 * t260) * t205 + t209 * t286 + (-t208 * t188 - (-t208 * qJD(4) - t202 * t260 + t222 * t257) * t210 - t209 * t187) * t206) * t196, (-t205 * t218 + t219 * t323) * t302 + (t219 * t286 - t281 * t205 * t260 + t270 * t312 + (-t281 * t210 * t257 - t219 * t187 - t218 * t188 - t270 * t311) * t206) * t196, -t278 * t274 * t303 + (t278 * t199 - ((-qJD(4) * t205 - 0.2e1 * t296) * t260 + (t187 * t260 + (t188 - t305) * t257) * t206) * t274) * t196, t303 + 0.2e1 * (t187 * t206 * t196 + (-t196 * t326 - t206 * t328) * t210) * t210, 0, 0;];
	JaD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:29:21
	% EndTime: 2019-10-10 12:29:23
	% DurationCPUTime: 2.06s
	% Computational Cost: add. (4943->149), mult. (13478->297), div. (726->12), fcn. (17045->13), ass. (0->127)
	t263 = cos(pkin(6));
	t265 = sin(qJ(2));
	t336 = sin(qJ(1));
	t298 = t336 * t265;
	t288 = t263 * t298;
	t292 = t336 * qJD(2);
	t267 = cos(qJ(2));
	t268 = cos(qJ(1));
	t314 = t268 * t267;
	t262 = sin(pkin(6));
	t316 = t262 * t268;
	t341 = -qJD(1) * t288 - t265 * t292 + (qJD(2) * t263 + qJD(1)) * t314 - qJD(3) * t316;
	t264 = sin(qJ(3));
	t266 = cos(qJ(3));
	t297 = t336 * t267;
	t315 = t268 * t265;
	t280 = -t263 * t315 - t297;
	t232 = -t264 * t280 + t266 * t316;
	t318 = t262 * t265;
	t243 = -t263 * t266 + t264 * t318;
	t221 = atan2(-t232, t243);
	t216 = sin(t221);
	t217 = cos(t221);
	t199 = -t216 * t232 + t217 * t243;
	t197 = 0.1e1 / t199 ^ 2;
	t248 = -t288 + t314;
	t299 = t262 * t336;
	t279 = -t248 * t264 + t266 * t299;
	t229 = t279 ^ 2;
	t195 = t229 * t197 + 0.1e1;
	t278 = -t263 * t297 - t315;
	t225 = t280 * qJD(1) + t278 * qJD(2);
	t238 = t248 * t266 + t264 * t299;
	t296 = qJD(1) * t316;
	t203 = t238 * qJD(3) + t225 * t264 - t266 * t296;
	t329 = t203 * t197;
	t228 = t232 ^ 2;
	t241 = 0.1e1 / t243 ^ 2;
	t220 = t228 * t241 + 0.1e1;
	t218 = 0.1e1 / t220;
	t293 = t336 * qJD(1);
	t287 = t262 * t293;
	t311 = qJD(3) * t266;
	t205 = t341 * t264 - t266 * t287 - t280 * t311;
	t244 = t263 * t264 + t266 * t318;
	t312 = qJD(2) * t267;
	t295 = t262 * t312;
	t230 = t244 * qJD(3) + t264 * t295;
	t240 = 0.1e1 / t243;
	t323 = t232 * t241;
	t284 = -t205 * t240 + t230 * t323;
	t187 = t284 * t218;
	t285 = -t216 * t243 - t217 * t232;
	t182 = t285 * t187 - t216 * t205 + t217 * t230;
	t196 = 0.1e1 / t199;
	t198 = t196 * t197;
	t334 = t182 * t198;
	t309 = 0.2e1 * (-t229 * t334 - t279 * t329) / t195 ^ 2;
	t340 = t230 * t241;
	t300 = t263 * t314;
	t245 = -t298 + t300;
	t317 = t262 * t267;
	t281 = -t240 * t245 + t317 * t323;
	t339 = t264 * t281;
	t206 = (qJD(3) * t280 + t287) * t264 + t341 * t266;
	t261 = qJ(4) + pkin(11);
	t259 = sin(t261);
	t260 = cos(t261);
	t215 = t238 * t260 - t259 * t278;
	t209 = 0.1e1 / t215;
	t210 = 0.1e1 / t215 ^ 2;
	t338 = -0.2e1 * t232;
	t337 = -0.2e1 * t279;
	t204 = t279 * qJD(3) + t225 * t266 + t264 * t296;
	t224 = -qJD(1) * t300 - t268 * t312 + (t263 * t292 + t293) * t265;
	t190 = t215 * qJD(4) + t204 * t259 + t224 * t260;
	t214 = t238 * t259 + t260 * t278;
	t208 = t214 ^ 2;
	t202 = t208 * t210 + 0.1e1;
	t328 = t210 * t214;
	t310 = qJD(4) * t214;
	t191 = t204 * t260 - t224 * t259 - t310;
	t331 = t191 * t209 * t210;
	t333 = (t190 * t328 - t208 * t331) / t202 ^ 2;
	t325 = t240 * t340;
	t332 = (t205 * t323 - t228 * t325) / t220 ^ 2;
	t330 = t197 * t279;
	t327 = t216 * t279;
	t326 = t217 * t279;
	t324 = t232 * t240;
	t322 = t278 * t264;
	t321 = t278 * t266;
	t320 = t259 * t209;
	t319 = t260 * t214;
	t313 = qJD(2) * t265;
	t308 = -0.2e1 * t333;
	t307 = 0.2e1 * t333;
	t306 = -0.2e1 * t332;
	t305 = t198 * t337;
	t304 = t240 * t332;
	t303 = t197 * t327;
	t302 = t197 * t326;
	t301 = t214 * t331;
	t291 = 0.2e1 * t301;
	t290 = t325 * t338;
	t234 = -t264 * t316 - t266 * t280;
	t286 = -qJD(4) * t321 + t225;
	t213 = -t234 * t260 + t245 * t259;
	t212 = -t234 * t259 - t245 * t260;
	t283 = t210 * t319 - t320;
	t282 = -t234 * t240 + t244 * t323;
	t276 = -t216 + (t217 * t324 + t216) * t218;
	t275 = -qJD(3) * t322 + qJD(4) * t248 + t224 * t266;
	t231 = -t243 * qJD(3) + t266 * t295;
	t226 = t278 * qJD(1) + t280 * qJD(2);
	t223 = t248 * t259 + t260 * t321;
	t222 = -t248 * t260 + t259 * t321;
	t200 = 0.1e1 / t202;
	t193 = 0.1e1 / t195;
	t192 = t218 * t339;
	t189 = t282 * t218;
	t186 = t276 * t279;
	t184 = (-t216 * t245 + t217 * t317) * t264 + t285 * t192;
	t183 = t285 * t189 - t216 * t234 + t217 * t244;
	t181 = t282 * t306 + (t244 * t290 - t206 * t240 + (t205 * t244 + t230 * t234 + t231 * t232) * t241) * t218;
	t179 = t306 * t339 + (t281 * t311 + (t290 * t317 - t226 * t240 + (t230 * t245 + (t205 * t267 - t232 * t313) * t262) * t241) * t264) * t218;
	t1 = [t304 * t337 + (-t203 * t240 - t279 * t340) * t218, t179, t181, 0, 0, 0; t232 * t196 * t309 + (-t205 * t196 + (t182 * t232 + t186 * t203) * t197) * t193 - (-t186 * t197 * t309 + (-0.2e1 * t186 * t334 + (-t187 * t218 * t324 + t306) * t303 + (t304 * t338 - t187 + (t187 - t284) * t218) * t302 - t276 * t329) * t193) * t279, (-t184 * t330 - t196 * t322) * t309 + (-t184 * t329 + (t224 * t264 + t278 * t311) * t196 + (t184 * t305 - t197 * t322) * t182 + (-t179 * t232 - t192 * t205 + (-t264 * t313 + t267 * t311) * t262 + (-t192 * t243 - t245 * t264) * t187) * t302 + (-t245 * t311 - t179 * t243 - t192 * t230 - t226 * t264 + (t192 * t232 - t264 * t317) * t187) * t303) * t193, (-t183 * t330 - t196 * t238) * t309 + (t183 * t182 * t305 + t204 * t196 + (-t238 * t182 - t183 * t203 + (-t181 * t232 - t189 * t205 + t231 + (-t189 * t243 - t234) * t187) * t326 + (-t181 * t243 - t189 * t230 - t206 + (t189 * t232 - t244) * t187) * t327) * t197) * t193, 0, 0, 0; (-t209 * t212 + t213 * t328) * t307 + ((t213 * qJD(4) - t206 * t259 - t226 * t260) * t209 + t213 * t291 + (-t212 * t191 - (-t212 * qJD(4) - t206 * t260 + t226 * t259) * t214 - t213 * t190) * t210) * t200, (-t209 * t222 + t223 * t328) * t307 + (t223 * t291 - t286 * t209 * t260 + t275 * t320 + (-t286 * t214 * t259 - t223 * t190 - t222 * t191 - t275 * t319) * t210) * t200, -t283 * t279 * t308 + (t283 * t203 - ((-qJD(4) * t209 - 0.2e1 * t301) * t260 + (t190 * t260 + (t191 - t310) * t259) * t210) * t279) * t200, t308 + 0.2e1 * (t190 * t210 * t200 + (-t200 * t331 - t210 * t333) * t214) * t214, 0, 0;];
	JaD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:29:21
	% EndTime: 2019-10-10 12:29:25
	% DurationCPUTime: 4.25s
	% Computational Cost: add. (14858->179), mult. (28394->347), div. (951->12), fcn. (36086->13), ass. (0->146)
	t311 = cos(pkin(6));
	t314 = sin(qJ(1));
	t313 = sin(qJ(2));
	t372 = qJD(2) * t313;
	t350 = t314 * t372;
	t373 = qJD(1) * t314;
	t353 = t313 * t373;
	t316 = cos(qJ(2));
	t317 = cos(qJ(1));
	t374 = t317 * t316;
	t279 = -t311 * t353 - t350 + (qJD(2) * t311 + qJD(1)) * t374;
	t375 = t317 * t313;
	t376 = t314 * t316;
	t300 = t311 * t375 + t376;
	t312 = sin(qJ(3));
	t315 = cos(qJ(3));
	t310 = sin(pkin(6));
	t378 = t310 * t317;
	t290 = t300 * t312 + t315 * t378;
	t355 = t310 * t373;
	t258 = t290 * qJD(3) - t279 * t315 - t312 * t355;
	t291 = -t300 * t315 + t312 * t378;
	t309 = qJ(4) + pkin(11);
	t307 = sin(t309);
	t308 = cos(t309);
	t377 = t314 * t313;
	t346 = -t311 * t374 + t377;
	t268 = t291 * t307 + t346 * t308;
	t334 = t311 * t376 + t375;
	t324 = t334 * qJD(1) + t300 * qJD(2);
	t241 = t268 * qJD(4) - t258 * t308 + t324 * t307;
	t340 = t346 * t307;
	t269 = t291 * t308 - t340;
	t415 = t269 * qJD(4) + t258 * t307 + t324 * t308;
	t260 = t268 ^ 2;
	t380 = t310 * t315;
	t299 = t311 * t312 + t313 * t380;
	t379 = t310 * t316;
	t283 = t299 * t307 + t308 * t379;
	t281 = 0.1e1 / t283 ^ 2;
	t247 = t260 * t281 + 0.1e1;
	t245 = 0.1e1 / t247;
	t284 = t299 * t308 - t307 * t379;
	t381 = t310 * t312;
	t298 = t311 * t315 - t313 * t381;
	t351 = qJD(2) * t379;
	t287 = t298 * qJD(3) + t315 * t351;
	t352 = t310 * t372;
	t252 = t284 * qJD(4) + t287 * t307 - t308 * t352;
	t280 = 0.1e1 / t283;
	t384 = t268 * t281;
	t338 = -t252 * t384 + t280 * t415;
	t225 = t338 * t245;
	t248 = atan2(t268, t283);
	t243 = sin(t248);
	t244 = cos(t248);
	t339 = -t243 * t283 + t244 * t268;
	t220 = t339 * t225 + t243 * t415 + t244 * t252;
	t237 = t243 * t268 + t244 * t283;
	t235 = 0.1e1 / t237 ^ 2;
	t414 = t220 * t235;
	t278 = -t300 * qJD(1) - t334 * qJD(2);
	t301 = -t311 * t377 + t374;
	t292 = -t301 * t312 + t314 * t380;
	t354 = qJD(1) * t378;
	t255 = t292 * qJD(3) + t278 * t315 + t312 * t354;
	t293 = t301 * t315 + t314 * t381;
	t271 = t293 * t308 + t334 * t307;
	t277 = t311 * t350 + t353 + (-qJD(1) * t311 - qJD(2)) * t374;
	t238 = t271 * qJD(4) + t255 * t307 + t277 * t308;
	t270 = t293 * t307 - t334 * t308;
	t399 = 0.2e1 * t270;
	t234 = 0.1e1 / t237;
	t409 = t234 * t414;
	t348 = t399 * t409;
	t413 = -t235 * t238 + t348;
	t263 = 0.1e1 / t271 ^ 2;
	t285 = t292 ^ 2;
	t383 = t285 * t263;
	t251 = 0.1e1 + t383;
	t254 = -t293 * qJD(3) - t278 * t312 + t315 * t354;
	t239 = -t270 * qJD(4) + t255 * t308 - t277 * t307;
	t262 = 0.1e1 / t271;
	t392 = t239 * t262 * t263;
	t356 = t285 * t392;
	t386 = t263 * t292;
	t396 = (t254 * t386 - t356) / t251 ^ 2;
	t410 = 0.2e1 * t396;
	t408 = -0.2e1 * t270;
	t407 = t252 * t281;
	t335 = t280 * t290 - t298 * t384;
	t406 = t307 * t335;
	t249 = 0.1e1 / t251;
	t388 = t249 * t263;
	t404 = t239 * t388 + t262 * t410;
	t261 = t270 ^ 2;
	t233 = t261 * t235 + 0.1e1;
	t231 = 0.1e1 / t233;
	t393 = t235 * t270;
	t398 = (t238 * t393 - t261 * t409) / t233 ^ 2;
	t403 = -t231 * t414 - 0.2e1 * t234 * t398;
	t345 = t386 * t396;
	t359 = t292 * t392;
	t402 = 0.2e1 * t249 * t359 - t254 * t388 + 0.2e1 * t345;
	t368 = 0.2e1 * t398;
	t401 = t413 * t231 + t368 * t393;
	t256 = t291 * qJD(3) - t279 * t312 + t315 * t355;
	t400 = 0.2e1 * t268;
	t387 = t280 * t407;
	t397 = (-t260 * t387 + t384 * t415) / t247 ^ 2;
	t395 = t231 * t234;
	t391 = t243 * t270;
	t390 = t244 * t270;
	t389 = t249 * t262;
	t385 = t268 * t280;
	t382 = t292 * t307;
	t371 = qJD(3) * t312;
	t370 = qJD(4) * t308;
	t369 = t315 * qJD(4);
	t367 = -0.2e1 * t397;
	t364 = t280 * t397;
	t361 = t231 * t393;
	t357 = t249 * t386;
	t347 = t387 * t400;
	t337 = t269 * t280 - t284 * t384;
	t272 = -t300 * t308 - t315 * t340;
	t294 = (t307 * t315 * t316 - t308 * t313) * t310;
	t336 = -t272 * t280 - t294 * t384;
	t330 = t315 * t334;
	t329 = -t243 + (-t244 * t385 + t243) * t245;
	t328 = qJD(3) * t334;
	t327 = -qJD(4) * t330 - t278;
	t326 = t301 * qJD(4) + t277 * t315 + t312 * t328;
	t286 = -t299 * qJD(3) - t312 * t351;
	t259 = ((-qJD(2) + t369) * t316 * t308 + (-t316 * t371 + (-qJD(2) * t315 + qJD(4)) * t313) * t307) * t310;
	t253 = -t283 * qJD(4) + t287 * t308 + t307 * t352;
	t242 = (-t346 * t369 - t279) * t308 + (t300 * qJD(4) - t315 * t324 + t346 * t371) * t307;
	t230 = t245 * t406;
	t229 = t336 * t245;
	t228 = t337 * t245;
	t223 = (t243 * t290 + t244 * t298) * t307 + t339 * t230;
	t221 = t339 * t228 + t243 * t269 + t244 * t284;
	t219 = t336 * t367 + (t294 * t347 - t242 * t280 + (t252 * t272 - t259 * t268 - t294 * t415) * t281) * t245;
	t217 = t337 * t367 + (t284 * t347 - t241 * t280 + (-t252 * t269 - t253 * t268 - t284 * t415) * t281) * t245;
	t216 = t367 * t406 + (t335 * t370 + (t298 * t347 - t256 * t280 + (-t252 * t290 - t268 * t286 - t298 * t415) * t281) * t307) * t245;
	t1 = [t364 * t399 + (-t238 * t280 + t270 * t407) * t245, t219, t216, t217, 0, 0; t415 * t395 - (t329 * t238 + ((t225 * t245 * t385 + t367) * t243 + (t364 * t400 - t225 + (t225 - t338) * t245) * t244) * t270) * t361 + t403 * t268 + t401 * t329 * t270, (t326 * t307 + t327 * t308) * t395 - ((t219 * t268 + t229 * t415 + t259 + (-t229 * t283 - t272) * t225) * t244 + (-t219 * t283 - t229 * t252 - t242 + (-t229 * t268 - t294) * t225) * t243) * t361 + t403 * (-t301 * t308 - t307 * t330) + t401 * (t339 * t229 - t243 * t272 + t244 * t294), (t223 * t393 - t234 * t382) * t368 + ((t254 * t307 + t292 * t370) * t234 + t413 * t223 + (-t382 * t220 - (t298 * t370 + t216 * t268 + t230 * t415 + t286 * t307 + (-t230 * t283 + t290 * t307) * t225) * t390 - (t290 * t370 - t216 * t283 - t230 * t252 - t256 * t307 + (-t230 * t268 - t298 * t307) * t225) * t391) * t235) * t231, (t221 * t393 - t234 * t271) * t368 + (t221 * t348 + t239 * t234 + (-t271 * t220 - t221 * t238 - (t217 * t268 + t228 * t415 + t253 + (-t228 * t283 + t269) * t225) * t390 - (-t217 * t283 - t228 * t252 - t241 + (-t228 * t268 - t284) * t225) * t391) * t235) * t231, 0, 0; t241 * t357 - t256 * t389 + t402 * t269 - t404 * t290, -(-t327 * t307 + t326 * t308) * t357 + (-t277 * t312 + t315 * t328) * t389 - t404 * t312 * t334 + t402 * (t301 * t307 - t308 * t330), (t262 * t293 + t308 * t383) * t410 + (0.2e1 * t308 * t356 - t255 * t262 + (qJD(4) * t285 * t307 - 0.2e1 * t254 * t292 * t308 + t239 * t293) * t263) * t249, t345 * t408 + (t359 * t408 + (t238 * t292 + t254 * t270) * t263) * t249, 0, 0;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end