% Zeitableitung der analytischen Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S3RPR1
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% qJD [3x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d1,d3]';
% 
% Output:
% JaD_transl [3x3]
%   Translatorischer Teil der analytischen Jacobi-Matrix (Zeitableitung)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 20:10
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S3RPR1_jacobiaD_transl_sym_varpar(qJ, qJD, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(3,1),zeros(3,1),uint8(0),zeros(3,1),zeros(4,1)}
assert(isreal(qJ) && all(size(qJ) == [3 1]), ...
  'S3RPR1_jacobiaD_transl_sym_varpar: qJ has to be [3x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [3 1]), ...
  'S3RPR1_jacobiaD_transl_sym_varpar: qJD has to be [3x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S3RPR1_jacobiaD_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S3RPR1_jacobiaD_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S3RPR1_jacobiaD_transl_sym_varpar: pkin has to be [4x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 20:10:54
	% EndTime: 2019-10-09 20:10:54
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0; 0, 0, 0; 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 20:10:54
	% EndTime: 2019-10-09 20:10:54
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (2->2), mult. (8->6), div. (0->0), fcn. (4->2), ass. (0->3)
	t27 = cos(qJ(1));
	t26 = sin(qJ(1));
	t1 = [(-r_i_i_C(1) * t27 + r_i_i_C(2) * t26) * qJD(1), 0, 0; (-r_i_i_C(1) * t26 - r_i_i_C(2) * t27) * qJD(1), 0, 0; 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 20:10:54
	% EndTime: 2019-10-09 20:10:54
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (8->6), mult. (20->10), div. (0->0), fcn. (12->2), ass. (0->5)
	t10 = -pkin(1) - r_i_i_C(1);
	t9 = r_i_i_C(3) + qJ(2);
	t8 = cos(qJ(1));
	t7 = sin(qJ(1));
	t1 = [t8 * qJD(2) + (t10 * t8 - t9 * t7) * qJD(1), qJD(1) * t8, 0; t7 * qJD(2) + (t10 * t7 + t9 * t8) * qJD(1), qJD(1) * t7, 0; 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 20:10:54
	% EndTime: 2019-10-09 20:10:54
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (36->15), mult. (88->23), div. (0->0), fcn. (74->4), ass. (0->14)
	t87 = -pkin(1) - pkin(2);
	t78 = sin(qJ(1));
	t86 = qJD(1) * t78;
	t80 = cos(qJ(1));
	t85 = qJD(1) * t80;
	t84 = qJD(3) * t78;
	t83 = qJD(3) * t80;
	t77 = sin(qJ(3));
	t79 = cos(qJ(3));
	t71 = -t77 * t84 - t79 * t83 + (t77 * t78 + t79 * t80) * qJD(1);
	t72 = (t84 - t86) * t79 + (-t83 + t85) * t77;
	t82 = -t72 * r_i_i_C(1) - t71 * r_i_i_C(2);
	t81 = t71 * r_i_i_C(1) - t72 * r_i_i_C(2);
	t1 = [t80 * qJD(2) + (-qJ(2) * t78 + t87 * t80) * qJD(1) - t81, t85, t81; t78 * qJD(2) + (qJ(2) * t80 + t87 * t78) * qJD(1) - t82, t86, t82; 0, 0, 0;];
	JaD_transl = t1;
else
	JaD_transl=NaN(3,3);
end