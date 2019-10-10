% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RPPRRR2
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6,theta2,theta3]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 00:03
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPPRRR2_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR2_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPPRRR2_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPPRRR2_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPPRRR2_jacobia_transl_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:03:06
	% EndTime: 2019-10-10 00:03:06
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:03:06
	% EndTime: 2019-10-10 00:03:06
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (2->2), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->3)
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t3 = [-r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0, 0, 0, 0, 0; r_i_i_C(1) * t2 - r_i_i_C(2) * t1, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:03:06
	% EndTime: 2019-10-10 00:03:06
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (8->5), mult. (6->6), div. (0->0), fcn. (6->4), ass. (0->4)
	t3 = qJ(1) + pkin(10);
	t2 = cos(t3);
	t1 = sin(t3);
	t4 = [-t1 * r_i_i_C(1) - t2 * r_i_i_C(2) - sin(qJ(1)) * pkin(1), 0, 0, 0, 0, 0; t2 * r_i_i_C(1) - t1 * r_i_i_C(2) + cos(qJ(1)) * pkin(1), 0, 0, 0, 0, 0; 0, 1, 0, 0, 0, 0;];
	Ja_transl = t4;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:03:06
	% EndTime: 2019-10-10 00:03:06
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (23->9), mult. (16->8), div. (0->0), fcn. (18->6), ass. (0->6)
	t7 = r_i_i_C(3) + qJ(3);
	t6 = r_i_i_C(1) * cos(pkin(11)) - r_i_i_C(2) * sin(pkin(11)) + pkin(2);
	t3 = qJ(1) + pkin(10);
	t2 = cos(t3);
	t1 = sin(t3);
	t4 = [-sin(qJ(1)) * pkin(1) + t7 * t2 - t6 * t1, 0, t1, 0, 0, 0; cos(qJ(1)) * pkin(1) + t7 * t1 + t6 * t2, 0, -t2, 0, 0, 0; 0, 1, 0, 0, 0, 0;];
	Ja_transl = t4;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:03:06
	% EndTime: 2019-10-10 00:03:06
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (44->12), mult. (28->13), div. (0->0), fcn. (30->7), ass. (0->11)
	t12 = r_i_i_C(3) + pkin(7) + qJ(3);
	t6 = pkin(11) + qJ(4);
	t2 = sin(t6);
	t4 = cos(t6);
	t11 = r_i_i_C(1) * t4 - r_i_i_C(2) * t2;
	t10 = -r_i_i_C(1) * t2 - r_i_i_C(2) * t4;
	t9 = cos(pkin(11)) * pkin(3) + pkin(2) + t11;
	t7 = qJ(1) + pkin(10);
	t5 = cos(t7);
	t3 = sin(t7);
	t1 = [-sin(qJ(1)) * pkin(1) + t12 * t5 - t9 * t3, 0, t3, t10 * t5, 0, 0; cos(qJ(1)) * pkin(1) + t12 * t3 + t9 * t5, 0, -t5, t10 * t3, 0, 0; 0, 1, 0, t11, 0, 0;];
	Ja_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:03:06
	% EndTime: 2019-10-10 00:03:06
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (111->27), mult. (87->35), div. (0->0), fcn. (97->9), ass. (0->23)
	t23 = pkin(8) + r_i_i_C(3);
	t10 = pkin(11) + qJ(4);
	t6 = sin(t10);
	t18 = t23 * t6;
	t8 = cos(t10);
	t24 = t18 + t8 * pkin(4) + cos(pkin(11)) * pkin(3) + pkin(2);
	t14 = cos(qJ(5));
	t11 = qJ(1) + pkin(10);
	t7 = sin(t11);
	t22 = t14 * t7;
	t9 = cos(t11);
	t21 = t14 * t9;
	t13 = sin(qJ(5));
	t20 = t7 * t13;
	t19 = t9 * t13;
	t16 = r_i_i_C(1) * t14 - r_i_i_C(2) * t13 + pkin(4);
	t15 = -t16 * t6 + t23 * t8;
	t12 = -pkin(7) - qJ(3);
	t4 = t8 * t21 + t20;
	t3 = -t8 * t19 + t22;
	t2 = -t8 * t22 + t19;
	t1 = t8 * t20 + t21;
	t5 = [-sin(qJ(1)) * pkin(1) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t9 * t12 - t24 * t7, 0, t7, t15 * t9, r_i_i_C(1) * t3 - r_i_i_C(2) * t4, 0; cos(qJ(1)) * pkin(1) + t4 * r_i_i_C(1) + t3 * r_i_i_C(2) - t7 * t12 + t24 * t9, 0, -t9, t15 * t7, -r_i_i_C(1) * t1 + r_i_i_C(2) * t2, 0; 0, 1, 0, t16 * t8 + t18, (-r_i_i_C(1) * t13 - r_i_i_C(2) * t14) * t6, 0;];
	Ja_transl = t5;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:03:06
	% EndTime: 2019-10-10 00:03:06
	% DurationCPUTime: 0.17s
	% Computational Cost: add. (192->34), mult. (128->45), div. (0->0), fcn. (142->11), ass. (0->32)
	t22 = cos(qJ(5));
	t10 = pkin(5) * t22 + pkin(4);
	t17 = pkin(11) + qJ(4);
	t13 = cos(t17);
	t11 = sin(t17);
	t35 = r_i_i_C(3) + pkin(9) + pkin(8);
	t29 = t35 * t11;
	t39 = t29 + t13 * t10 + cos(pkin(11)) * pkin(3) + pkin(2);
	t18 = qJ(1) + pkin(10);
	t14 = cos(t18);
	t19 = qJ(5) + qJ(6);
	t16 = cos(t19);
	t30 = t14 * t16;
	t12 = sin(t18);
	t15 = sin(t19);
	t34 = t12 * t15;
	t5 = t13 * t34 + t30;
	t31 = t14 * t15;
	t33 = t12 * t16;
	t6 = -t13 * t33 + t31;
	t38 = -t5 * r_i_i_C(1) + t6 * r_i_i_C(2);
	t7 = -t13 * t31 + t33;
	t8 = t13 * t30 + t34;
	t37 = t7 * r_i_i_C(1) - t8 * r_i_i_C(2);
	t21 = sin(qJ(5));
	t36 = pkin(5) * t21;
	t32 = t13 * t21;
	t28 = pkin(7) + qJ(3) + t36;
	t26 = -r_i_i_C(1) * t15 - r_i_i_C(2) * t16;
	t25 = r_i_i_C(1) * t16 - r_i_i_C(2) * t15 + t10;
	t24 = -t25 * t11 + t35 * t13;
	t1 = [-sin(qJ(1)) * pkin(1) + t6 * r_i_i_C(1) + t5 * r_i_i_C(2) + t28 * t14 - t39 * t12, 0, t12, t24 * t14, (t12 * t22 - t14 * t32) * pkin(5) + t37, t37; cos(qJ(1)) * pkin(1) + t8 * r_i_i_C(1) + t7 * r_i_i_C(2) + t28 * t12 + t39 * t14, 0, -t14, t24 * t12, (-t12 * t32 - t14 * t22) * pkin(5) + t38, t38; 0, 1, 0, t25 * t13 + t29, (t26 - t36) * t11, t26 * t11;];
	Ja_transl = t1;
else
	Ja_transl=NaN(3,6);
end