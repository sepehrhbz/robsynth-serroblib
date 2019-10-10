% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRPR11
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
%   Wie in S6RRRRPR11_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:48
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6RRRRPR11_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR11_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR11_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRPR11_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR11_jacobiaD_rot_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:01
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:01
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:01
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
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:02
	% DurationCPUTime: 1.05s
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
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:03
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
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:03
	% DurationCPUTime: 2.08s
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
	t261 = qJ(4) + pkin(12);
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
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:04
	% DurationCPUTime: 2.19s
	% Computational Cost: add. (5847->150), mult. (14155->298), div. (744->12), fcn. (17850->13), ass. (0->132)
	t286 = cos(pkin(6));
	t288 = sin(qJ(2));
	t362 = sin(qJ(1));
	t325 = t362 * t288;
	t311 = t286 * t325;
	t319 = t362 * qJD(2);
	t290 = cos(qJ(2));
	t291 = cos(qJ(1));
	t340 = t291 * t290;
	t285 = sin(pkin(6));
	t342 = t285 * t291;
	t367 = -qJD(1) * t311 - t288 * t319 + (qJD(2) * t286 + qJD(1)) * t340 - qJD(3) * t342;
	t287 = sin(qJ(3));
	t289 = cos(qJ(3));
	t324 = t362 * t290;
	t341 = t291 * t288;
	t303 = -t286 * t341 - t324;
	t254 = -t287 * t303 + t289 * t342;
	t344 = t285 * t288;
	t265 = -t286 * t289 + t287 * t344;
	t245 = atan2(-t254, t265);
	t240 = sin(t245);
	t241 = cos(t245);
	t221 = -t240 * t254 + t241 * t265;
	t219 = 0.1e1 / t221 ^ 2;
	t270 = -t311 + t340;
	t326 = t285 * t362;
	t302 = -t270 * t287 + t289 * t326;
	t251 = t302 ^ 2;
	t217 = t251 * t219 + 0.1e1;
	t301 = -t286 * t324 - t341;
	t247 = t303 * qJD(1) + t301 * qJD(2);
	t260 = t270 * t289 + t287 * t326;
	t323 = qJD(1) * t342;
	t225 = t260 * qJD(3) + t247 * t287 - t289 * t323;
	t355 = t225 * t219;
	t250 = t254 ^ 2;
	t263 = 0.1e1 / t265 ^ 2;
	t244 = t250 * t263 + 0.1e1;
	t242 = 0.1e1 / t244;
	t320 = t362 * qJD(1);
	t310 = t285 * t320;
	t337 = qJD(3) * t289;
	t227 = t367 * t287 - t289 * t310 - t303 * t337;
	t266 = t286 * t287 + t289 * t344;
	t338 = qJD(2) * t290;
	t322 = t285 * t338;
	t252 = t266 * qJD(3) + t287 * t322;
	t262 = 0.1e1 / t265;
	t349 = t254 * t263;
	t307 = -t227 * t262 + t252 * t349;
	t209 = t307 * t242;
	t308 = -t240 * t265 - t241 * t254;
	t204 = t308 * t209 - t240 * t227 + t241 * t252;
	t218 = 0.1e1 / t221;
	t220 = t218 * t219;
	t360 = t204 * t220;
	t336 = 0.2e1 * (-t251 * t360 - t302 * t355) / t217 ^ 2;
	t366 = t252 * t263;
	t327 = t286 * t340;
	t267 = -t325 + t327;
	t343 = t285 * t290;
	t304 = -t262 * t267 + t343 * t349;
	t365 = t287 * t304;
	t228 = (qJD(3) * t303 + t310) * t287 + t367 * t289;
	t283 = qJ(4) + pkin(12) + qJ(6);
	t281 = sin(t283);
	t282 = cos(t283);
	t237 = t260 * t282 - t281 * t301;
	t231 = 0.1e1 / t237;
	t232 = 0.1e1 / t237 ^ 2;
	t364 = -0.2e1 * t254;
	t363 = -0.2e1 * t302;
	t246 = -qJD(1) * t327 - t291 * t338 + (t286 * t319 + t320) * t288;
	t284 = qJD(4) + qJD(6);
	t314 = t260 * t284 + t246;
	t226 = t302 * qJD(3) + t247 * t289 + t287 * t323;
	t316 = -t284 * t301 + t226;
	t212 = t316 * t281 + t314 * t282;
	t236 = t260 * t281 + t282 * t301;
	t230 = t236 ^ 2;
	t224 = t230 * t232 + 0.1e1;
	t354 = t232 * t236;
	t213 = -t314 * t281 + t316 * t282;
	t357 = t213 * t231 * t232;
	t359 = (t212 * t354 - t230 * t357) / t224 ^ 2;
	t351 = t262 * t366;
	t358 = (t227 * t349 - t250 * t351) / t244 ^ 2;
	t356 = t219 * t302;
	t353 = t240 * t302;
	t352 = t241 * t302;
	t350 = t254 * t262;
	t348 = t301 * t287;
	t347 = t301 * t289;
	t346 = t281 * t231;
	t345 = t282 * t236;
	t339 = qJD(2) * t288;
	t335 = -0.2e1 * t359;
	t334 = 0.2e1 * t359;
	t333 = -0.2e1 * t358;
	t332 = t220 * t363;
	t331 = t262 * t358;
	t330 = t219 * t353;
	t329 = t219 * t352;
	t328 = t236 * t357;
	t318 = 0.2e1 * t328;
	t317 = t351 * t364;
	t315 = t267 * t284 - t228;
	t248 = t301 * qJD(1) + t303 * qJD(2);
	t256 = -t287 * t342 - t289 * t303;
	t313 = -t256 * t284 - t248;
	t309 = -t284 * t347 + t247;
	t306 = t232 * t345 - t346;
	t305 = -t256 * t262 + t266 * t349;
	t299 = -t240 + (t241 * t350 + t240) * t242;
	t298 = -qJD(3) * t348 + t246 * t289 + t270 * t284;
	t253 = -t265 * qJD(3) + t289 * t322;
	t239 = t270 * t281 + t282 * t347;
	t238 = -t270 * t282 + t281 * t347;
	t235 = -t256 * t282 + t267 * t281;
	t234 = -t256 * t281 - t267 * t282;
	t222 = 0.1e1 / t224;
	t215 = 0.1e1 / t217;
	t214 = t242 * t365;
	t211 = t305 * t242;
	t208 = t299 * t302;
	t206 = (-t240 * t267 + t241 * t343) * t287 + t308 * t214;
	t205 = t308 * t211 - t240 * t256 + t241 * t266;
	t203 = t305 * t333 + (t266 * t317 - t228 * t262 + (t227 * t266 + t252 * t256 + t253 * t254) * t263) * t242;
	t201 = t333 * t365 + (t304 * t337 + (t317 * t343 - t248 * t262 + (t252 * t267 + (t227 * t290 - t254 * t339) * t285) * t263) * t287) * t242;
	t200 = t335 + 0.2e1 * (t212 * t232 * t222 + (-t222 * t357 - t232 * t359) * t236) * t236;
	t1 = [t331 * t363 + (-t225 * t262 - t302 * t366) * t242, t201, t203, 0, 0, 0; t254 * t218 * t336 + (-t227 * t218 + (t204 * t254 + t208 * t225) * t219) * t215 - (-t208 * t219 * t336 + (-0.2e1 * t208 * t360 + (-t209 * t242 * t350 + t333) * t330 + (t331 * t364 - t209 + (t209 - t307) * t242) * t329 - t299 * t355) * t215) * t302, (-t206 * t356 - t218 * t348) * t336 + (-t206 * t355 + (t246 * t287 + t301 * t337) * t218 + (t206 * t332 - t219 * t348) * t204 + (-t201 * t254 - t214 * t227 + (-t287 * t339 + t290 * t337) * t285 + (-t214 * t265 - t267 * t287) * t209) * t329 + (-t267 * t337 - t201 * t265 - t214 * t252 - t248 * t287 + (t214 * t254 - t287 * t343) * t209) * t330) * t215, (-t205 * t356 - t218 * t260) * t336 + (t205 * t204 * t332 + t226 * t218 + (-t260 * t204 - t205 * t225 + (-t203 * t254 - t211 * t227 + t253 + (-t211 * t265 - t256) * t209) * t352 + (-t203 * t265 - t211 * t252 - t228 + (t211 * t254 - t266) * t209) * t353) * t219) * t215, 0, 0, 0; (-t231 * t234 + t235 * t354) * t334 + ((t315 * t281 + t313 * t282) * t231 + t235 * t318 + (-t234 * t213 - (-t313 * t281 + t315 * t282) * t236 - t235 * t212) * t232) * t222, (-t231 * t238 + t239 * t354) * t334 + (t239 * t318 - t309 * t231 * t282 + t298 * t346 + (-t309 * t236 * t281 - t239 * t212 - t238 * t213 - t298 * t345) * t232) * t222, -t306 * t302 * t335 + (t306 * t225 - ((-t231 * t284 - 0.2e1 * t328) * t282 + (t212 * t282 + (-t236 * t284 + t213) * t281) * t232) * t302) * t222, t200, 0, t200;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end