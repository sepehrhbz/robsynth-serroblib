% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5PRRRP2
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,theta1]';
% 
% Output:
% Ja_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:42
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5PRRRP2_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP2_jacobia_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5PRRRP2_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRRRP2_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP2_jacobia_transl_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 16:42:26
	% EndTime: 2019-12-05 16:42:26
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 16:42:26
	% EndTime: 2019-12-05 16:42:26
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 1, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 16:42:26
	% EndTime: 2019-12-05 16:42:26
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (6->3), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->4)
	t3 = pkin(8) + qJ(2);
	t2 = cos(t3);
	t1 = sin(t3);
	t4 = [0, -t1 * r_i_i_C(1) - t2 * r_i_i_C(2), 0, 0, 0; 0, t2 * r_i_i_C(1) - t1 * r_i_i_C(2), 0, 0, 0; 1, 0, 0, 0, 0;];
	Ja_transl = t4;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 16:42:26
	% EndTime: 2019-12-05 16:42:26
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (24->6), mult. (10->6), div. (0->0), fcn. (10->4), ass. (0->7)
	t5 = pkin(8) + qJ(2);
	t4 = qJ(3) + t5;
	t2 = sin(t4);
	t3 = cos(t4);
	t7 = t3 * r_i_i_C(1) - t2 * r_i_i_C(2);
	t6 = -t2 * r_i_i_C(1) - t3 * r_i_i_C(2);
	t1 = [0, -pkin(2) * sin(t5) + t6, t6, 0, 0; 0, pkin(2) * cos(t5) + t7, t7, 0, 0; 1, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 16:42:26
	% EndTime: 2019-12-05 16:42:26
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (71->10), mult. (40->12), div. (0->0), fcn. (40->6), ass. (0->13)
	t21 = r_i_i_C(3) + pkin(7);
	t12 = sin(qJ(4));
	t13 = cos(qJ(4));
	t20 = t13 * r_i_i_C(1) - t12 * r_i_i_C(2);
	t19 = -pkin(3) - t20;
	t11 = pkin(8) + qJ(2);
	t16 = -r_i_i_C(1) * t12 - r_i_i_C(2) * t13;
	t10 = qJ(3) + t11;
	t8 = sin(t10);
	t9 = cos(t10);
	t15 = -t19 * t9 + t21 * t8;
	t14 = t19 * t8 + t21 * t9;
	t1 = [0, -pkin(2) * sin(t11) + t14, t14, t16 * t9, 0; 0, pkin(2) * cos(t11) + t15, t15, t16 * t8, 0; 1, 0, 0, t20, 0;];
	Ja_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 16:42:26
	% EndTime: 2019-12-05 16:42:26
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (114->15), mult. (68->15), div. (0->0), fcn. (71->6), ass. (0->16)
	t15 = cos(qJ(4));
	t22 = pkin(4) + r_i_i_C(1);
	t25 = t22 * t15;
	t24 = r_i_i_C(2) + pkin(7);
	t19 = r_i_i_C(3) + qJ(5);
	t14 = sin(qJ(4));
	t23 = t19 * t14 + t25;
	t13 = pkin(8) + qJ(2);
	t12 = qJ(3) + t13;
	t11 = cos(t12);
	t21 = t11 * t14;
	t10 = sin(t12);
	t18 = t24 * t10 + t19 * t21 + (pkin(3) + t25) * t11;
	t17 = -t22 * t14 + t19 * t15;
	t16 = (-pkin(3) - t23) * t10 + t24 * t11;
	t1 = [0, -pkin(2) * sin(t13) + t16, t16, t17 * t11, t21; 0, pkin(2) * cos(t13) + t18, t18, t17 * t10, t10 * t14; 1, 0, 0, t23, -t15;];
	Ja_transl = t1;
else
	Ja_transl=NaN(3,5);
end