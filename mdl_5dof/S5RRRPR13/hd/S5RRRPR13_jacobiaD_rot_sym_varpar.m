% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S5RRRPR13
% Use Code from Maple symbolic Code Generation
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
% 
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S5RRRPR13_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d3,d5]';
% 
% Output:
% JaD_rot [3x5]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 20:22
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S5RRRPR13_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR13_jacobiaD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR13_jacobiaD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRRPR13_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR13_jacobiaD_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 20:22:09
	% EndTime: 2019-12-29 20:22:09
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 20:21:58
	% EndTime: 2019-12-29 20:21:58
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 20:22:09
	% EndTime: 2019-12-29 20:22:10
	% DurationCPUTime: 0.59s
	% Computational Cost: add. (215->39), mult. (853->106), div. (126->12), fcn. (1047->9), ass. (0->54)
	t99 = sin(pkin(5));
	t93 = t99 ^ 2;
	t100 = cos(pkin(5));
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
	t1 = [(-t86 * t94 * t99 + t92 * t114) * t117, 0, 0, 0, 0; (0.2e1 * (-t104 * t67 + t63 * t124) / t66 ^ 2 * (-t62 * t69 * t97 + t117 * t124) * t93 + ((0.2e1 * t102 * t63 * t69 - t123) * t62 + (-t63 * t123 + (-t67 + (-t92 * t131 - t116) * t84 * t123 - (t93 ^ 2 * t98 * t114 + (-t126 + (0.2e1 * t97 - t98) * t86) * t125) * t68 * t85) * t102) * qJD(1)) / t66) * t99, 0, 0, 0, 0; 0.2e1 * (t78 * t127 + t77 * t80) * t130 + (-(-t82 * qJD(1) + t81 * qJD(2)) * t77 - 0.2e1 * t127 * t128 + (-t80 * t71 - (t113 * qJD(1) - t80 * qJD(2)) * t82 + t81 * t70) * t78) * t73, -0.2e1 * t130 + 0.2e1 * (-t73 * t129 + (t73 * t128 - t78 * t130) * t82) * t82, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 20:21:59
	% EndTime: 2019-12-29 20:22:00
	% DurationCPUTime: 1.57s
	% Computational Cost: add. (1479->91), mult. (4303->201), div. (668->14), fcn. (5516->11), ass. (0->91)
	t171 = sin(qJ(2));
	t172 = sin(qJ(1));
	t225 = cos(pkin(5));
	t195 = t172 * t225;
	t193 = t171 * t195;
	t174 = cos(qJ(2));
	t175 = cos(qJ(1));
	t209 = t175 * t174;
	t157 = -t193 + t209;
	t170 = sin(qJ(3));
	t173 = cos(qJ(3));
	t169 = sin(pkin(5));
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
	t122 = t127 * t152 + 0.1e1;
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
	t1 = [(-t183 * t166 * t202 + (-t133 * t166 - t183 * t196) * t148) * t164, t113, 0, 0, 0; t153 * t126 * t205 + (-t135 * t126 + (t114 * t153 + t117 * t133) * t127) * t120 - ((t117 * t204 - t226 * t219) * t120 + (t117 * t205 + ((t118 * t148 * t199 + t202) * t217 + (0.2e1 * t199 * t221 - t118 + (-t184 * t164 + t118) * t148) * t216) * t120) * t127) * t183, (-t126 * t157 - t127 * t223) * t205 + (-t204 * t223 + t134 * t126 + (-t157 * t114 + t115 * t133 + (t169 * t206 - t113 * t153 - t119 * t135 + (t119 * t212 + t182) * t118) * t216 + (t118 * t119 * t153 - t136 + (t113 * t174 + (-qJD(2) * t119 - t118) * t171) * t169) * t217) * t127) * t120, 0, 0, 0; (t138 * t186 - t142 * t218) * t203 + ((t142 * qJD(3) - t136 * t170 + t173 * t198) * t138 - 0.2e1 * t142 * t201 + (t186 * t125 + (t186 * qJD(3) - t136 * t173 - t170 * t198) * t185 - t142 * t124) * t139) * t130, -t189 * t183 * t203 + (t189 * t133 - ((-qJD(3) * t138 + 0.2e1 * t201) * t173 + (t124 * t173 + (t125 + t227) * t170) * t139) * t183) * t130, -0.2e1 * t222 - 0.2e1 * (t124 * t139 * t130 - (-t130 * t220 - t139 * t222) * t185) * t185, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 20:21:59
	% EndTime: 2019-12-29 20:22:01
	% DurationCPUTime: 2.54s
	% Computational Cost: add. (3640->122), mult. (11003->253), div. (691->12), fcn. (14028->11), ass. (0->105)
	t197 = cos(pkin(5));
	t200 = sin(qJ(1));
	t202 = cos(qJ(2));
	t258 = cos(qJ(1));
	t223 = t258 * qJD(2);
	t224 = t258 * qJD(1);
	t196 = sin(pkin(5));
	t229 = t196 * t258;
	t199 = sin(qJ(2));
	t242 = t200 * t199;
	t230 = t197 * t242;
	t240 = qJD(2) * t199;
	t263 = -qJD(1) * t230 - t200 * t240 + (t197 * t223 + t224) * t202 - qJD(3) * t229;
	t198 = sin(qJ(3));
	t201 = cos(qJ(3));
	t228 = t258 * t199;
	t241 = t200 * t202;
	t210 = -t197 * t228 - t241;
	t167 = -t198 * t210 + t201 * t229;
	t180 = t196 * t199 * t198 - t197 * t201;
	t156 = atan2(-t167, t180);
	t149 = sin(t156);
	t150 = cos(t156);
	t144 = -t149 * t167 + t150 * t180;
	t142 = 0.1e1 / t144 ^ 2;
	t227 = t258 * t202;
	t185 = t227 - t230;
	t244 = t196 * t201;
	t214 = -t185 * t198 + t200 * t244;
	t163 = t214 ^ 2;
	t140 = t163 * t142 + 0.1e1;
	t211 = -t197 * t241 - t228;
	t159 = t210 * qJD(1) + t211 * qJD(2);
	t245 = t196 * t200;
	t173 = t185 * t201 + t198 * t245;
	t219 = t196 * t224;
	t145 = t173 * qJD(3) + t159 * t198 - t201 * t219;
	t253 = t145 * t142;
	t162 = t167 ^ 2;
	t175 = 0.1e1 / t180 ^ 2;
	t155 = t162 * t175 + 0.1e1;
	t151 = 0.1e1 / t155;
	t226 = qJD(1) * t245;
	t239 = qJD(3) * t201;
	t147 = t263 * t198 - t201 * t226 - t210 * t239;
	t181 = t197 * t198 + t199 * t244;
	t243 = t196 * t202;
	t225 = qJD(2) * t243;
	t165 = t181 * qJD(3) + t198 * t225;
	t174 = 0.1e1 / t180;
	t248 = t167 * t175;
	t216 = -t147 * t174 + t165 * t248;
	t133 = t216 * t151;
	t217 = -t149 * t180 - t150 * t167;
	t129 = t217 * t133 - t149 * t147 + t150 * t165;
	t141 = 0.1e1 / t144;
	t143 = t141 * t142;
	t256 = t129 * t143;
	t238 = 0.2e1 * (-t163 * t256 - t214 * t253) / t140 ^ 2;
	t262 = t165 * t175;
	t220 = t197 * t227;
	t182 = t220 - t242;
	t212 = -t174 * t182 + t243 * t248;
	t261 = t198 * t212;
	t148 = (qJD(3) * t210 + t226) * t198 + t263 * t201;
	t177 = 0.1e1 / t211;
	t178 = 0.1e1 / t211 ^ 2;
	t260 = -0.2e1 * t167;
	t259 = -0.2e1 * t214;
	t250 = t174 * t262;
	t255 = (t147 * t248 - t162 * t250) / t155 ^ 2;
	t254 = t142 * t214;
	t252 = t149 * t214;
	t251 = t150 * t214;
	t249 = t167 * t174;
	t247 = t173 * t178;
	t246 = t211 * t198;
	t146 = t214 * qJD(3) + t159 * t201 + t198 * t219;
	t164 = t173 ^ 2;
	t157 = t164 * t178 + 0.1e1;
	t158 = -qJD(1) * t220 - t202 * t223 + (qJD(2) * t197 + qJD(1)) * t242;
	t179 = t177 * t178;
	t237 = 0.2e1 * (-t164 * t179 * t158 + t146 * t247) / t157 ^ 2;
	t236 = -0.2e1 * t255;
	t235 = t143 * t259;
	t234 = 0.2e1 * t173 * t179;
	t233 = t174 * t255;
	t232 = t142 * t252;
	t231 = t142 * t251;
	t222 = t250 * t260;
	t169 = -t198 * t229 - t201 * t210;
	t215 = -t169 * t174 + t181 * t248;
	t209 = -t149 + (t150 * t249 + t149) * t151;
	t166 = -t180 * qJD(3) + t201 * t225;
	t160 = t211 * qJD(1) + t210 * qJD(2);
	t153 = 0.1e1 / t157;
	t138 = 0.1e1 / t140;
	t137 = t151 * t261;
	t136 = t215 * t151;
	t132 = t209 * t214;
	t131 = (-t149 * t182 + t150 * t243) * t198 + t217 * t137;
	t130 = t217 * t136 - t149 * t169 + t150 * t181;
	t128 = t215 * t236 + (t181 * t222 - t148 * t174 + (t147 * t181 + t165 * t169 + t166 * t167) * t175) * t151;
	t126 = t236 * t261 + (t212 * t239 + (t222 * t243 - t160 * t174 + (t165 * t182 + (t147 * t202 - t167 * t240) * t196) * t175) * t198) * t151;
	t1 = [t233 * t259 + (-t145 * t174 - t214 * t262) * t151, t126, t128, 0, 0; t167 * t141 * t238 + (-t147 * t141 + (t129 * t167 + t132 * t145) * t142) * t138 - (-t132 * t142 * t238 + (-0.2e1 * t132 * t256 + (-t133 * t151 * t249 + t236) * t232 + (t233 * t260 - t133 + (t133 - t216) * t151) * t231 - t209 * t253) * t138) * t214, (-t131 * t254 - t141 * t246) * t238 + (-t131 * t253 + (t158 * t198 + t211 * t239) * t141 + (t131 * t235 - t142 * t246) * t129 + (-t126 * t167 - t137 * t147 + (-t198 * t240 + t202 * t239) * t196 + (-t137 * t180 - t182 * t198) * t133) * t231 + (-t182 * t239 - t126 * t180 - t137 * t165 - t160 * t198 + (t137 * t167 - t198 * t243) * t133) * t232) * t138, (-t130 * t254 - t141 * t173) * t238 + (t130 * t129 * t235 + t146 * t141 + (-t173 * t129 - t130 * t145 + (-t128 * t167 - t136 * t147 + t166 + (-t136 * t180 - t169) * t133) * t251 + (-t128 * t180 - t136 * t165 - t148 + (t136 * t167 - t181) * t133) * t252) * t142) * t138, 0, 0; (-t169 * t177 + t182 * t247) * t237 + (t148 * t177 + t182 * t158 * t234 + (-t182 * t146 - t158 * t169 - t160 * t173) * t178) * t153, (t177 * t201 * t211 + t185 * t247) * t237 + (qJD(3) * t177 * t246 + (-t146 * t185 - t159 * t173) * t178 + (t185 * t234 + (t178 * t211 - t177) * t201) * t158) * t153, t214 * t177 * t237 + (t158 * t178 * t214 + t145 * t177) * t153, 0, 0;];
	JaD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 20:22:10
	% EndTime: 2019-12-29 20:22:13
	% DurationCPUTime: 3.16s
	% Computational Cost: add. (4522->150), mult. (13478->299), div. (726->12), fcn. (17045->13), ass. (0->128)
	t258 = sin(qJ(1));
	t254 = cos(pkin(5));
	t279 = qJD(2) * t254 + qJD(1);
	t257 = sin(qJ(2));
	t305 = t258 * t257;
	t288 = t254 * t305;
	t299 = qJD(2) * t257;
	t261 = cos(qJ(2));
	t262 = cos(qJ(1));
	t301 = t262 * t261;
	t253 = sin(pkin(5));
	t308 = t253 * t262;
	t333 = -qJD(1) * t288 - qJD(3) * t308 - t258 * t299 + t279 * t301;
	t243 = -t288 + t301;
	t256 = sin(qJ(3));
	t260 = cos(qJ(3));
	t310 = t253 * t260;
	t231 = t243 * t256 - t258 * t310;
	t302 = t262 * t257;
	t304 = t258 * t261;
	t242 = t254 * t304 + t302;
	t255 = sin(qJ(5));
	t259 = cos(qJ(5));
	t275 = t231 * t259 - t242 * t255;
	t332 = t275 * qJD(5);
	t241 = t254 * t302 + t304;
	t306 = t256 * t262;
	t227 = t241 * t260 - t253 * t306;
	t239 = t254 * t256 + t257 * t310;
	t214 = atan2(-t227, t239);
	t209 = sin(t214);
	t210 = cos(t214);
	t192 = -t209 * t227 + t210 * t239;
	t190 = 0.1e1 / t192 ^ 2;
	t311 = t253 * t256;
	t232 = t243 * t260 + t258 * t311;
	t223 = t232 ^ 2;
	t188 = t190 * t223 + 0.1e1;
	t218 = -qJD(1) * t241 - qJD(2) * t242;
	t296 = qJD(3) * t260;
	t297 = qJD(3) * t256;
	t197 = t218 * t260 - t243 * t297 + (qJD(1) * t306 + t258 * t296) * t253;
	t321 = t197 * t190;
	t222 = t227 ^ 2;
	t236 = 0.1e1 / t239 ^ 2;
	t213 = t222 * t236 + 0.1e1;
	t211 = 0.1e1 / t213;
	t280 = t333 * t260;
	t300 = qJD(1) * t253;
	t286 = t258 * t300;
	t199 = -t241 * t297 + t256 * t286 + t280;
	t238 = t254 * t260 - t257 * t311;
	t298 = qJD(2) * t261;
	t284 = t253 * t298;
	t225 = qJD(3) * t238 + t260 * t284;
	t235 = 0.1e1 / t239;
	t315 = t227 * t236;
	t274 = -t199 * t235 + t225 * t315;
	t180 = t274 * t211;
	t277 = -t209 * t239 - t210 * t227;
	t175 = t180 * t277 - t209 * t199 + t210 * t225;
	t189 = 0.1e1 / t192;
	t191 = t189 * t190;
	t326 = t175 * t191;
	t295 = 0.2e1 * (-t223 * t326 + t232 * t321) / t188 ^ 2;
	t331 = t225 * t236;
	t287 = t254 * t301;
	t240 = t287 - t305;
	t309 = t253 * t261;
	t271 = -t235 * t240 + t309 * t315;
	t330 = t260 * t271;
	t313 = t242 * t259;
	t208 = t231 * t255 + t313;
	t202 = 0.1e1 / t208;
	t203 = 0.1e1 / t208 ^ 2;
	t329 = -0.2e1 * t227;
	t328 = 0.2e1 * t232;
	t285 = t260 * t300;
	t196 = qJD(3) * t232 + t218 * t256 - t262 * t285;
	t217 = -qJD(1) * t287 - t262 * t298 + t279 * t305;
	t184 = qJD(5) * t208 - t196 * t259 - t217 * t255;
	t201 = t275 ^ 2;
	t195 = t201 * t203 + 0.1e1;
	t320 = t203 * t275;
	t185 = t196 * t255 - t217 * t259 + t332;
	t323 = t185 * t202 * t203;
	t325 = (-t184 * t320 - t201 * t323) / t195 ^ 2;
	t317 = t235 * t331;
	t324 = (t199 * t315 - t222 * t317) / t213 ^ 2;
	t322 = t190 * t232;
	t319 = t209 * t232;
	t318 = t210 * t232;
	t316 = t227 * t235;
	t314 = t242 * t256;
	t312 = t242 * t260;
	t307 = t255 * t275;
	t303 = t259 * t202;
	t294 = 0.2e1 * t325;
	t293 = -0.2e1 * t324;
	t292 = t191 * t328;
	t291 = t235 * t324;
	t290 = t190 * t319;
	t289 = t190 * t318;
	t282 = -0.2e1 * t275 * t323;
	t281 = t317 * t329;
	t278 = -qJD(5) * t314 + t218;
	t226 = t241 * t256 + t260 * t308;
	t276 = -t226 * t259 - t240 * t255;
	t206 = -t226 * t255 + t240 * t259;
	t273 = -t203 * t307 + t303;
	t272 = t226 * t235 + t238 * t315;
	t270 = -t209 + (t210 * t316 + t209) * t211;
	t198 = t241 * t296 + t256 * t333 - t258 * t285;
	t269 = qJD(5) * t243 - t217 * t256 + t242 * t296;
	t224 = -qJD(3) * t239 - t256 * t284;
	t219 = -qJD(1) * t242 - qJD(2) * t241;
	t216 = t243 * t259 - t255 * t314;
	t215 = t243 * t255 + t256 * t313;
	t193 = 0.1e1 / t195;
	t186 = 0.1e1 / t188;
	t183 = t211 * t330;
	t182 = t272 * t211;
	t179 = t270 * t232;
	t177 = (-t209 * t240 + t210 * t309) * t260 + t277 * t183;
	t176 = t182 * t277 + t209 * t226 + t210 * t238;
	t174 = t272 * t293 + (t238 * t281 + t198 * t235 + (t199 * t238 + t224 * t227 - t225 * t226) * t236) * t211;
	t172 = t293 * t330 + (-t271 * t297 + (t281 * t309 - t219 * t235 + (t225 * t240 + (t199 * t261 - t227 * t299) * t253) * t236) * t260) * t211;
	t1 = [t291 * t328 + (-t197 * t235 + t232 * t331) * t211, t172, t174, 0, 0; t227 * t189 * t295 + (((qJD(3) * t241 - t286) * t256 - t280) * t189 + (t175 * t227 - t179 * t197) * t190) * t186 + (t179 * t190 * t295 + (0.2e1 * t179 * t326 - (-t180 * t211 * t316 + t293) * t290 - (t291 * t329 - t180 + (t180 - t274) * t211) * t289 - t270 * t321) * t186) * t232, (t177 * t322 + t189 * t312) * t295 + (-t177 * t321 + (t217 * t260 + t242 * t297) * t189 + (t177 * t292 + t190 * t312) * t175 - (-t172 * t227 - t183 * t199 + (-t260 * t299 - t261 * t297) * t253 + (-t183 * t239 - t240 * t260) * t180) * t289 - (t240 * t297 - t172 * t239 - t183 * t225 - t219 * t260 + (t183 * t227 - t260 * t309) * t180) * t290) * t186, (t176 * t322 + t189 * t231) * t295 + (t176 * t175 * t292 - t196 * t189 + (t231 * t175 - t176 * t197 - (-t174 * t227 - t182 * t199 + t224 + (-t182 * t239 + t226) * t180) * t318 - (-t174 * t239 - t182 * t225 + t198 + (t182 * t227 - t238) * t180) * t319) * t190) * t186, 0, 0; (t202 * t276 - t206 * t320) * t294 + ((qJD(5) * t206 + t198 * t259 + t219 * t255) * t202 + t206 * t282 + (t276 * t185 + (qJD(5) * t276 - t198 * t255 + t219 * t259) * t275 - t206 * t184) * t203) * t193, (-t202 * t215 - t216 * t320) * t294 + (t216 * t282 + t278 * t202 * t255 + t269 * t303 + (t259 * t275 * t278 - t216 * t184 - t215 * t185 - t269 * t307) * t203) * t193, t273 * t232 * t294 + (-t273 * t197 + ((qJD(5) * t202 + t282) * t255 + (-t184 * t255 + (t185 + t332) * t259) * t203) * t232) * t193, 0, -0.2e1 * t325 - 0.2e1 * (t184 * t203 * t193 - (-t193 * t323 - t203 * t325) * t275) * t275;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,5);
end