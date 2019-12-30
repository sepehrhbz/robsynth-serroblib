% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S4PPRR4
% Use Code from Maple symbolic Code Generation
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
% 
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S4PPRR4_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d3,d4,theta1,theta2]';
% 
% Output:
% Ja_rot [3x4]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 11:56
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S4PPRR4_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),uint8(0),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPRR4_jacobia_rot_sym_varpar: qJ has to be [4x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S4PPRR4_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PPRR4_jacobia_rot_sym_varpar: pkin has to be [7x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 11:56:34
	% EndTime: 2019-12-29 11:56:34
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 11:56:34
	% EndTime: 2019-12-29 11:56:34
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 11:56:29
	% EndTime: 2019-12-29 11:56:29
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 11:56:34
	% EndTime: 2019-12-29 11:56:34
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 11:56:34
	% EndTime: 2019-12-29 11:56:34
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (137->15), mult. (135->34), div. (32->8), fcn. (192->9), ass. (0->24)
	t31 = pkin(7) + qJ(3);
	t30 = cos(t31);
	t29 = sin(t31);
	t32 = sin(pkin(6));
	t37 = t32 * t29;
	t25 = atan2(-t37, -t30);
	t23 = sin(t25);
	t40 = t23 * t30;
	t27 = t29 ^ 2;
	t39 = t27 / t30 ^ 2;
	t33 = cos(pkin(6));
	t38 = t30 * t33;
	t34 = sin(qJ(4));
	t35 = cos(qJ(4));
	t22 = t32 * t34 + t35 * t38;
	t20 = 0.1e1 / t22 ^ 2;
	t21 = -t32 * t35 + t34 * t38;
	t36 = t21 ^ 2 * t20 + 0.1e1;
	t24 = cos(t25);
	t19 = 0.1e1 / t36;
	t18 = (0.1e1 + t39) * t32 / (t32 ^ 2 * t39 + 0.1e1);
	t17 = -t23 * t37 - t24 * t30;
	t16 = 0.1e1 / t17 ^ 2;
	t1 = [0, 0, t18, 0; 0, 0, (t30 / t17 - (-t32 * t40 + t24 * t29 + (-t24 * t37 + t40) * t18) * t29 * t16) * t33 / (t33 ^ 2 * t27 * t16 + 0.1e1), 0; 0, 0, (-t34 / t22 + t35 * t21 * t20) * t33 * t29 * t19, t36 * t19;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,4);
end