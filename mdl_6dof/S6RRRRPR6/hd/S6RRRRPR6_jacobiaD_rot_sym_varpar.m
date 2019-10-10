% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRPR6
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
%   Wie in S6RRRRPR6_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:40
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6RRRRPR6_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR6_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR6_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRPR6_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR6_jacobiaD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:40:25
	% EndTime: 2019-10-10 12:40:25
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:40:25
	% EndTime: 2019-10-10 12:40:25
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:40:25
	% EndTime: 2019-10-10 12:40:25
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:40:25
	% EndTime: 2019-10-10 12:40:26
	% DurationCPUTime: 1.04s
	% Computational Cost: add. (1002->94), mult. (2519->211), div. (480->12), fcn. (2968->9), ass. (0->92)
	t126 = sin(qJ(1));
	t119 = t126 ^ 2;
	t125 = sin(qJ(2));
	t118 = t125 ^ 2;
	t128 = cos(qJ(2));
	t121 = 0.1e1 / t128 ^ 2;
	t173 = t118 * t121;
	t113 = t119 * t173 + 0.1e1;
	t117 = t125 * t118;
	t120 = 0.1e1 / t128;
	t172 = t120 * t125;
	t137 = qJD(2) * (t117 * t120 * t121 + t172);
	t129 = cos(qJ(1));
	t163 = qJD(1) * t129;
	t151 = t126 * t163;
	t181 = 0.1e1 / t113 ^ 2 * (t119 * t137 + t151 * t173);
	t193 = -0.2e1 * t181;
	t111 = 0.1e1 / t113;
	t146 = 0.1e1 + t173;
	t190 = t126 * t146;
	t98 = t111 * t190;
	t192 = t126 * t98 - 0.1e1;
	t124 = sin(qJ(3));
	t127 = cos(qJ(3));
	t165 = t129 * t127;
	t107 = t126 * t124 + t128 * t165;
	t102 = 0.1e1 / t107 ^ 2;
	t166 = t129 * t124;
	t168 = t126 * t127;
	t106 = t128 * t166 - t168;
	t175 = t106 * t127;
	t101 = 0.1e1 / t107;
	t177 = t101 * t124;
	t139 = t102 * t175 - t177;
	t100 = t106 ^ 2;
	t99 = t100 * t102 + 0.1e1;
	t96 = 0.1e1 / t99;
	t191 = t139 * t96;
	t169 = t126 * t125;
	t110 = atan2(-t169, -t128);
	t109 = cos(t110);
	t108 = sin(t110);
	t154 = t108 * t169;
	t94 = -t109 * t128 - t154;
	t91 = 0.1e1 / t94;
	t92 = 0.1e1 / t94 ^ 2;
	t189 = t111 - 0.1e1;
	t123 = t129 ^ 2;
	t161 = qJD(2) * t128;
	t155 = t92 * t161;
	t150 = t125 * t163;
	t162 = qJD(2) * t126;
	t174 = t109 * t125;
	t149 = t121 * t162;
	t85 = (-(-t126 * t161 - t150) * t120 + t118 * t149) * t111;
	t80 = (-t126 * t85 + qJD(2)) * t174 + (-t150 + (t85 - t162) * t128) * t108;
	t187 = t80 * t91 * t92;
	t90 = t123 * t118 * t92 + 0.1e1;
	t188 = (t123 * t125 * t155 + (-t123 * t187 - t92 * t151) * t118) / t90 ^ 2;
	t176 = t102 * t106;
	t143 = -qJD(1) * t128 + qJD(3);
	t144 = qJD(3) * t128 - qJD(1);
	t160 = qJD(2) * t129;
	t148 = t125 * t160;
	t87 = -t144 * t166 + (t143 * t126 - t148) * t127;
	t183 = t101 * t102 * t87;
	t167 = t126 * t128;
	t138 = t124 * t167 + t165;
	t86 = t138 * qJD(1) - t107 * qJD(3) + t124 * t148;
	t186 = (-t100 * t183 - t86 * t176) / t99 ^ 2;
	t88 = 0.1e1 / t90;
	t185 = t88 * t92;
	t184 = t91 * t88;
	t179 = t129 * t92;
	t178 = qJD(2) * t98;
	t171 = t125 * t129;
	t164 = qJD(1) * t126;
	t159 = 0.2e1 * t187;
	t158 = -0.2e1 * t186;
	t157 = t91 * t188;
	t156 = t106 * t183;
	t153 = t111 * t118 * t120;
	t147 = 0.2e1 * t92 * t188;
	t145 = t120 * t193;
	t142 = t126 * t153;
	t141 = t146 * t129;
	t140 = t143 * t129;
	t105 = -t127 * t167 + t166;
	t84 = (t189 * t125 * t108 - t109 * t142) * t129;
	t83 = -t192 * t174 + (-t126 + t98) * t128 * t108;
	t81 = t190 * t193 + (qJD(1) * t141 + 0.2e1 * t126 * t137) * t111;
	t1 = [t145 * t171 + (qJD(2) * t141 - t164 * t172) * t111, t81, 0, 0, 0, 0; (-t161 * t184 + (0.2e1 * t157 + (qJD(1) * t84 + t80) * t185) * t125) * t126 + (t84 * t147 * t125 + (-t84 * t155 + (t84 * t159 + ((0.2e1 * t125 * t181 - t85 * t142 - t189 * t161) * t108 + (t118 * t126 * t145 + t125 * t85 + (t117 * t149 - (t85 - 0.2e1 * t162) * t125) * t111) * t109) * t179) * t125 + (-t91 + (-(t119 - t123) * t109 * t153 + t189 * t154) * t92) * t125 * qJD(1)) * t88) * t129, (-t164 * t184 + (-0.2e1 * t157 + (-qJD(2) * t83 - t80) * t185) * t129) * t128 + (t83 * t129 * t147 + (-t91 * t160 - ((-t126 * t81 - t163 * t98) * t109 + (t192 * t85 + t162 - t178) * t108) * t92 * t171 + (t129 * t159 + t92 * t164) * t83 - ((t81 - t163) * t108 + (t85 * t98 + qJD(2) + (-t85 - t178) * t126) * t109) * t128 * t179) * t88) * t125, 0, 0, 0, 0; 0.2e1 * (t101 * t138 + t105 * t176) * t186 + (0.2e1 * t105 * t156 - t144 * t101 * t168 + (t125 * t162 + t140) * t177 + (t138 * t87 + t105 * t86 - t140 * t175 - (qJD(2) * t125 * t127 + t144 * t124) * t106 * t126) * t102) * t96, t128 * t160 * t191 + (-t164 * t191 + (t139 * t158 + ((-qJD(3) * t101 - 0.2e1 * t156) * t127 + (-t127 * t86 + (-qJD(3) * t106 + t87) * t124) * t102) * t96) * t129) * t125, t158 + 0.2e1 * (-t86 * t102 * t96 + (-t102 * t186 - t96 * t183) * t106) * t106, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:40:25
	% EndTime: 2019-10-10 12:40:26
	% DurationCPUTime: 1.08s
	% Computational Cost: add. (1570->96), mult. (2734->204), div. (498->12), fcn. (3199->9), ass. (0->95)
	t152 = sin(qJ(2));
	t145 = t152 ^ 2;
	t154 = cos(qJ(2));
	t148 = 0.1e1 / t154 ^ 2;
	t199 = t145 * t148;
	t153 = sin(qJ(1));
	t217 = 0.2e1 * t153;
	t216 = t152 * t199;
	t151 = qJ(3) + qJ(4);
	t142 = cos(t151);
	t155 = cos(qJ(1));
	t191 = t154 * t155;
	t141 = sin(t151);
	t195 = t153 * t141;
	t131 = t142 * t191 + t195;
	t193 = t153 * t152;
	t135 = atan2(-t193, -t154);
	t134 = cos(t135);
	t133 = sin(t135);
	t180 = t133 * t193;
	t121 = -t134 * t154 - t180;
	t118 = 0.1e1 / t121;
	t125 = 0.1e1 / t131;
	t147 = 0.1e1 / t154;
	t119 = 0.1e1 / t121 ^ 2;
	t126 = 0.1e1 / t131 ^ 2;
	t215 = -0.2e1 * t152;
	t146 = t153 ^ 2;
	t139 = t146 * t199 + 0.1e1;
	t137 = 0.1e1 / t139;
	t214 = t137 - 0.1e1;
	t143 = qJD(3) + qJD(4);
	t192 = t153 * t154;
	t165 = t141 * t192 + t142 * t155;
	t186 = qJD(2) * t155;
	t176 = t152 * t186;
	t109 = t165 * qJD(1) - t131 * t143 + t141 * t176;
	t194 = t153 * t142;
	t130 = t141 * t191 - t194;
	t124 = t130 ^ 2;
	t117 = t124 * t126 + 0.1e1;
	t204 = t126 * t130;
	t170 = -qJD(1) * t154 + t143;
	t171 = t143 * t154 - qJD(1);
	t201 = t141 * t155;
	t110 = -t171 * t201 + (t170 * t153 - t176) * t142;
	t211 = t110 * t125 * t126;
	t213 = (-t109 * t204 - t124 * t211) / t117 ^ 2;
	t189 = qJD(1) * t155;
	t177 = t152 * t189;
	t187 = qJD(2) * t154;
	t188 = qJD(2) * t153;
	t111 = (-(-t153 * t187 - t177) * t147 + t188 * t199) * t137;
	t202 = t134 * t152;
	t105 = (-t111 * t153 + qJD(2)) * t202 + (-t177 + (t111 - t188) * t154) * t133;
	t212 = t105 * t118 * t119;
	t210 = t111 * t133;
	t209 = t111 * t152;
	t208 = t119 * t152;
	t197 = t147 * t152;
	t164 = qJD(2) * (t147 * t216 + t197);
	t168 = t145 * t153 * t189;
	t207 = (t146 * t164 + t148 * t168) / t139 ^ 2;
	t175 = 0.1e1 + t199;
	t123 = t175 * t153 * t137;
	t206 = t123 * t153;
	t205 = t125 * t141;
	t203 = t130 * t142;
	t200 = t145 * t147;
	t150 = t155 ^ 2;
	t198 = t145 * t150;
	t196 = t152 * t155;
	t190 = qJD(1) * t153;
	t114 = t119 * t198 + 0.1e1;
	t185 = 0.2e1 * (-t198 * t212 + (t150 * t152 * t187 - t168) * t119) / t114 ^ 2;
	t184 = -0.2e1 * t213;
	t183 = 0.2e1 * t212;
	t182 = t130 * t211;
	t181 = t119 * t196;
	t179 = t137 * t200;
	t174 = t152 * t185;
	t173 = t207 * t215;
	t172 = t207 * t217;
	t169 = t153 * t179;
	t167 = t175 * t155;
	t166 = t126 * t203 - t205;
	t163 = t152 * t188 + t170 * t155;
	t129 = -t142 * t192 + t201;
	t115 = 0.1e1 / t117;
	t112 = 0.1e1 / t114;
	t108 = (t214 * t152 * t133 - t134 * t169) * t155;
	t107 = -t133 * t192 + t202 + (t133 * t154 - t134 * t193) * t123;
	t106 = -t175 * t172 + (qJD(1) * t167 + t164 * t217) * t137;
	t102 = t184 + 0.2e1 * (-t109 * t115 * t126 + (-t115 * t211 - t126 * t213) * t130) * t130;
	t1 = [t147 * t155 * t173 + (qJD(2) * t167 - t190 * t197) * t137, t106, 0, 0, 0, 0; (t118 * t174 + (-t118 * t187 + (qJD(1) * t108 + t105) * t208) * t112) * t153 + (t119 * t174 * t108 + (-((t111 * t169 + t214 * t187 + t173) * t133 + (t172 * t200 - t209 + (t209 + (t215 - t216) * t188) * t137) * t134) * t181 + (-t119 * t187 + t152 * t183) * t108 + (-t118 + ((-t146 + t150) * t134 * t179 + t214 * t180) * t119) * t152 * qJD(1)) * t112) * t155, (t107 * t208 - t118 * t154) * t155 * t185 + ((-t118 * t190 + (-qJD(2) * t107 - t105) * t155 * t119) * t154 + (-t118 * t186 - (-t106 * t134 * t153 + t133 * t188 + t206 * t210 - t210 + (-qJD(2) * t133 - t134 * t189) * t123) * t181 + (t119 * t190 + t155 * t183) * t107 - ((t106 - t189) * t133 + ((0.1e1 - t206) * qJD(2) + (t123 - t153) * t111) * t134) * t119 * t191) * t152) * t112, 0, 0, 0, 0; 0.2e1 * (t125 * t165 + t129 * t204) * t213 + (0.2e1 * t129 * t182 - t171 * t125 * t194 + t163 * t205 + (-t171 * t130 * t195 + t129 * t109 + t110 * t165 - t163 * t203) * t126) * t115, t166 * t184 * t196 + (t166 * t154 * t186 + (-t166 * t190 + ((-t125 * t143 - 0.2e1 * t182) * t142 + (-t109 * t142 + (-t130 * t143 + t110) * t141) * t126) * t155) * t152) * t115, t102, t102, 0, 0;];
	JaD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:40:25
	% EndTime: 2019-10-10 12:40:26
	% DurationCPUTime: 1.09s
	% Computational Cost: add. (2009->96), mult. (2734->204), div. (498->12), fcn. (3199->9), ass. (0->95)
	t159 = sin(qJ(2));
	t153 = t159 ^ 2;
	t161 = cos(qJ(2));
	t156 = 0.1e1 / t161 ^ 2;
	t206 = t153 * t156;
	t160 = sin(qJ(1));
	t224 = 0.2e1 * t160;
	t223 = t159 * t206;
	t150 = qJ(3) + qJ(4) + pkin(11);
	t149 = cos(t150);
	t162 = cos(qJ(1));
	t198 = t161 * t162;
	t148 = sin(t150);
	t202 = t160 * t148;
	t138 = t149 * t198 + t202;
	t200 = t160 * t159;
	t143 = atan2(-t200, -t161);
	t141 = cos(t143);
	t140 = sin(t143);
	t187 = t140 * t200;
	t128 = -t141 * t161 - t187;
	t125 = 0.1e1 / t128;
	t132 = 0.1e1 / t138;
	t155 = 0.1e1 / t161;
	t126 = 0.1e1 / t128 ^ 2;
	t133 = 0.1e1 / t138 ^ 2;
	t222 = -0.2e1 * t159;
	t154 = t160 ^ 2;
	t146 = t154 * t206 + 0.1e1;
	t144 = 0.1e1 / t146;
	t221 = t144 - 0.1e1;
	t151 = qJD(3) + qJD(4);
	t199 = t160 * t161;
	t172 = t148 * t199 + t149 * t162;
	t193 = qJD(2) * t162;
	t183 = t159 * t193;
	t116 = t172 * qJD(1) - t138 * t151 + t148 * t183;
	t201 = t160 * t149;
	t137 = t148 * t198 - t201;
	t131 = t137 ^ 2;
	t121 = t131 * t133 + 0.1e1;
	t211 = t133 * t137;
	t177 = -qJD(1) * t161 + t151;
	t178 = t151 * t161 - qJD(1);
	t208 = t148 * t162;
	t117 = -t178 * t208 + (t177 * t160 - t183) * t149;
	t218 = t117 * t132 * t133;
	t220 = (-t116 * t211 - t131 * t218) / t121 ^ 2;
	t196 = qJD(1) * t162;
	t184 = t159 * t196;
	t194 = qJD(2) * t161;
	t195 = qJD(2) * t160;
	t118 = (-(-t160 * t194 - t184) * t155 + t195 * t206) * t144;
	t209 = t141 * t159;
	t112 = (-t118 * t160 + qJD(2)) * t209 + (-t184 + (t118 - t195) * t161) * t140;
	t219 = t112 * t125 * t126;
	t217 = t118 * t140;
	t216 = t118 * t159;
	t215 = t126 * t159;
	t204 = t155 * t159;
	t171 = qJD(2) * (t155 * t223 + t204);
	t175 = t153 * t160 * t196;
	t214 = (t154 * t171 + t156 * t175) / t146 ^ 2;
	t182 = 0.1e1 + t206;
	t130 = t182 * t160 * t144;
	t213 = t130 * t160;
	t212 = t132 * t148;
	t210 = t137 * t149;
	t207 = t153 * t155;
	t158 = t162 ^ 2;
	t205 = t153 * t158;
	t203 = t159 * t162;
	t197 = qJD(1) * t160;
	t124 = t126 * t205 + 0.1e1;
	t192 = 0.2e1 * (-t205 * t219 + (t158 * t159 * t194 - t175) * t126) / t124 ^ 2;
	t191 = -0.2e1 * t220;
	t190 = 0.2e1 * t219;
	t189 = t137 * t218;
	t188 = t126 * t203;
	t186 = t144 * t207;
	t181 = t159 * t192;
	t180 = t214 * t222;
	t179 = t214 * t224;
	t176 = t160 * t186;
	t174 = t182 * t162;
	t173 = t133 * t210 - t212;
	t170 = t159 * t195 + t177 * t162;
	t136 = -t149 * t199 + t208;
	t122 = 0.1e1 / t124;
	t119 = 0.1e1 / t121;
	t115 = (t221 * t159 * t140 - t141 * t176) * t162;
	t114 = -t140 * t199 + t209 + (t140 * t161 - t141 * t200) * t130;
	t113 = -t182 * t179 + (qJD(1) * t174 + t171 * t224) * t144;
	t109 = t191 + 0.2e1 * (-t116 * t119 * t133 + (-t119 * t218 - t133 * t220) * t137) * t137;
	t1 = [t155 * t162 * t180 + (qJD(2) * t174 - t197 * t204) * t144, t113, 0, 0, 0, 0; (t125 * t181 + (-t125 * t194 + (qJD(1) * t115 + t112) * t215) * t122) * t160 + (t126 * t181 * t115 + (-((t118 * t176 + t221 * t194 + t180) * t140 + (t179 * t207 - t216 + (t216 + (t222 - t223) * t195) * t144) * t141) * t188 + (-t126 * t194 + t159 * t190) * t115 + (-t125 + ((-t154 + t158) * t141 * t186 + t221 * t187) * t126) * t159 * qJD(1)) * t122) * t162, (t114 * t215 - t125 * t161) * t162 * t192 + ((-t125 * t197 + (-qJD(2) * t114 - t112) * t162 * t126) * t161 + (-t125 * t193 - (-t113 * t141 * t160 + t140 * t195 + t213 * t217 - t217 + (-qJD(2) * t140 - t141 * t196) * t130) * t188 + (t126 * t197 + t162 * t190) * t114 - ((t113 - t196) * t140 + ((0.1e1 - t213) * qJD(2) + (t130 - t160) * t118) * t141) * t126 * t198) * t159) * t122, 0, 0, 0, 0; 0.2e1 * (t132 * t172 + t136 * t211) * t220 + (0.2e1 * t136 * t189 - t178 * t132 * t201 + t170 * t212 + (-t178 * t137 * t202 + t136 * t116 + t117 * t172 - t170 * t210) * t133) * t119, t173 * t191 * t203 + (t173 * t161 * t193 + (-t173 * t197 + ((-t132 * t151 - 0.2e1 * t189) * t149 + (-t116 * t149 + (-t137 * t151 + t117) * t148) * t133) * t162) * t159) * t119, t109, t109, 0, 0;];
	JaD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:40:25
	% EndTime: 2019-10-10 12:40:26
	% DurationCPUTime: 1.08s
	% Computational Cost: add. (2878->96), mult. (2949->204), div. (516->12), fcn. (3430->9), ass. (0->95)
	t162 = sin(qJ(2));
	t156 = t162 ^ 2;
	t164 = cos(qJ(2));
	t159 = 0.1e1 / t164 ^ 2;
	t209 = t156 * t159;
	t163 = sin(qJ(1));
	t227 = 0.2e1 * t163;
	t226 = t162 * t209;
	t153 = qJ(3) + qJ(4) + pkin(11) + qJ(6);
	t152 = cos(t153);
	t165 = cos(qJ(1));
	t201 = t164 * t165;
	t151 = sin(t153);
	t205 = t163 * t151;
	t141 = t152 * t201 + t205;
	t203 = t163 * t162;
	t146 = atan2(-t203, -t164);
	t145 = cos(t146);
	t144 = sin(t146);
	t190 = t144 * t203;
	t131 = -t145 * t164 - t190;
	t128 = 0.1e1 / t131;
	t135 = 0.1e1 / t141;
	t158 = 0.1e1 / t164;
	t129 = 0.1e1 / t131 ^ 2;
	t136 = 0.1e1 / t141 ^ 2;
	t225 = -0.2e1 * t162;
	t157 = t163 ^ 2;
	t150 = t157 * t209 + 0.1e1;
	t148 = 0.1e1 / t150;
	t224 = t148 - 0.1e1;
	t154 = qJD(3) + qJD(4) + qJD(6);
	t202 = t163 * t164;
	t175 = t151 * t202 + t152 * t165;
	t196 = qJD(2) * t165;
	t186 = t162 * t196;
	t119 = t175 * qJD(1) - t141 * t154 + t151 * t186;
	t204 = t163 * t152;
	t140 = t151 * t201 - t204;
	t134 = t140 ^ 2;
	t123 = t134 * t136 + 0.1e1;
	t214 = t136 * t140;
	t180 = -qJD(1) * t164 + t154;
	t181 = t154 * t164 - qJD(1);
	t211 = t151 * t165;
	t120 = -t181 * t211 + (t180 * t163 - t186) * t152;
	t221 = t120 * t135 * t136;
	t223 = (-t119 * t214 - t134 * t221) / t123 ^ 2;
	t199 = qJD(1) * t165;
	t187 = t162 * t199;
	t197 = qJD(2) * t164;
	t198 = qJD(2) * t163;
	t124 = (-(-t163 * t197 - t187) * t158 + t198 * t209) * t148;
	t212 = t145 * t162;
	t115 = (-t124 * t163 + qJD(2)) * t212 + (-t187 + (t124 - t198) * t164) * t144;
	t222 = t115 * t128 * t129;
	t220 = t124 * t144;
	t219 = t124 * t162;
	t218 = t129 * t162;
	t207 = t158 * t162;
	t174 = qJD(2) * (t158 * t226 + t207);
	t178 = t156 * t163 * t199;
	t217 = (t157 * t174 + t159 * t178) / t150 ^ 2;
	t185 = 0.1e1 + t209;
	t133 = t185 * t163 * t148;
	t216 = t133 * t163;
	t215 = t135 * t151;
	t213 = t140 * t152;
	t210 = t156 * t158;
	t161 = t165 ^ 2;
	t208 = t156 * t161;
	t206 = t162 * t165;
	t200 = qJD(1) * t163;
	t127 = t129 * t208 + 0.1e1;
	t195 = 0.2e1 * (-t208 * t222 + (t161 * t162 * t197 - t178) * t129) / t127 ^ 2;
	t194 = -0.2e1 * t223;
	t193 = 0.2e1 * t222;
	t192 = t140 * t221;
	t191 = t129 * t206;
	t189 = t148 * t210;
	t184 = t162 * t195;
	t183 = t217 * t225;
	t182 = t217 * t227;
	t179 = t163 * t189;
	t177 = t185 * t165;
	t176 = t136 * t213 - t215;
	t173 = t162 * t198 + t180 * t165;
	t139 = -t152 * t202 + t211;
	t125 = 0.1e1 / t127;
	t121 = 0.1e1 / t123;
	t118 = (t224 * t162 * t144 - t145 * t179) * t165;
	t117 = -t144 * t202 + t212 + (t144 * t164 - t145 * t203) * t133;
	t116 = -t185 * t182 + (qJD(1) * t177 + t174 * t227) * t148;
	t112 = t194 + 0.2e1 * (-t119 * t121 * t136 + (-t121 * t221 - t136 * t223) * t140) * t140;
	t1 = [t158 * t165 * t183 + (qJD(2) * t177 - t200 * t207) * t148, t116, 0, 0, 0, 0; (t128 * t184 + (-t128 * t197 + (qJD(1) * t118 + t115) * t218) * t125) * t163 + (t129 * t184 * t118 + (-((t124 * t179 + t224 * t197 + t183) * t144 + (t182 * t210 - t219 + (t219 + (t225 - t226) * t198) * t148) * t145) * t191 + (-t129 * t197 + t162 * t193) * t118 + (-t128 + ((-t157 + t161) * t145 * t189 + t224 * t190) * t129) * t162 * qJD(1)) * t125) * t165, (t117 * t218 - t128 * t164) * t165 * t195 + ((-t128 * t200 + (-qJD(2) * t117 - t115) * t165 * t129) * t164 + (-t128 * t196 - (-t116 * t145 * t163 + t144 * t198 + t216 * t220 - t220 + (-qJD(2) * t144 - t145 * t199) * t133) * t191 + (t129 * t200 + t165 * t193) * t117 - ((t116 - t199) * t144 + ((0.1e1 - t216) * qJD(2) + (t133 - t163) * t124) * t145) * t129 * t201) * t162) * t125, 0, 0, 0, 0; 0.2e1 * (t135 * t175 + t139 * t214) * t223 + (0.2e1 * t139 * t192 - t181 * t135 * t204 + t173 * t215 + (-t181 * t140 * t205 + t139 * t119 + t120 * t175 - t173 * t213) * t136) * t121, t176 * t194 * t206 + (t176 * t164 * t196 + (-t176 * t200 + ((-t135 * t154 - 0.2e1 * t192) * t152 + (-t119 * t152 + (-t140 * t154 + t120) * t151) * t136) * t165) * t162) * t121, t112, t112, 0, t112;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end