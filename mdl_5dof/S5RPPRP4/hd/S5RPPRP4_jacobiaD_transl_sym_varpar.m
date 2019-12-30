% Zeitableitung der analytischen Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5RPPRP4
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
%   pkin=[a2,a3,a4,a5,d1,d4,theta3]';
% 
% Output:
% JaD_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix (Zeitableitung)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 16:02
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S5RPPRP4_jacobiaD_transl_sym_varpar(qJ, qJD, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRP4_jacobiaD_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRP4_jacobiaD_transl_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RPPRP4_jacobiaD_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPPRP4_jacobiaD_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPPRP4_jacobiaD_transl_sym_varpar: pkin has to be [7x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:02:07
	% EndTime: 2019-12-29 16:02:07
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:02:07
	% EndTime: 2019-12-29 16:02:07
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
	% StartTime: 2019-12-29 16:02:07
	% EndTime: 2019-12-29 16:02:07
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (8->6), mult. (20->10), div. (0->0), fcn. (12->2), ass. (0->5)
	t10 = -pkin(1) - r_i_i_C(1);
	t9 = r_i_i_C(3) + qJ(2);
	t8 = cos(qJ(1));
	t7 = sin(qJ(1));
	t1 = [t8 * qJD(2) + (t10 * t8 - t9 * t7) * qJD(1), qJD(1) * t8, 0, 0, 0; t7 * qJD(2) + (t10 * t7 + t9 * t8) * qJD(1), qJD(1) * t7, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:02:12
	% EndTime: 2019-12-29 16:02:12
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (14->11), mult. (36->20), div. (0->0), fcn. (26->4), ass. (0->8)
	t58 = -pkin(1) - pkin(2);
	t57 = cos(qJ(1));
	t56 = sin(qJ(1));
	t55 = cos(pkin(7));
	t54 = sin(pkin(7));
	t53 = (t54 * t57 - t55 * t56) * qJD(1);
	t52 = (t54 * t56 + t55 * t57) * qJD(1);
	t1 = [-t52 * r_i_i_C(1) + t53 * r_i_i_C(2) + t57 * qJD(2) + (-qJ(2) * t56 + t57 * t58) * qJD(1), qJD(1) * t57, 0, 0, 0; t53 * r_i_i_C(1) + t52 * r_i_i_C(2) + t56 * qJD(2) + (qJ(2) * t57 + t56 * t58) * qJD(1), qJD(1) * t56, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:02:07
	% EndTime: 2019-12-29 16:02:07
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (49->23), mult. (138->41), div. (0->0), fcn. (116->6), ass. (0->17)
	t47 = sin(qJ(4));
	t49 = cos(qJ(4));
	t51 = (r_i_i_C(1) * t47 + r_i_i_C(2) * t49) * qJD(4);
	t57 = -pkin(1) - pkin(2);
	t56 = -pkin(6) - r_i_i_C(3);
	t55 = qJD(4) * t47;
	t54 = qJD(4) * t49;
	t45 = sin(pkin(7));
	t46 = cos(pkin(7));
	t48 = sin(qJ(1));
	t50 = cos(qJ(1));
	t42 = t45 * t50 - t48 * t46;
	t43 = t48 * t45 + t46 * t50;
	t52 = r_i_i_C(1) * t49 - r_i_i_C(2) * t47 + pkin(3);
	t41 = t42 * qJD(1);
	t40 = t43 * qJD(1);
	t1 = [t50 * qJD(2) + t56 * t41 - t42 * t51 - t52 * t40 + (-qJ(2) * t48 + t57 * t50) * qJD(1), qJD(1) * t50, 0, (-t41 * t49 + t43 * t55) * r_i_i_C(2) + (-t41 * t47 - t43 * t54) * r_i_i_C(1), 0; t48 * qJD(2) + t56 * t40 - t43 * t51 + t52 * t41 + (qJ(2) * t50 + t57 * t48) * qJD(1), qJD(1) * t48, 0, (-t40 * t49 - t42 * t55) * r_i_i_C(2) + (-t40 * t47 + t42 * t54) * r_i_i_C(1), 0; 0, 0, 0, t51, 0;];
	JaD_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:02:07
	% EndTime: 2019-12-29 16:02:08
	% DurationCPUTime: 0.21s
	% Computational Cost: add. (72->23), mult. (188->34), div. (0->0), fcn. (165->6), ass. (0->19)
	t52 = sin(qJ(4));
	t54 = cos(qJ(4));
	t63 = pkin(4) + r_i_i_C(1);
	t66 = r_i_i_C(2) * t54 + t63 * t52;
	t56 = t66 * qJD(4);
	t68 = -r_i_i_C(2) * t52 + t63 * t54;
	t67 = qJD(4) * t68;
	t64 = -pkin(1) - pkin(2);
	t60 = -r_i_i_C(3) - qJ(5) - pkin(6);
	t59 = cos(pkin(7));
	t58 = pkin(3) + t68;
	t50 = sin(pkin(7));
	t53 = sin(qJ(1));
	t55 = cos(qJ(1));
	t46 = t55 * t50 - t53 * t59;
	t47 = t53 * t50 + t55 * t59;
	t45 = t46 * qJD(1);
	t44 = t47 * qJD(1);
	t1 = [qJD(2) * t55 - t47 * qJD(5) + t60 * t45 - t58 * t44 - t46 * t56 + (-qJ(2) * t53 + t64 * t55) * qJD(1), qJD(1) * t55, 0, -t45 * t66 - t47 * t67, -t44; t53 * qJD(2) + t46 * qJD(5) + t60 * t44 + t58 * t45 - t47 * t56 + (qJ(2) * t55 + t64 * t53) * qJD(1), qJD(1) * t53, 0, -t44 * t66 + t46 * t67, t45; 0, 0, 0, t56, 0;];
	JaD_transl = t1;
else
	JaD_transl=NaN(3,5);
end