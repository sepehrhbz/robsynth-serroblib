% Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S4PPRP5
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d3,theta2]';
%
% Output:
% JaD_transl [3x4]
%   Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 14:07
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function JaD_transl = S4PPRP5_jacobiaD_transl_4_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(3,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPRP5_jacobiaD_transl_4_floatb_twist_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PPRP5_jacobiaD_transl_4_floatb_twist_sym_varpar: qJD has to be [4x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S4PPRP5_jacobiaD_transl_4_floatb_twist_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4PPRP5_jacobiaD_transl_4_floatb_twist_sym_varpar: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From jacobiaD_transl_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 14:07:25
% EndTime: 2018-11-14 14:07:25
% DurationCPUTime: 0.02s
% Computational Cost: add. (20->7), mult. (20->10), div. (0->0), fcn. (12->2), ass. (0->6)
t13 = -pkin(3) - r_i_i_C(1);
t12 = r_i_i_C(3) + qJ(4);
t11 = pkin(5) + qJ(3);
t10 = cos(t11);
t9 = sin(t11);
t1 = [0, 0, t9 * qJD(4) + (t12 * t10 + t13 * t9) * qJD(3), qJD(3) * t9; 0, 0, t10 * qJD(4) + (t13 * t10 - t12 * t9) * qJD(3), qJD(3) * t10; 0, 0, 0, 0;];
JaD_transl  = t1;
