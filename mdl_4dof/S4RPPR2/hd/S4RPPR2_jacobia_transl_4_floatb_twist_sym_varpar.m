% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S4RPPR2
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
%   pkin=[a2,a3,a4,d1,d4,theta3]';
%
% Output:
% Ja_transl [3x4]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 13:47
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function Ja_transl = S4RPPR2_jacobia_transl_4_floatb_twist_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPPR2_jacobia_transl_4_floatb_twist_sym_varpar: qJ has to be [4x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S4RPPR2_jacobia_transl_4_floatb_twist_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RPPR2_jacobia_transl_4_floatb_twist_sym_varpar: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 13:47:43
% EndTime: 2018-11-14 13:47:43
% DurationCPUTime: 0.06s
% Computational Cost: add. (39->13), mult. (36->14), div. (0->0), fcn. (46->6), ass. (0->12)
t16 = pkin(1) + cos(pkin(6)) * pkin(3) + pkin(2);
t15 = pkin(6) + qJ(4);
t14 = pkin(3) * sin(pkin(6)) + qJ(2);
t13 = cos(t15);
t12 = sin(t15);
t8 = sin(qJ(1));
t9 = cos(qJ(1));
t1 = -t8 * t12 - t9 * t13;
t2 = t9 * t12 - t8 * t13;
t11 = -t2 * r_i_i_C(1) + t1 * r_i_i_C(2);
t10 = t1 * r_i_i_C(1) + t2 * r_i_i_C(2);
t3 = [t14 * t9 - t16 * t8 - t11, t8, 0, t11; t14 * t8 + t16 * t9 - t10, -t9, 0, t10; 0, 0, -1, 0;];
Ja_transl  = t3;
