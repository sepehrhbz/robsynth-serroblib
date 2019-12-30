% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S5RRRRP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4]';
% 
% Output:
% T_c_mdh [4x4x(5+1)]
%   homogenous transformation matrices for each (body) frame (MDH)
%   1:  mdh base (link 0) -> mdh base link 0 (unit matrix, no information)
%   ...
%   6:  mdh base (link 0) -> mdh frame (6-1), link (6-1)
%   ...
%   5+1:  mdh base (link 0) -> mdh frame (5)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 20:30
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_c_mdh = S5RRRRP5_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP5_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRRP5_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-29 20:29:16
% EndTime: 2019-12-29 20:29:16
% DurationCPUTime: 0.19s
% Computational Cost: add. (112->38), mult. (57->34), div. (0->0), fcn. (93->8), ass. (0->25)
t23 = -pkin(7) - pkin(6);
t20 = sin(qJ(1));
t18 = qJ(2) + qJ(3);
t13 = qJ(4) + t18;
t8 = sin(t13);
t30 = t20 * t8;
t22 = cos(qJ(1));
t29 = t22 * t8;
t21 = cos(qJ(2));
t10 = t21 * pkin(2) + pkin(1);
t16 = pkin(5) + 0;
t17 = -pkin(8) + t23;
t12 = cos(t18);
t3 = pkin(3) * t12 + t10;
t28 = t22 * t17 + t20 * t3 + 0;
t19 = sin(qJ(2));
t27 = t19 * pkin(2) + t16;
t11 = sin(t18);
t26 = pkin(3) * t11 + t27;
t9 = cos(t13);
t25 = pkin(4) * t9 + qJ(5) * t8;
t24 = -t20 * t17 + t22 * t3 + 0;
t5 = t22 * t9;
t4 = t20 * t9;
t1 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t22, -t20, 0, 0; t20, t22, 0, 0; 0, 0, 1, t16; 0, 0, 0, 1; t22 * t21, -t22 * t19, t20, t22 * pkin(1) + t20 * pkin(6) + 0; t20 * t21, -t20 * t19, -t22, t20 * pkin(1) - t22 * pkin(6) + 0; t19, t21, 0, t16; 0, 0, 0, 1; t22 * t12, -t22 * t11, t20, t22 * t10 - t20 * t23 + 0; t20 * t12, -t20 * t11, -t22, t20 * t10 + t22 * t23 + 0; t11, t12, 0, t27; 0, 0, 0, 1; t5, -t29, t20, t24; t4, -t30, -t22, t28; t8, t9, 0, t26; 0, 0, 0, 1; t5, t20, t29, t25 * t22 + t24; t4, -t22, t30, t25 * t20 + t28; t8, 0, -t9, t8 * pkin(4) - t9 * qJ(5) + t26; 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,5+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,5+1]); end % symbolisch
for i = 1:5+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
