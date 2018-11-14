% Calculate minimal parameter regressor of fixed base kinetic energy for
% S4PPRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d3]';
% 
% Output:
% T_reg [1x6]
%   minimal parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 14:06
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_reg = S4PPRP4_energykin_fixb_regmin_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPRP4_energykin_fixb_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PPRP4_energykin_fixb_regmin_slag_vp: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S4PPRP4_energykin_fixb_regmin_slag_vp: pkin has to be [4x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 14:06:13
% EndTime: 2018-11-14 14:06:13
% DurationCPUTime: 0.02s
% Computational Cost: add. (9->7), mult. (25->18), div. (0->0), fcn. (8->2), ass. (0->7)
t23 = sin(qJ(3));
t24 = cos(qJ(3));
t25 = -t23 * qJD(1) + t24 * qJD(2);
t22 = qJD(1) ^ 2 / 0.2e1;
t20 = t24 * qJD(1) + t23 * qJD(2);
t19 = qJD(3) * pkin(3) + t25;
t1 = [t22, t22 + qJD(2) ^ 2 / 0.2e1, qJD(3) ^ 2 / 0.2e1, t25 * qJD(3), -t20 * qJD(3), t20 ^ 2 / 0.2e1 + t19 ^ 2 / 0.2e1 + qJD(4) ^ 2 / 0.2e1;];
T_reg  = t1;
