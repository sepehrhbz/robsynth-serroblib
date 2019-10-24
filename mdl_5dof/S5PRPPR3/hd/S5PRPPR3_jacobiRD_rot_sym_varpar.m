% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5PRPPR3
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% Zeitableitung: Die Gradientenmatrix wird nochmal nach der Zeit abgeleitet.
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d5,theta1,theta3]';
% 
% Output:
% JRD_rot [9x5]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-24 10:22
% Revision: 5d02717ba55fba3c5445be8d9f6bf09c2cd6665f (2019-10-14)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S5PRPPR3_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPPR3_jacobiRD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPPR3_jacobiRD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRPPR3_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPPR3_jacobiRD_rot_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:22:52
	% EndTime: 2019-10-24 10:22:52
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:22:52
	% EndTime: 2019-10-24 10:22:52
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:22:52
	% EndTime: 2019-10-24 10:22:52
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (4->4), mult. (10->6), div. (0->0), fcn. (10->4), ass. (0->5)
	t20 = qJD(2) * sin(qJ(2));
	t19 = qJD(2) * cos(qJ(2));
	t16 = cos(pkin(7));
	t15 = sin(pkin(7));
	t1 = [0, -t16 * t19, 0, 0, 0; 0, -t15 * t19, 0, 0, 0; 0, -t20, 0, 0, 0; 0, t16 * t20, 0, 0, 0; 0, t15 * t20, 0, 0, 0; 0, -t19, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:22:52
	% EndTime: 2019-10-24 10:22:52
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (10->5), mult. (10->8), div. (0->0), fcn. (10->4), ass. (0->6)
	t26 = qJD(2) * sin(pkin(7));
	t25 = qJD(2) * cos(pkin(7));
	t22 = qJ(2) + pkin(8);
	t21 = cos(t22);
	t20 = sin(t22);
	t1 = [0, -t21 * t25, 0, 0, 0; 0, -t21 * t26, 0, 0, 0; 0, -qJD(2) * t20, 0, 0, 0; 0, t20 * t25, 0, 0, 0; 0, t20 * t26, 0, 0, 0; 0, -qJD(2) * t21, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:22:53
	% EndTime: 2019-10-24 10:22:53
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (8->3), mult. (10->8), div. (0->0), fcn. (10->4), ass. (0->6)
	t111 = qJD(2) * sin(pkin(7));
	t110 = qJD(2) * cos(pkin(7));
	t107 = qJ(2) + pkin(8);
	t106 = cos(t107);
	t105 = sin(t107);
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, t106 * t110, 0, 0, 0; 0, t106 * t111, 0, 0, 0; 0, qJD(2) * t105, 0, 0, 0; 0, -t105 * t110, 0, 0, 0; 0, -t105 * t111, 0, 0, 0; 0, qJD(2) * t106, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:22:53
	% EndTime: 2019-10-24 10:22:53
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (46->18), mult. (77->36), div. (0->0), fcn. (77->6), ass. (0->21)
	t160 = sin(pkin(7));
	t162 = sin(qJ(5));
	t176 = t160 * t162;
	t163 = cos(qJ(5));
	t175 = t160 * t163;
	t161 = cos(pkin(7));
	t174 = t161 * t162;
	t173 = t161 * t163;
	t159 = qJ(2) + pkin(8);
	t158 = cos(t159);
	t172 = qJD(2) * t158;
	t171 = qJD(2) * t162;
	t170 = qJD(2) * t163;
	t169 = qJD(5) * t162;
	t168 = qJD(5) * t163;
	t167 = t160 * t172;
	t166 = t161 * t172;
	t157 = sin(t159);
	t165 = t157 * t170 + t158 * t169;
	t164 = -t157 * t171 + t158 * t168;
	t1 = [0, t164 * t161, 0, 0, t163 * t166 + (-t157 * t174 - t175) * qJD(5); 0, t164 * t160, 0, 0, t163 * t167 + (-t157 * t176 + t173) * qJD(5); 0, t157 * t168 + t158 * t171, 0, 0, t165; 0, -t165 * t161, 0, 0, -t162 * t166 + (-t157 * t173 + t176) * qJD(5); 0, -t165 * t160, 0, 0, -t162 * t167 + (-t157 * t175 - t174) * qJD(5); 0, -t157 * t169 + t158 * t170, 0, 0, t164; 0, -t166, 0, 0, 0; 0, -t167, 0, 0, 0; 0, -qJD(2) * t157, 0, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,5);
end