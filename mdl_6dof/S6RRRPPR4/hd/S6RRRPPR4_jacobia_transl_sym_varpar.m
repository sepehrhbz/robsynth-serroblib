% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RRRPPR4
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta4]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 11:22
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRRPPR4_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR4_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRRPPR4_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRPPR4_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPR4_jacobia_transl_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:13
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:13
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (2->2), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->3)
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t3 = [-r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0, 0, 0, 0, 0; r_i_i_C(1) * t2 - r_i_i_C(2) * t1, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:13
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (11->6), mult. (24->10), div. (0->0), fcn. (24->4), ass. (0->9)
	t8 = pkin(7) + r_i_i_C(3);
	t1 = sin(qJ(2));
	t3 = cos(qJ(2));
	t7 = r_i_i_C(1) * t3 - r_i_i_C(2) * t1;
	t6 = -r_i_i_C(1) * t1 - r_i_i_C(2) * t3;
	t5 = pkin(1) + t7;
	t4 = cos(qJ(1));
	t2 = sin(qJ(1));
	t9 = [-t2 * t5 + t4 * t8, t6 * t4, 0, 0, 0, 0; t2 * t8 + t4 * t5, t6 * t2, 0, 0, 0, 0; 0, t7, 0, 0, 0, 0;];
	Ja_transl = t9;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:13
	% DurationCPUTime: 0.17s
	% Computational Cost: add. (35->20), mult. (83->34), div. (0->0), fcn. (91->6), ass. (0->18)
	t16 = pkin(8) + r_i_i_C(3);
	t6 = sin(qJ(2));
	t14 = t16 * t6;
	t9 = cos(qJ(2));
	t18 = t9 * pkin(2) + pkin(1) + t14;
	t7 = sin(qJ(1));
	t17 = t7 * t9;
	t10 = cos(qJ(1));
	t15 = t10 * t9;
	t5 = sin(qJ(3));
	t8 = cos(qJ(3));
	t12 = r_i_i_C(1) * t8 - r_i_i_C(2) * t5 + pkin(2);
	t11 = -t12 * t6 + t16 * t9;
	t4 = t8 * t15 + t7 * t5;
	t3 = -t5 * t15 + t7 * t8;
	t2 = t10 * t5 - t8 * t17;
	t1 = t10 * t8 + t5 * t17;
	t13 = [t10 * pkin(7) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t18 * t7, t11 * t10, r_i_i_C(1) * t3 - r_i_i_C(2) * t4, 0, 0, 0; t7 * pkin(7) + t4 * r_i_i_C(1) + t3 * r_i_i_C(2) + t18 * t10, t11 * t7, -r_i_i_C(1) * t1 + r_i_i_C(2) * t2, 0, 0, 0; 0, t12 * t9 + t14, (-r_i_i_C(1) * t5 - r_i_i_C(2) * t8) * t6, 0, 0, 0;];
	Ja_transl = t13;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:13
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (77->29), mult. (106->44), div. (0->0), fcn. (117->8), ass. (0->24)
	t14 = cos(qJ(2));
	t11 = sin(qJ(2));
	t24 = r_i_i_C(3) + qJ(4) + pkin(8);
	t20 = t24 * t11;
	t13 = cos(qJ(3));
	t5 = pkin(3) * t13 + pkin(2);
	t25 = t14 * t5 + pkin(1) + t20;
	t10 = sin(qJ(3));
	t23 = pkin(3) * t10;
	t12 = sin(qJ(1));
	t22 = t12 * t14;
	t15 = cos(qJ(1));
	t21 = t14 * t15;
	t18 = pkin(7) + t23;
	t8 = qJ(3) + pkin(10);
	t6 = sin(t8);
	t7 = cos(t8);
	t17 = r_i_i_C(1) * t7 - r_i_i_C(2) * t6 + t5;
	t16 = -t17 * t11 + t24 * t14;
	t4 = t12 * t6 + t7 * t21;
	t3 = t12 * t7 - t6 * t21;
	t2 = t15 * t6 - t7 * t22;
	t1 = t15 * t7 + t6 * t22;
	t9 = [t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t25 * t12 + t18 * t15, t16 * t15, t3 * r_i_i_C(1) - t4 * r_i_i_C(2) + (-t10 * t21 + t12 * t13) * pkin(3), t15 * t11, 0, 0; t4 * r_i_i_C(1) + t3 * r_i_i_C(2) + t18 * t12 + t25 * t15, t16 * t12, -t1 * r_i_i_C(1) + t2 * r_i_i_C(2) + (-t10 * t22 - t13 * t15) * pkin(3), t12 * t11, 0, 0; 0, t17 * t14 + t20, (-r_i_i_C(1) * t6 - r_i_i_C(2) * t7 - t23) * t11, -t14, 0, 0;];
	Ja_transl = t9;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:13
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (132->31), mult. (165->45), div. (0->0), fcn. (189->8), ass. (0->26)
	t16 = cos(qJ(2));
	t13 = sin(qJ(2));
	t25 = r_i_i_C(2) + qJ(4) + pkin(8);
	t19 = t25 * t13;
	t15 = cos(qJ(3));
	t7 = pkin(3) * t15 + pkin(2);
	t29 = t16 * t7 + pkin(1) + t19;
	t22 = r_i_i_C(3) + qJ(5);
	t27 = pkin(4) + r_i_i_C(1);
	t10 = qJ(3) + pkin(10);
	t8 = sin(t10);
	t9 = cos(t10);
	t28 = t22 * t8 + t27 * t9 + t7;
	t12 = sin(qJ(3));
	t26 = pkin(3) * t12;
	t14 = sin(qJ(1));
	t24 = t14 * t16;
	t17 = cos(qJ(1));
	t23 = t16 * t17;
	t20 = pkin(7) + t26;
	t18 = -t28 * t13 + t25 * t16;
	t4 = t14 * t8 + t9 * t23;
	t3 = -t14 * t9 + t8 * t23;
	t2 = -t17 * t8 + t9 * t24;
	t1 = t17 * t9 + t8 * t24;
	t5 = [-t22 * t1 - t29 * t14 + t20 * t17 - t27 * t2, t18 * t17, t22 * t4 - t27 * t3 + (-t12 * t23 + t14 * t15) * pkin(3), t17 * t13, t3, 0; t20 * t14 + t29 * t17 + t22 * t3 + t27 * t4, t18 * t14, t22 * t2 - t27 * t1 + (-t12 * t24 - t15 * t17) * pkin(3), t14 * t13, t1, 0; 0, t28 * t16 + t19, (t22 * t9 - t27 * t8 - t26) * t13, -t16, t13 * t8, 0;];
	Ja_transl = t5;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:13
	% DurationCPUTime: 0.31s
	% Computational Cost: add. (246->48), mult. (314->72), div. (0->0), fcn. (380->10), ass. (0->36)
	t22 = cos(qJ(3));
	t12 = t22 * pkin(3) + pkin(2);
	t23 = cos(qJ(2));
	t19 = sin(qJ(2));
	t34 = -r_i_i_C(3) - pkin(9) + qJ(4) + pkin(8);
	t29 = t34 * t19;
	t41 = t23 * t12 + pkin(1) + t29;
	t15 = qJ(3) + pkin(10);
	t13 = sin(t15);
	t14 = cos(t15);
	t21 = cos(qJ(6));
	t17 = sin(qJ(6));
	t39 = pkin(4) + pkin(5);
	t30 = t17 * r_i_i_C(2) - t39;
	t26 = t21 * r_i_i_C(1) - t30;
	t31 = -t17 * r_i_i_C(1) - qJ(5);
	t27 = t21 * r_i_i_C(2) - t31;
	t40 = t27 * t13 + t26 * t14 + t12;
	t18 = sin(qJ(3));
	t38 = t18 * pkin(3);
	t24 = cos(qJ(1));
	t35 = t24 * t14;
	t20 = sin(qJ(1));
	t37 = t20 * t23;
	t6 = t13 * t37 + t35;
	t3 = t6 * t21;
	t36 = t24 * t13;
	t33 = pkin(7) + t38;
	t28 = (-(-t13 * t21 + t14 * t17) * r_i_i_C(1) - (t13 * t17 + t14 * t21) * r_i_i_C(2)) * t19;
	t25 = -t40 * t19 + t34 * t23;
	t9 = t20 * t13 + t23 * t35;
	t8 = -t20 * t14 + t23 * t36;
	t7 = t14 * t37 - t36;
	t2 = t8 * t17 + t9 * t21;
	t1 = -t9 * t17 + t8 * t21;
	t4 = [-t3 * r_i_i_C(2) - t41 * t20 + t33 * t24 - t26 * t7 + t31 * t6, t25 * t24, t27 * t9 - t26 * t8 + (-t24 * t23 * t18 + t20 * t22) * pkin(3), t24 * t19, t8, t1 * r_i_i_C(1) - t2 * r_i_i_C(2); t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t8 * qJ(5) + t33 * t20 + t41 * t24 + t39 * t9, t25 * t20, -t3 * r_i_i_C(1) + t27 * t7 + t30 * t6 + (-t18 * t37 - t24 * t22) * pkin(3), t20 * t19, t6, (-t7 * t17 + t3) * r_i_i_C(1) + (-t6 * t17 - t7 * t21) * r_i_i_C(2); 0, t40 * t23 + t29, (qJ(5) * t14 - t39 * t13 - t38) * t19 - t28, -t23, t19 * t13, t28;];
	Ja_transl = t4;
else
	Ja_transl=NaN(3,6);
end