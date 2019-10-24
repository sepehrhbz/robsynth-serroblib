% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5PRRRR4
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,d5,theta1]';
% 
% Output:
% JRD_rot [9x5]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-24 10:36
% Revision: 5d02717ba55fba3c5445be8d9f6bf09c2cd6665f (2019-10-14)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S5PRRRR4_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR4_jacobiRD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRR4_jacobiRD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRRRR4_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRRR4_jacobiRD_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:36:35
	% EndTime: 2019-10-24 10:36:35
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:36:35
	% EndTime: 2019-10-24 10:36:35
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:36:35
	% EndTime: 2019-10-24 10:36:35
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (7->4), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->4)
	t35 = pkin(9) + qJ(2);
	t37 = qJD(2) * sin(t35);
	t36 = qJD(2) * cos(t35);
	t1 = [0, -t36, 0, 0, 0; 0, -t37, 0, 0, 0; 0, 0, 0, 0, 0; 0, t37, 0, 0, 0; 0, -t36, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:36:35
	% EndTime: 2019-10-24 10:36:35
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (30->8), mult. (8->2), div. (0->0), fcn. (8->2), ass. (0->5)
	t49 = pkin(9) + qJ(2) + qJ(3);
	t50 = qJD(2) + qJD(3);
	t51 = t50 * cos(t49);
	t46 = t50 * sin(t49);
	t1 = [0, -t51, -t51, 0, 0; 0, -t46, -t46, 0, 0; 0, 0, 0, 0, 0; 0, t46, t46, 0, 0; 0, -t51, -t51, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:36:35
	% EndTime: 2019-10-24 10:36:35
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (88->13), mult. (54->14), div. (0->0), fcn. (54->4), ass. (0->17)
	t71 = pkin(9) + qJ(2) + qJ(3);
	t69 = sin(t71);
	t72 = qJD(2) + qJD(3);
	t79 = t72 * t69;
	t73 = sin(qJ(4));
	t78 = t72 * t73;
	t74 = cos(qJ(4));
	t77 = t72 * t74;
	t76 = qJD(4) * t73;
	t75 = qJD(4) * t74;
	t70 = cos(t71);
	t68 = t72 * t70;
	t67 = t69 * t76 - t70 * t77;
	t66 = t69 * t75 + t70 * t78;
	t65 = t69 * t77 + t70 * t76;
	t64 = t69 * t78 - t70 * t75;
	t1 = [0, t67, t67, t64, 0; 0, -t65, -t65, -t66, 0; 0, 0, 0, -t76, 0; 0, t66, t66, t65, 0; 0, t64, t64, t67, 0; 0, 0, 0, -t75, 0; 0, -t79, -t79, 0, 0; 0, t68, t68, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:36:36
	% EndTime: 2019-10-24 10:36:36
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (170->18), mult. (72->14), div. (0->0), fcn. (72->4), ass. (0->19)
	t104 = qJD(2) + qJD(3);
	t100 = pkin(9) + qJ(2) + qJ(3);
	t98 = sin(t100);
	t110 = t104 * t98;
	t105 = qJ(4) + qJ(5);
	t101 = sin(t105);
	t109 = t101 * t104;
	t102 = cos(t105);
	t108 = t102 * t104;
	t103 = qJD(4) + qJD(5);
	t107 = t103 * t101;
	t106 = t103 * t102;
	t99 = cos(t100);
	t97 = t104 * t99;
	t96 = t98 * t107 - t99 * t108;
	t95 = t98 * t106 + t99 * t109;
	t94 = t99 * t107 + t98 * t108;
	t93 = -t99 * t106 + t98 * t109;
	t1 = [0, t96, t96, t93, t93; 0, -t94, -t94, -t95, -t95; 0, 0, 0, -t107, -t107; 0, t95, t95, t94, t94; 0, t93, t93, t96, t96; 0, 0, 0, -t106, -t106; 0, -t110, -t110, 0, 0; 0, t97, t97, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,5);
end