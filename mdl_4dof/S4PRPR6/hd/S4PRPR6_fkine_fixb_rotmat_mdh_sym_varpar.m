% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S4PRPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d4,theta1,theta3]';
% 
% Output:
% T_c_mdh [4x4x(4+1)]
%   homogenous transformation matrices for each (body) frame (MDH)
%   1:  mdh base (link 0) -> mdh base link 0 (unit matrix, no information)
%   ...
%   5:  mdh base (link 0) -> mdh frame (5-1), link (5-1)
%   ...
%   4+1:  mdh base (link 0) -> mdh frame (4)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 12:09
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_c_mdh = S4PRPR6_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPR6_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PRPR6_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-29 12:08:15
% EndTime: 2019-12-29 12:08:15
% DurationCPUTime: 0.18s
% Computational Cost: add. (62->37), mult. (75->44), div. (0->0), fcn. (113->8), ass. (0->23)
t11 = sin(pkin(7));
t12 = sin(pkin(6));
t25 = t12 * t11;
t17 = cos(qJ(2));
t24 = t12 * t17;
t14 = cos(pkin(6));
t23 = t14 * t17;
t22 = t12 * pkin(1) + 0;
t9 = qJ(1) + 0;
t21 = t14 * pkin(1) + t12 * pkin(4) + 0;
t15 = -pkin(5) - qJ(3);
t16 = sin(qJ(2));
t13 = cos(pkin(7));
t3 = t13 * pkin(3) + pkin(2);
t20 = -t15 * t16 + t17 * t3;
t19 = -t14 * pkin(4) + t22;
t18 = pkin(2) * t17 + qJ(3) * t16;
t10 = pkin(7) + qJ(4);
t5 = cos(t10);
t4 = sin(t10);
t2 = t14 * t16;
t1 = t12 * t16;
t6 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t14, -t12, 0, 0; t12, t14, 0, 0; 0, 0, 1, t9; 0, 0, 0, 1; t23, -t2, t12, t21; t24, -t1, -t14, t19; t16, t17, 0, t9; 0, 0, 0, 1; t13 * t23 + t25, -t11 * t23 + t12 * t13, t2, t18 * t14 + t21; -t14 * t11 + t13 * t24, -t11 * t24 - t14 * t13, t1, t18 * t12 + t19; t16 * t13, -t16 * t11, -t17, t16 * pkin(2) - t17 * qJ(3) + t9; 0, 0, 0, 1; t12 * t4 + t5 * t23, t12 * t5 - t4 * t23, t2, pkin(3) * t25 + t20 * t14 + t21; -t14 * t4 + t5 * t24, -t14 * t5 - t4 * t24, t1, (-pkin(3) * t11 - pkin(4)) * t14 + t20 * t12 + t22; t16 * t5, -t16 * t4, -t17, t17 * t15 + t16 * t3 + t9; 0, 0, 0, 1;];
T_ges = t6;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,4+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,4+1]); end % symbolisch
for i = 1:4+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
