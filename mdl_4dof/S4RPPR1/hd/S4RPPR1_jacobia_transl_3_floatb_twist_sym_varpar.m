% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 3 (0=Basis) von
% S4RPPR1
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d4,theta2]';
%
% Output:
% Ja_transl [3x4]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 13:46
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function Ja_transl = S4RPPR1_jacobia_transl_3_floatb_twist_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPPR1_jacobia_transl_3_floatb_twist_sym_varpar: qJ has to be [4x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S4RPPR1_jacobia_transl_3_floatb_twist_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RPPR1_jacobia_transl_3_floatb_twist_sym_varpar: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_3_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 13:46:52
% EndTime: 2018-11-14 13:46:52
% DurationCPUTime: 0.06s
% Computational Cost: add. (19->8), mult. (10->6), div. (0->0), fcn. (12->4), ass. (0->6)
t5 = pkin(2) + r_i_i_C(1);
t4 = r_i_i_C(3) + qJ(3);
t3 = qJ(1) + pkin(6);
t2 = cos(t3);
t1 = sin(t3);
t6 = [-sin(qJ(1)) * pkin(1) + t4 * t2 - t5 * t1, 0, t1, 0; cos(qJ(1)) * pkin(1) + t5 * t2 + t4 * t1, 0, -t2, 0; 0, 1, 0, 0;];
Ja_transl  = t6;
