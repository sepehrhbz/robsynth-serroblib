% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRPP9
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
%   Wie in S6RRRRPP9_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:33
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6RRRRPP9_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP9_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP9_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRPP9_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP9_jacobiaD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:33:10
	% EndTime: 2019-10-10 12:33:10
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:33:10
	% EndTime: 2019-10-10 12:33:10
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:33:10
	% EndTime: 2019-10-10 12:33:11
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
	% StartTime: 2019-10-10 12:33:11
	% EndTime: 2019-10-10 12:33:12
	% DurationCPUTime: 1.04s
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
	% StartTime: 2019-10-10 12:33:11
	% EndTime: 2019-10-10 12:33:13
	% DurationCPUTime: 2.09s
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
	% StartTime: 2019-10-10 12:33:11
	% EndTime: 2019-10-10 12:33:15
	% DurationCPUTime: 4.28s
	% Computational Cost: add. (9759->187), mult. (28191->360), div. (951->12), fcn. (35841->13), ass. (0->142)
	t302 = cos(pkin(6));
	t306 = sin(qJ(1));
	t305 = sin(qJ(2));
	t351 = qJD(2) * t305;
	t333 = t306 * t351;
	t352 = qJD(1) * t306;
	t336 = t305 * t352;
	t309 = cos(qJ(2));
	t310 = cos(qJ(1));
	t353 = t310 * t309;
	t266 = -t302 * t336 - t333 + (qJD(2) * t302 + qJD(1)) * t353;
	t304 = sin(qJ(3));
	t308 = cos(qJ(3));
	t354 = t310 * t305;
	t356 = t306 * t309;
	t289 = t302 * t354 + t356;
	t301 = sin(pkin(6));
	t359 = t301 * t310;
	t322 = t289 * t304 + t308 * t359;
	t338 = t301 * t352;
	t245 = t322 * qJD(3) - t266 * t308 - t304 * t338;
	t339 = t304 * t359;
	t280 = -t289 * t308 + t339;
	t303 = sin(qJ(4));
	t307 = cos(qJ(4));
	t357 = t306 * t305;
	t330 = -t302 * t353 + t357;
	t255 = t280 * t303 + t330 * t307;
	t290 = t302 * t356 + t354;
	t317 = t290 * qJD(1) + t289 * qJD(2);
	t230 = t255 * qJD(4) - t245 * t307 + t317 * t303;
	t329 = t330 * t303;
	t256 = t280 * t307 - t329;
	t392 = t256 * qJD(4) + t245 * t303 + t317 * t307;
	t249 = t255 ^ 2;
	t360 = t301 * t308;
	t288 = t302 * t304 + t305 * t360;
	t355 = t307 * t309;
	t275 = t288 * t303 + t301 * t355;
	t268 = 0.1e1 / t275 ^ 2;
	t238 = t249 * t268 + 0.1e1;
	t234 = 0.1e1 / t238;
	t361 = t301 * t304;
	t287 = t302 * t308 - t305 * t361;
	t334 = qJD(2) * t301 * t309;
	t274 = t287 * qJD(3) + t308 * t334;
	t358 = t303 * t309;
	t276 = t288 * t307 - t301 * t358;
	t335 = t301 * t351;
	t246 = t276 * qJD(4) + t274 * t303 - t307 * t335;
	t267 = 0.1e1 / t275;
	t368 = t255 * t268;
	t326 = -t246 * t368 + t267 * t392;
	t214 = t326 * t234;
	t239 = atan2(t255, t275);
	t232 = sin(t239);
	t233 = cos(t239);
	t328 = -t232 * t275 + t233 * t255;
	t209 = t328 * t214 + t232 * t392 + t233 * t246;
	t226 = t232 * t255 + t233 * t275;
	t224 = 0.1e1 / t226 ^ 2;
	t391 = t209 * t224;
	t223 = 0.1e1 / t226;
	t388 = t223 * t391;
	t265 = -t289 * qJD(1) - t290 * qJD(2);
	t291 = -t302 * t357 + t353;
	t321 = -t291 * t304 + t306 * t360;
	t337 = qJD(1) * t359;
	t242 = t321 * qJD(3) + t265 * t308 + t304 * t337;
	t282 = t291 * t308 + t306 * t361;
	t258 = t282 * t307 + t290 * t303;
	t264 = t302 * t333 + t336 + (-qJD(1) * t302 - qJD(2)) * t353;
	t227 = t258 * qJD(4) + t242 * t303 + t264 * t307;
	t257 = t282 * t303 - t290 * t307;
	t381 = 0.2e1 * t257;
	t332 = t381 * t388;
	t387 = -t224 * t227 + t332;
	t241 = t282 * qJD(3) + t265 * t304 - t308 * t337;
	t270 = 0.1e1 / t321;
	t271 = 0.1e1 / t321 ^ 2;
	t272 = t270 * t271;
	t371 = t241 * t272;
	t386 = 0.2e1 * t258 * t371;
	t385 = t246 * t268;
	t323 = t267 * t322 - t287 * t368;
	t384 = t303 * t323;
	t382 = 0.2e1 * t255;
	t250 = t257 ^ 2;
	t222 = t250 * t224 + 0.1e1;
	t375 = t224 * t257;
	t380 = (t227 * t375 - t250 * t388) / t222 ^ 2;
	t228 = -t257 * qJD(4) + t242 * t307 - t264 * t303;
	t251 = t258 ^ 2;
	t240 = t251 * t271 + 0.1e1;
	t367 = t258 * t271;
	t378 = (t228 * t367 + t251 * t371) / t240 ^ 2;
	t370 = t267 * t385;
	t377 = (-t249 * t370 + t368 * t392) / t238 ^ 2;
	t374 = t232 * t257;
	t373 = t233 * t257;
	t372 = t241 * t271;
	t369 = t255 * t267;
	t366 = t258 * t282;
	t365 = t271 * t322;
	t364 = t321 * t303;
	t363 = t290 * t304;
	t362 = t290 * t308;
	t350 = qJD(3) * t304;
	t349 = qJD(3) * t308;
	t348 = qJD(4) * t307;
	t347 = t308 * qJD(4);
	t346 = 0.2e1 * t380;
	t345 = 0.2e1 * t378;
	t344 = -0.2e1 * t377;
	t342 = t270 * t378;
	t341 = t267 * t377;
	t331 = t370 * t382;
	t327 = qJD(4) * t291 + t264 * t308;
	t325 = t256 * t267 - t276 * t368;
	t259 = -t289 * t307 - t308 * t329;
	t283 = (-t305 * t307 + t308 * t358) * t301;
	t324 = -t259 * t267 - t283 * t368;
	t319 = -t232 + (-t233 * t369 + t232) * t234;
	t243 = qJD(3) * t339 - t266 * t304 - t289 * t349 + t308 * t338;
	t273 = -t288 * qJD(3) - t304 * t334;
	t261 = t291 * t303 - t307 * t362;
	t260 = -t291 * t307 - t303 * t362;
	t248 = ((-qJD(2) + t347) * t355 + (-t309 * t350 + (-qJD(2) * t308 + qJD(4)) * t305) * t303) * t301;
	t247 = -t275 * qJD(4) + t274 * t307 + t303 * t335;
	t236 = 0.1e1 / t240;
	t231 = (-t330 * t347 - t266) * t307 + (t289 * qJD(4) - t308 * t317 + t330 * t350) * t303;
	t220 = 0.1e1 / t222;
	t219 = t234 * t384;
	t218 = t324 * t234;
	t217 = t325 * t234;
	t212 = (t232 * t322 + t233 * t287) * t303 + t328 * t219;
	t211 = t328 * t218 - t232 * t259 + t233 * t283;
	t210 = t328 * t217 + t232 * t256 + t233 * t276;
	t208 = t324 * t344 + (t283 * t331 - t231 * t267 + (t246 * t259 - t248 * t255 - t283 * t392) * t268) * t234;
	t206 = t325 * t344 + (t276 * t331 - t230 * t267 + (-t246 * t256 - t247 * t255 - t276 * t392) * t268) * t234;
	t205 = t344 * t384 + (t323 * t348 + (t287 * t331 - t243 * t267 + (-t246 * t322 - t255 * t273 - t287 * t392) * t268) * t303) * t234;
	t1 = [t341 * t381 + (-t227 * t267 + t257 * t385) * t234, t208, t205, t206, 0, 0; -0.2e1 * t255 * t223 * t380 + (t392 * t223 - t255 * t391 - (t319 * t227 + ((t214 * t234 * t369 + t344) * t232 + (t341 * t382 - t214 + (t214 - t326) * t234) * t233) * t257) * t375) * t220 + (t387 * t220 + t375 * t346) * t319 * t257, (t211 * t375 - t223 * t260) * t346 + (t211 * t332 + (-t260 * t209 - t211 * t227 - (t208 * t255 + t218 * t392 + t248 + (-t218 * t275 - t259) * t214) * t373 - (-t208 * t275 - t218 * t246 - t231 + (-t218 * t255 - t283) * t214) * t374) * t224 + ((-t290 * t347 - t265) * t307 + (t290 * t350 + t327) * t303) * t223) * t220, (t212 * t375 - t223 * t364) * t346 + ((-t241 * t303 + t321 * t348) * t223 + t387 * t212 + (-t364 * t209 - (t287 * t348 + t205 * t255 + t219 * t392 + t273 * t303 + (-t219 * t275 + t303 * t322) * t214) * t373 - (t322 * t348 - t205 * t275 - t219 * t246 - t243 * t303 + (-t219 * t255 - t287 * t303) * t214) * t374) * t224) * t220, (t210 * t375 - t223 * t258) * t346 + (t210 * t332 + t228 * t223 + (-t258 * t209 - t210 * t227 - (t206 * t255 + t217 * t392 + t247 + (-t217 * t275 + t256) * t214) * t373 - (-t206 * t275 - t217 * t246 - t230 + (-t217 * t255 - t276) * t214) * t374) * t224) * t220, 0, 0; -t258 * t345 * t365 + 0.2e1 * t256 * t342 + (t228 * t365 + t230 * t270 - t243 * t367 - t256 * t372 + t322 * t386) * t236, (t261 * t270 - t363 * t367) * t345 + (-(t265 * t303 + t327 * t307) * t270 + (-(t303 * t347 + t307 * t350) * t270 + t304 * t386) * t290 + (t228 * t363 - t261 * t241 + (-t264 * t304 + t290 * t349) * t258) * t271) * t236, (t270 * t307 * t321 + t271 * t366) * t345 + (qJD(4) * t270 * t364 + (-t228 * t282 - t242 * t258) * t271 + (-0.2e1 * t272 * t366 + (-t271 * t321 + t270) * t307) * t241) * t236, -t342 * t381 + (t227 * t270 + t257 * t372) * t236, 0, 0;];
	JaD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:33:11
	% EndTime: 2019-10-10 12:33:15
	% DurationCPUTime: 3.73s
	% Computational Cost: add. (9759->192), mult. (28191->370), div. (951->12), fcn. (35841->13), ass. (0->147)
	t302 = sin(qJ(1));
	t298 = cos(pkin(6));
	t325 = qJD(2) * t298 + qJD(1);
	t301 = sin(qJ(2));
	t356 = t302 * t301;
	t334 = t298 * t356;
	t349 = qJD(2) * t301;
	t305 = cos(qJ(2));
	t306 = cos(qJ(1));
	t351 = t306 * t305;
	t262 = -qJD(1) * t334 - t302 * t349 + t325 * t351;
	t300 = sin(qJ(3));
	t304 = cos(qJ(3));
	t352 = t306 * t301;
	t355 = t302 * t305;
	t285 = t298 * t352 + t355;
	t297 = sin(pkin(6));
	t358 = t297 * t306;
	t317 = t285 * t300 + t304 * t358;
	t350 = qJD(1) * t297;
	t331 = t302 * t350;
	t242 = t317 * qJD(3) - t262 * t304 - t300 * t331;
	t333 = t300 * t358;
	t277 = -t285 * t304 + t333;
	t332 = t298 * t351;
	t284 = -t332 + t356;
	t299 = sin(qJ(4));
	t303 = cos(qJ(4));
	t253 = t277 * t303 - t284 * t299;
	t286 = t298 * t355 + t352;
	t261 = t286 * qJD(1) + t285 * qJD(2);
	t226 = -t253 * qJD(4) - t242 * t299 - t261 * t303;
	t365 = t277 * t299;
	t387 = -t284 * t303 - t365;
	t287 = -t334 + t351;
	t360 = t297 * t300;
	t279 = t287 * t304 + t302 * t360;
	t254 = -t279 * t299 + t286 * t303;
	t260 = -t285 * qJD(1) - t286 * qJD(2);
	t330 = t306 * t350;
	t238 = t279 * qJD(3) + t260 * t300 - t304 * t330;
	t359 = t297 * t304;
	t316 = -t287 * t300 + t302 * t359;
	t268 = 0.1e1 / t316;
	t269 = 0.1e1 / t316 ^ 2;
	t270 = t268 * t269;
	t373 = t238 * t270;
	t385 = 0.2e1 * t254 * t373;
	t282 = t298 * t304 - t301 * t360;
	t348 = qJD(2) * t305;
	t328 = t297 * t348;
	t272 = t282 * qJD(3) + t304 * t328;
	t283 = t298 * t300 + t301 * t359;
	t353 = t303 * t305;
	t273 = -t283 * t299 - t297 * t353;
	t329 = t297 * t349;
	t244 = t273 * qJD(4) + t272 * t303 + t299 * t329;
	t357 = t299 * t305;
	t318 = -t283 * t303 + t297 * t357;
	t266 = 0.1e1 / t318 ^ 2;
	t384 = t244 * t266;
	t265 = 0.1e1 / t318;
	t370 = t253 * t266;
	t319 = -t265 * t317 - t282 * t370;
	t383 = t303 * t319;
	t236 = atan2(t253, -t318);
	t229 = sin(t236);
	t230 = cos(t236);
	t223 = t229 * t253 - t230 * t318;
	t220 = 0.1e1 / t223;
	t221 = 0.1e1 / t223 ^ 2;
	t382 = 0.2e1 * t253;
	t362 = t286 * t299;
	t255 = t279 * t303 + t362;
	t381 = 0.2e1 * t255;
	t248 = t255 ^ 2;
	t219 = t248 * t221 + 0.1e1;
	t239 = t316 * qJD(3) + t260 * t304 + t300 * t330;
	t259 = -qJD(1) * t332 - t306 * t348 + t325 * t356;
	t345 = qJD(4) * t299;
	t225 = -t259 * t299 - t279 * t345 + (qJD(4) * t286 + t239) * t303;
	t376 = t225 * t221;
	t246 = t253 ^ 2;
	t235 = t246 * t266 + 0.1e1;
	t231 = 0.1e1 / t235;
	t343 = t284 * qJD(4);
	t367 = t261 * t299;
	t227 = t367 + qJD(4) * t365 + (-t242 + t343) * t303;
	t322 = t227 * t265 - t244 * t370;
	t211 = t322 * t231;
	t324 = t229 * t318 + t230 * t253;
	t206 = t324 * t211 - t229 * t227 + t230 * t244;
	t222 = t220 * t221;
	t379 = t206 * t222;
	t380 = (-t248 * t379 + t255 * t376) / t219 ^ 2;
	t372 = t265 * t384;
	t378 = (-t227 * t370 + t246 * t372) / t235 ^ 2;
	t377 = t221 * t255;
	t375 = t229 * t255;
	t374 = t230 * t255;
	t371 = t253 * t265;
	t369 = t254 * t269;
	t368 = t254 * t279;
	t364 = t316 * t303;
	t361 = t286 * t300;
	t354 = t303 * t304;
	t347 = qJD(3) * t300;
	t346 = qJD(3) * t304;
	t344 = qJD(4) * t304;
	t342 = 0.2e1 * t380;
	t224 = -t255 * qJD(4) - t239 * t299 - t259 * t303;
	t247 = t254 ^ 2;
	t237 = t247 * t269 + 0.1e1;
	t341 = 0.2e1 * (t224 * t369 + t247 * t373) / t237 ^ 2;
	t340 = -0.2e1 * t378;
	t339 = t222 * t381;
	t338 = t265 * t378;
	t337 = t221 * t375;
	t336 = t221 * t374;
	t327 = t206 * t339;
	t326 = t372 * t382;
	t323 = -qJD(4) * t287 - t259 * t304;
	t321 = -t265 * t387 - t273 * t370;
	t256 = -t284 * t354 + t285 * t299;
	t280 = (t299 * t301 + t304 * t353) * t297;
	t320 = t256 * t265 - t280 * t370;
	t313 = -t229 + (t230 * t371 + t229) * t231;
	t240 = qJD(3) * t333 - t262 * t300 - t285 * t346 + t304 * t331;
	t271 = -t283 * qJD(3) - t300 * t328;
	t258 = -t286 * t354 + t287 * t299;
	t257 = t287 * t303 + t304 * t362;
	t245 = ((qJD(2) - t344) * t357 + (-t305 * t347 + (-qJD(2) * t304 + qJD(4)) * t301) * t303) * t297;
	t243 = t318 * qJD(4) - t272 * t299 + t303 * t329;
	t233 = 0.1e1 / t237;
	t228 = (t304 * t343 + t262) * t299 + (qJD(4) * t285 - t261 * t304 + t284 * t347) * t303;
	t217 = 0.1e1 / t219;
	t216 = t231 * t383;
	t215 = t320 * t231;
	t214 = t321 * t231;
	t210 = t313 * t255;
	t209 = (t229 * t317 + t230 * t282) * t303 + t324 * t216;
	t208 = t324 * t215 - t229 * t256 + t230 * t280;
	t207 = t324 * t214 + t229 * t387 + t230 * t273;
	t205 = t320 * t340 + (-t280 * t326 + t228 * t265 + (t227 * t280 + t244 * t256 - t245 * t253) * t266) * t231;
	t203 = t321 * t340 + (-t273 * t326 - t226 * t265 + (t227 * t273 - t243 * t253 - t244 * t387) * t266) * t231;
	t202 = t340 * t383 + (-t319 * t345 + (-t282 * t326 + t240 * t265 + (t227 * t282 - t244 * t317 - t253 * t271) * t266) * t303) * t231;
	t1 = [-t338 * t381 + (t225 * t265 + t255 * t384) * t231, t205, t202, t203, 0, 0; -0.2e1 * t253 * t220 * t380 + ((qJD(4) * t387 + t242 * t303 - t367) * t220 + (-t253 * t206 - t210 * t225) * t221) * t217 + (t210 * t221 * t342 + (0.2e1 * t210 * t379 - (-t211 * t231 * t371 + t340) * t337 - (-t338 * t382 - t211 + (t211 - t322) * t231) * t336 - t313 * t376) * t217) * t255, (t208 * t377 - t220 * t258) * t342 + (t208 * t327 + (-t258 * t206 - t208 * t225 - (t205 * t253 - t215 * t227 + t245 + (t215 * t318 - t256) * t211) * t374 - (t205 * t318 - t215 * t244 - t228 + (-t215 * t253 - t280) * t211) * t375) * t221 + ((t286 * t344 + t260) * t299 + (t286 * t347 - t323) * t303) * t220) * t217, (t209 * t377 - t220 * t364) * t342 + (-t209 * t376 + (-t238 * t303 - t316 * t345) * t220 + (t209 * t339 - t221 * t364) * t206 - (-t282 * t345 + t202 * t253 - t216 * t227 + t271 * t303 + (t216 * t318 + t303 * t317) * t211) * t336 - (-t317 * t345 + t202 * t318 - t216 * t244 - t240 * t303 + (-t216 * t253 - t282 * t303) * t211) * t337) * t217, (t207 * t377 - t220 * t254) * t342 + (t207 * t327 + t224 * t220 + (-t254 * t206 - t207 * t225 - (t203 * t253 - t214 * t227 + t243 + (t214 * t318 + t387) * t211) * t374 - (t203 * t318 - t214 * t244 + t226 + (-t214 * t253 - t273) * t211) * t375) * t221) * t217, 0, 0; (t268 * t387 - t317 * t369) * t341 + (-t226 * t268 + t317 * t385 + (t224 * t317 - t238 * t387 - t240 * t254) * t269) * t233, (t257 * t268 - t361 * t369) * t341 + (-(t260 * t303 + t323 * t299) * t268 + (-(-t299 * t347 + t303 * t344) * t268 + t300 * t385) * t286 + (t224 * t361 - t257 * t238 + (-t259 * t300 + t286 * t346) * t254) * t269) * t233, (-t268 * t299 * t316 + t269 * t368) * t341 + (qJD(4) * t268 * t364 + (-t224 * t279 - t239 * t254) * t269 + (-0.2e1 * t270 * t368 + (t269 * t316 - t268) * t299) * t238) * t233, -t255 * t268 * t341 + (t238 * t255 * t269 + t225 * t268) * t233, 0, 0;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end