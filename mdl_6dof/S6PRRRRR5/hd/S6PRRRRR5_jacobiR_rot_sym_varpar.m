% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6PRRRRR5
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d5,d6,theta1]';
% 
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 23:21
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6PRRRRR5_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRR5_jacobiR_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRRRRR5_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PRRRRR5_jacobiR_rot_sym_varpar: pkin has to be [13x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:28
	% EndTime: 2019-10-09 23:21:28
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:28
	% EndTime: 2019-10-09 23:21:28
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiR_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:28
	% EndTime: 2019-10-09 23:21:28
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (5->5), mult. (14->12), div. (0->0), fcn. (24->6), ass. (0->9)
	t22 = cos(pkin(6));
	t23 = sin(qJ(2));
	t26 = t22 * t23;
	t24 = cos(qJ(2));
	t25 = t22 * t24;
	t21 = cos(pkin(13));
	t20 = sin(pkin(6));
	t19 = sin(pkin(13));
	t1 = [0, -t19 * t25 - t21 * t23, 0, 0, 0, 0; 0, -t19 * t23 + t21 * t25, 0, 0, 0, 0; 0, t20 * t24, 0, 0, 0, 0; 0, t19 * t26 - t21 * t24, 0, 0, 0, 0; 0, -t19 * t24 - t21 * t26, 0, 0, 0, 0; 0, -t20 * t23, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:28
	% EndTime: 2019-10-09 23:21:29
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (38->20), mult. (118->51), div. (0->0), fcn. (169->10), ass. (0->27)
	t81 = sin(pkin(7));
	t82 = sin(pkin(6));
	t101 = t81 * t82;
	t85 = cos(pkin(6));
	t100 = t81 * t85;
	t84 = cos(pkin(7));
	t86 = sin(qJ(3));
	t99 = t84 * t86;
	t88 = cos(qJ(3));
	t98 = t84 * t88;
	t87 = sin(qJ(2));
	t97 = t85 * t87;
	t89 = cos(qJ(2));
	t96 = t85 * t89;
	t95 = t86 * t87;
	t94 = t86 * t89;
	t93 = t87 * t88;
	t92 = t88 * t89;
	t80 = sin(pkin(13));
	t83 = cos(pkin(13));
	t75 = -t80 * t87 + t83 * t96;
	t91 = t83 * t101 - t75 * t84;
	t77 = -t80 * t96 - t83 * t87;
	t90 = t80 * t101 + t77 * t84;
	t78 = -t80 * t97 + t83 * t89;
	t76 = t80 * t89 + t83 * t97;
	t1 = [0, t77 * t88 - t78 * t99, -t78 * t86 + t90 * t88, 0, 0, 0; 0, t75 * t88 - t76 * t99, -t76 * t86 - t91 * t88, 0, 0, 0; 0, (-t84 * t95 + t92) * t82, t88 * t100 + (t84 * t92 - t95) * t82, 0, 0, 0; 0, -t77 * t86 - t78 * t98, -t78 * t88 - t90 * t86, 0, 0, 0; 0, -t75 * t86 - t76 * t98, -t76 * t88 + t91 * t86, 0, 0, 0; 0, (-t84 * t93 - t94) * t82, -t86 * t100 + (-t84 * t94 - t93) * t82, 0, 0, 0; 0, t78 * t81, 0, 0, 0, 0; 0, t76 * t81, 0, 0, 0, 0; 0, t87 * t101, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:29
	% EndTime: 2019-10-09 23:21:29
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (100->38), mult. (304->88), div. (0->0), fcn. (425->12), ass. (0->45)
	t152 = sin(pkin(7));
	t153 = sin(pkin(6));
	t178 = t152 * t153;
	t156 = cos(pkin(6));
	t177 = t152 * t156;
	t157 = sin(qJ(4));
	t176 = t152 * t157;
	t160 = cos(qJ(4));
	t175 = t152 * t160;
	t155 = cos(pkin(7));
	t174 = t153 * t155;
	t158 = sin(qJ(3));
	t173 = t155 * t158;
	t161 = cos(qJ(3));
	t172 = t155 * t161;
	t159 = sin(qJ(2));
	t171 = t156 * t159;
	t162 = cos(qJ(2));
	t170 = t156 * t162;
	t169 = t158 * t159;
	t168 = t158 * t162;
	t167 = t159 * t161;
	t166 = t161 * t162;
	t165 = t159 * t178;
	t151 = sin(pkin(13));
	t154 = cos(pkin(13));
	t146 = -t151 * t159 + t154 * t170;
	t164 = t146 * t155 - t154 * t178;
	t148 = -t151 * t170 - t154 * t159;
	t163 = t148 * t155 + t151 * t178;
	t149 = -t151 * t171 + t154 * t162;
	t147 = t151 * t162 + t154 * t171;
	t145 = t156 * t155 - t162 * t178;
	t144 = (-t155 * t169 + t166) * t153;
	t143 = -t148 * t152 + t151 * t174;
	t142 = -t146 * t152 - t154 * t174;
	t141 = t158 * t177 + (t155 * t168 + t167) * t153;
	t140 = t161 * t177 + (t155 * t166 - t169) * t153;
	t139 = t148 * t161 - t149 * t173;
	t138 = t146 * t161 - t147 * t173;
	t137 = t149 * t161 + t163 * t158;
	t136 = -t149 * t158 + t163 * t161;
	t135 = t147 * t161 + t164 * t158;
	t134 = -t147 * t158 + t164 * t161;
	t1 = [0, t139 * t160 + t149 * t176, t136 * t160, -t137 * t157 + t143 * t160, 0, 0; 0, t138 * t160 + t147 * t176, t134 * t160, -t135 * t157 + t142 * t160, 0, 0; 0, t144 * t160 + t157 * t165, t140 * t160, -t141 * t157 + t145 * t160, 0, 0; 0, -t139 * t157 + t149 * t175, -t136 * t157, -t137 * t160 - t143 * t157, 0, 0; 0, -t138 * t157 + t147 * t175, -t134 * t157, -t135 * t160 - t142 * t157, 0, 0; 0, -t144 * t157 + t160 * t165, -t140 * t157, -t141 * t160 - t145 * t157, 0, 0; 0, t148 * t158 + t149 * t172, t137, 0, 0, 0; 0, t146 * t158 + t147 * t172, t135, 0, 0, 0; 0, (t155 * t167 + t168) * t153, t141, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:29
	% EndTime: 2019-10-09 23:21:29
	% DurationCPUTime: 0.22s
	% Computational Cost: add. (231->61), mult. (691->133), div. (0->0), fcn. (952->14), ass. (0->60)
	t218 = sin(pkin(7));
	t219 = sin(pkin(6));
	t247 = t218 * t219;
	t224 = sin(qJ(4));
	t246 = t218 * t224;
	t228 = cos(qJ(4));
	t245 = t218 * t228;
	t229 = cos(qJ(3));
	t244 = t218 * t229;
	t221 = cos(pkin(7));
	t243 = t219 * t221;
	t225 = sin(qJ(3));
	t242 = t221 * t225;
	t241 = t221 * t229;
	t222 = cos(pkin(6));
	t226 = sin(qJ(2));
	t240 = t222 * t226;
	t230 = cos(qJ(2));
	t239 = t222 * t230;
	t223 = sin(qJ(5));
	t238 = t223 * t228;
	t237 = t225 * t226;
	t236 = t225 * t230;
	t235 = t226 * t229;
	t227 = cos(qJ(5));
	t234 = t227 * t228;
	t233 = t229 * t230;
	t232 = t226 * t247;
	t231 = t219 * t244;
	t220 = cos(pkin(13));
	t217 = sin(pkin(13));
	t212 = -t217 * t240 + t220 * t230;
	t211 = -t217 * t239 - t220 * t226;
	t210 = t217 * t230 + t220 * t240;
	t209 = -t217 * t226 + t220 * t239;
	t208 = t222 * t221 - t230 * t247;
	t207 = (-t221 * t237 + t233) * t219;
	t206 = (t221 * t235 + t236) * t219;
	t203 = -t211 * t218 + t217 * t243;
	t202 = -t209 * t218 - t220 * t243;
	t201 = t222 * t218 * t225 + (t221 * t236 + t235) * t219;
	t200 = t219 * t237 - t222 * t244 - t233 * t243;
	t199 = t207 * t228 + t224 * t232;
	t198 = t211 * t229 - t212 * t242;
	t197 = t211 * t225 + t212 * t241;
	t196 = t209 * t229 - t210 * t242;
	t195 = t209 * t225 + t210 * t241;
	t194 = t201 * t228 + t208 * t224;
	t193 = -t201 * t224 + t208 * t228;
	t192 = t212 * t229 + (t211 * t221 + t217 * t247) * t225;
	t191 = -t211 * t241 + t212 * t225 - t217 * t231;
	t190 = t210 * t229 + (t209 * t221 - t220 * t247) * t225;
	t189 = -t209 * t241 + t210 * t225 + t220 * t231;
	t188 = t198 * t228 + t212 * t246;
	t187 = t196 * t228 + t210 * t246;
	t186 = t192 * t228 + t203 * t224;
	t185 = -t192 * t224 + t203 * t228;
	t184 = t190 * t228 + t202 * t224;
	t183 = -t190 * t224 + t202 * t228;
	t1 = [0, t188 * t227 + t197 * t223, -t191 * t234 + t192 * t223, t185 * t227, -t186 * t223 + t191 * t227, 0; 0, t187 * t227 + t195 * t223, -t189 * t234 + t190 * t223, t183 * t227, -t184 * t223 + t189 * t227, 0; 0, t199 * t227 + t206 * t223, -t200 * t234 + t201 * t223, t193 * t227, -t194 * t223 + t200 * t227, 0; 0, -t188 * t223 + t197 * t227, t191 * t238 + t192 * t227, -t185 * t223, -t186 * t227 - t191 * t223, 0; 0, -t187 * t223 + t195 * t227, t189 * t238 + t190 * t227, -t183 * t223, -t184 * t227 - t189 * t223, 0; 0, -t199 * t223 + t206 * t227, t200 * t238 + t201 * t227, -t193 * t223, -t194 * t227 - t200 * t223, 0; 0, t198 * t224 - t212 * t245, -t191 * t224, t186, 0, 0; 0, t196 * t224 - t210 * t245, -t189 * t224, t184, 0, 0; 0, t207 * t224 - t228 * t232, -t200 * t224, t194, 0, 0;];
	JR_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiR_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:29
	% EndTime: 2019-10-09 23:21:29
	% DurationCPUTime: 0.25s
	% Computational Cost: add. (347->62), mult. (869->133), div. (0->0), fcn. (1198->14), ass. (0->67)
	t243 = qJ(5) + qJ(6);
	t241 = sin(t243);
	t253 = cos(qJ(4));
	t272 = t241 * t253;
	t242 = cos(t243);
	t271 = t242 * t253;
	t245 = sin(pkin(7));
	t246 = sin(pkin(6));
	t270 = t245 * t246;
	t250 = sin(qJ(4));
	t269 = t245 * t250;
	t268 = t245 * t253;
	t254 = cos(qJ(3));
	t267 = t245 * t254;
	t248 = cos(pkin(7));
	t266 = t246 * t248;
	t251 = sin(qJ(3));
	t265 = t248 * t251;
	t264 = t248 * t254;
	t249 = cos(pkin(6));
	t252 = sin(qJ(2));
	t263 = t249 * t252;
	t255 = cos(qJ(2));
	t262 = t249 * t255;
	t261 = t251 * t252;
	t260 = t251 * t255;
	t259 = t252 * t254;
	t258 = t254 * t255;
	t257 = t252 * t270;
	t256 = t246 * t267;
	t247 = cos(pkin(13));
	t244 = sin(pkin(13));
	t236 = -t244 * t263 + t247 * t255;
	t235 = -t244 * t262 - t247 * t252;
	t234 = t244 * t255 + t247 * t263;
	t233 = -t244 * t252 + t247 * t262;
	t232 = t249 * t248 - t255 * t270;
	t231 = (-t248 * t261 + t258) * t246;
	t230 = (t248 * t259 + t260) * t246;
	t227 = -t235 * t245 + t244 * t266;
	t226 = -t233 * t245 - t247 * t266;
	t225 = t249 * t245 * t251 + (t248 * t260 + t259) * t246;
	t224 = t246 * t261 - t249 * t267 - t258 * t266;
	t223 = t231 * t253 + t250 * t257;
	t222 = t235 * t254 - t236 * t265;
	t221 = t235 * t251 + t236 * t264;
	t220 = t233 * t254 - t234 * t265;
	t219 = t233 * t251 + t234 * t264;
	t218 = t225 * t253 + t232 * t250;
	t217 = -t225 * t250 + t232 * t253;
	t216 = t236 * t254 + (t235 * t248 + t244 * t270) * t251;
	t215 = -t235 * t264 + t236 * t251 - t244 * t256;
	t214 = t234 * t254 + (t233 * t248 - t247 * t270) * t251;
	t213 = -t233 * t264 + t234 * t251 + t247 * t256;
	t212 = t222 * t253 + t236 * t269;
	t211 = t220 * t253 + t234 * t269;
	t210 = t216 * t253 + t227 * t250;
	t209 = -t216 * t250 + t227 * t253;
	t208 = t214 * t253 + t226 * t250;
	t207 = -t214 * t250 + t226 * t253;
	t206 = -t218 * t242 - t224 * t241;
	t205 = -t218 * t241 + t224 * t242;
	t204 = -t210 * t242 - t215 * t241;
	t203 = -t210 * t241 + t215 * t242;
	t202 = -t208 * t242 - t213 * t241;
	t201 = -t208 * t241 + t213 * t242;
	t1 = [0, t212 * t242 + t221 * t241, -t215 * t271 + t216 * t241, t209 * t242, t203, t203; 0, t211 * t242 + t219 * t241, -t213 * t271 + t214 * t241, t207 * t242, t201, t201; 0, t223 * t242 + t230 * t241, -t224 * t271 + t225 * t241, t217 * t242, t205, t205; 0, -t212 * t241 + t221 * t242, t215 * t272 + t216 * t242, -t209 * t241, t204, t204; 0, -t211 * t241 + t219 * t242, t213 * t272 + t214 * t242, -t207 * t241, t202, t202; 0, -t223 * t241 + t230 * t242, t224 * t272 + t225 * t242, -t217 * t241, t206, t206; 0, t222 * t250 - t236 * t268, -t215 * t250, t210, 0, 0; 0, t220 * t250 - t234 * t268, -t213 * t250, t208, 0, 0; 0, t231 * t250 - t253 * t257, -t224 * t250, t218, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,6);
end