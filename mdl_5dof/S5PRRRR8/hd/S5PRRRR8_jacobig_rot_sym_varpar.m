% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S5PRRRR8
% Use Code from Maple symbolic Code Generation
%
% Geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorgeschwindigkeit und Geschw. der verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d3,d4,d5,theta1]';
% 
% Output:
% Jg_rot [3x5]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-24 10:38
% Revision: 5d02717ba55fba3c5445be8d9f6bf09c2cd6665f (2019-10-14)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S5PRRRR8_jacobig_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR8_jacobig_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRRRR8_jacobig_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5PRRRR8_jacobig_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobig_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:38:06
	% EndTime: 2019-10-24 10:38:06
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobig_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:38:06
	% EndTime: 2019-10-24 10:38:06
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobig_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:38:06
	% EndTime: 2019-10-24 10:38:06
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (1->1), mult. (2->2), div. (0->0), fcn. (5->4), ass. (0->2)
	t18 = sin(pkin(5));
	t1 = [0, sin(pkin(10)) * t18, 0, 0, 0; 0, -cos(pkin(10)) * t18, 0, 0, 0; 0, cos(pkin(5)), 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobig_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:38:07
	% EndTime: 2019-10-24 10:38:07
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (4->4), mult. (9->8), div. (0->0), fcn. (17->6), ass. (0->8)
	t57 = cos(pkin(5));
	t59 = cos(qJ(2));
	t60 = t57 * t59;
	t58 = sin(qJ(2));
	t56 = cos(pkin(10));
	t55 = sin(pkin(5));
	t54 = sin(pkin(10));
	t1 = [0, t54 * t55, t54 * t60 + t56 * t58, 0, 0; 0, -t56 * t55, t54 * t58 - t56 * t60, 0, 0; 0, t57, -t55 * t59, 0, 0;];
	Jg_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobig_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:38:07
	% EndTime: 2019-10-24 10:38:07
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (7->5), mult. (16->8), div. (0->0), fcn. (29->6), ass. (0->11)
	t73 = sin(pkin(5));
	t77 = cos(qJ(2));
	t79 = t73 * t77;
	t75 = cos(pkin(5));
	t78 = t75 * t77;
	t76 = sin(qJ(2));
	t74 = cos(pkin(10));
	t72 = sin(pkin(10));
	t71 = t72 * t78 + t74 * t76;
	t70 = t72 * t76 - t74 * t78;
	t1 = [0, t72 * t73, t71, t71, 0; 0, -t74 * t73, t70, t70, 0; 0, t75, -t79, -t79, 0;];
	Jg_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobig_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:38:07
	% EndTime: 2019-10-24 10:38:07
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (18->11), mult. (31->20), div. (0->0), fcn. (52->8), ass. (0->17)
	t117 = sin(pkin(10));
	t118 = sin(pkin(5));
	t127 = t117 * t118;
	t122 = cos(qJ(2));
	t126 = t118 * t122;
	t119 = cos(pkin(10));
	t125 = t119 * t118;
	t120 = cos(pkin(5));
	t121 = sin(qJ(2));
	t124 = t120 * t121;
	t123 = t120 * t122;
	t116 = qJ(3) + qJ(4);
	t115 = cos(t116);
	t114 = sin(t116);
	t113 = t117 * t123 + t119 * t121;
	t112 = t117 * t121 - t119 * t123;
	t1 = [0, t127, t113, t113, (-t117 * t124 + t119 * t122) * t114 - t115 * t127; 0, -t125, t112, t112, (t117 * t122 + t119 * t124) * t114 + t115 * t125; 0, t120, -t126, -t126, t118 * t121 * t114 - t120 * t115;];
	Jg_rot = t1;
else
	Jg_rot=NaN(3,5);
end