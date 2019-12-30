% Zeitableitung der analytischen Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5RRPPR9
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d5]';
% 
% Output:
% JaD_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix (Zeitableitung)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 18:28
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S5RRPPR9_jacobiaD_transl_sym_varpar(qJ, qJD, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPPR9_jacobiaD_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPPR9_jacobiaD_transl_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RRPPR9_jacobiaD_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRPPR9_jacobiaD_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRPPR9_jacobiaD_transl_sym_varpar: pkin has to be [7x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:28:37
	% EndTime: 2019-12-29 18:28:37
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:28:37
	% EndTime: 2019-12-29 18:28:37
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (2->2), mult. (8->6), div. (0->0), fcn. (4->2), ass. (0->3)
	t27 = cos(qJ(1));
	t26 = sin(qJ(1));
	t1 = [(-r_i_i_C(1) * t27 + r_i_i_C(2) * t26) * qJD(1), 0, 0, 0, 0; (-r_i_i_C(1) * t26 - r_i_i_C(2) * t27) * qJD(1), 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:28:37
	% EndTime: 2019-12-29 18:28:37
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (19->15), mult. (64->29), div. (0->0), fcn. (40->4), ass. (0->13)
	t28 = pkin(6) + r_i_i_C(3);
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
	t1 = [t23 * t25 + (-t18 * t28 + t22 * t20) * qJD(1), (t17 * t24 + t19 * t27) * r_i_i_C(2) + (t17 * t27 - t19 * t24) * r_i_i_C(1), 0, 0, 0; -t20 * t21 + (t22 * t18 + t20 * t28) * qJD(1), (t17 * t25 - t19 * t26) * r_i_i_C(2) + (-t17 * t26 - t19 * t25) * r_i_i_C(1), 0, 0, 0; 0, -t21, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:28:38
	% EndTime: 2019-12-29 18:28:38
	% DurationCPUTime: 0.24s
	% Computational Cost: add. (44->20), mult. (134->34), div. (0->0), fcn. (92->4), ass. (0->15)
	t134 = sin(qJ(2));
	t136 = cos(qJ(2));
	t146 = r_i_i_C(3) + qJ(3);
	t148 = pkin(2) + r_i_i_C(1);
	t149 = t148 * t134 - t146 * t136;
	t150 = qJD(2) * t149 - t134 * qJD(3);
	t147 = pkin(6) + r_i_i_C(2);
	t135 = sin(qJ(1));
	t145 = qJD(1) * t135;
	t137 = cos(qJ(1));
	t144 = qJD(1) * t137;
	t143 = qJD(2) * t137;
	t141 = -t146 * t134 - t148 * t136;
	t139 = -pkin(1) + t141;
	t1 = [t150 * t135 + (-t147 * t135 + t139 * t137) * qJD(1), (-t146 * t143 + t148 * t145) * t134 + (-t146 * t145 + (-t148 * qJD(2) + qJD(3)) * t137) * t136, -t134 * t145 + t136 * t143, 0, 0; -t150 * t137 + (t139 * t135 + t147 * t137) * qJD(1), -t149 * t144 + (t141 * qJD(2) + qJD(3) * t136) * t135, t135 * qJD(2) * t136 + t134 * t144, 0, 0; 0, -t150, qJD(2) * t134, 0, 0;];
	JaD_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:28:42
	% EndTime: 2019-12-29 18:28:42
	% DurationCPUTime: 0.23s
	% Computational Cost: add. (59->24), mult. (168->36), div. (0->0), fcn. (115->4), ass. (0->15)
	t19 = sin(qJ(2));
	t21 = cos(qJ(2));
	t28 = pkin(2) + pkin(3) - r_i_i_C(2);
	t33 = r_i_i_C(1) + qJ(3);
	t34 = t28 * t19 - t33 * t21;
	t35 = t34 * qJD(2) - t19 * qJD(3);
	t20 = sin(qJ(1));
	t32 = qJD(1) * t20;
	t22 = cos(qJ(1));
	t31 = qJD(1) * t22;
	t30 = qJD(2) * t22;
	t27 = pkin(6) - r_i_i_C(3) - qJ(4);
	t26 = -t33 * t19 - t28 * t21;
	t24 = -pkin(1) + t26;
	t1 = [-t22 * qJD(4) + t35 * t20 + (-t27 * t20 + t24 * t22) * qJD(1), (t28 * t32 - t33 * t30) * t19 + (-t33 * t32 + (-t28 * qJD(2) + qJD(3)) * t22) * t21, -t19 * t32 + t21 * t30, -t31, 0; -t20 * qJD(4) - t35 * t22 + (t24 * t20 + t27 * t22) * qJD(1), -t34 * t31 + (t26 * qJD(2) + qJD(3) * t21) * t20, t20 * qJD(2) * t21 + t19 * t31, -t32, 0; 0, -t35, qJD(2) * t19, 0, 0;];
	JaD_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:28:39
	% EndTime: 2019-12-29 18:28:39
	% DurationCPUTime: 0.47s
	% Computational Cost: add. (123->48), mult. (374->76), div. (0->0), fcn. (286->6), ass. (0->34)
	t203 = sin(qJ(2));
	t206 = cos(qJ(2));
	t220 = pkin(2) + pkin(3) + pkin(7) + r_i_i_C(3);
	t215 = t220 * t203;
	t230 = pkin(4) + qJ(3);
	t233 = (-t230 * t206 + t215) * qJD(2) - t203 * qJD(3);
	t229 = pkin(6) - qJ(4);
	t205 = cos(qJ(5));
	t207 = cos(qJ(1));
	t228 = t205 * t207;
	t204 = sin(qJ(1));
	t227 = qJD(1) * t204;
	t226 = qJD(1) * t207;
	t225 = qJD(2) * t203;
	t224 = qJD(2) * t206;
	t223 = qJD(2) * t207;
	t222 = qJD(5) * t206;
	t219 = t204 * t224;
	t218 = t206 * t223;
	t217 = qJD(5) * t203 + qJD(1);
	t216 = qJD(1) * t203 + qJD(5);
	t214 = t220 * t206;
	t202 = sin(qJ(5));
	t213 = t217 * t202;
	t212 = r_i_i_C(1) * t205 - r_i_i_C(2) * t202 + t230;
	t211 = qJD(3) + (-r_i_i_C(1) * t202 - r_i_i_C(2) * t205) * qJD(5);
	t210 = -t203 * t230 - pkin(1) - t214;
	t209 = t204 * t216 - t218;
	t208 = t206 * t212 - t215;
	t201 = -t216 * t228 + (-t205 * t224 + t213) * t204;
	t200 = t217 * t205 * t204 + (t207 * t216 + t219) * t202;
	t199 = t205 * t209 + t207 * t213;
	t198 = t202 * t209 - t217 * t228;
	t1 = [t201 * r_i_i_C(1) + t200 * r_i_i_C(2) - t207 * qJD(4) + t233 * t204 + (-t204 * t229 + t207 * t210) * qJD(1), (-t212 * t223 + t220 * t227) * t203 + (-t212 * t227 + (-qJD(2) * t220 + t211) * t207) * t206, -t203 * t227 + t218, -t226, r_i_i_C(1) * t198 + r_i_i_C(2) * t199; -t199 * r_i_i_C(1) + t198 * r_i_i_C(2) - t204 * qJD(4) - t233 * t207 + (t204 * t210 + t207 * t229) * qJD(1), t208 * t226 + (t211 * t206 + (-t203 * t212 - t214) * qJD(2)) * t204, t203 * t226 + t219, -t227, -r_i_i_C(1) * t200 + r_i_i_C(2) * t201; 0, qJD(2) * t208 + t203 * t211, t225, 0, (-t202 * t222 - t205 * t225) * r_i_i_C(2) + (-t202 * t225 + t205 * t222) * r_i_i_C(1);];
	JaD_transl = t1;
else
	JaD_transl=NaN(3,5);
end