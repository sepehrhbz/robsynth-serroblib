% Calculate homogenous joint transformation matrices for
% S5PRPRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d4,theta1,theta3]';
% 
% Output:
% T_mdh [4x4x5]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-24 10:23
% Revision: 5d02717ba55fba3c5445be8d9f6bf09c2cd6665f (2019-10-14)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_mdh = S5PRPRP2_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRP2_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPRP2_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-10-24 10:23:38
% EndTime: 2019-10-24 10:23:38
% DurationCPUTime: 0.03s
% Computational Cost: add. (6->6), mult. (0->0), div. (0->0), fcn. (16->8), ass. (0->9)
t44 = cos(qJ(2));
t43 = cos(qJ(4));
t42 = sin(qJ(2));
t41 = sin(qJ(4));
t40 = cos(pkin(7));
t39 = cos(pkin(8));
t38 = sin(pkin(7));
t37 = sin(pkin(8));
t1 = [t40, -t38, 0, 0; t38, t40, 0, 0; 0, 0, 1, qJ(1); 0, 0, 0, 1; t44, -t42, 0, pkin(1); t42, t44, 0, 0; 0, 0, 1, pkin(5); 0, 0, 0, 1; t39, -t37, 0, pkin(2); 0, 0, -1, -qJ(3); t37, t39, 0, 0; 0, 0, 0, 1; t43, -t41, 0, pkin(3); 0, 0, -1, -pkin(6); t41, t43, 0, 0; 0, 0, 0, 1; 1, 0, 0, pkin(4); 0, 1, 0, 0; 0, 0, 1, qJ(5); 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,5);             % numerisch
else,                         T_mdh = sym('xx', [4,4,5]); end % symbolisch

for i = 1:5
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
