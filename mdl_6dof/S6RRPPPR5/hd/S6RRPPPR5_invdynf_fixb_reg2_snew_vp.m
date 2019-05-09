% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRPPPR5
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d6,theta3]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 08:55
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRPPPR5_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPPR5_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPPR5_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPPPR5_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPPPR5_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPPPR5_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 08:55:37
% EndTime: 2019-05-06 08:55:43
% DurationCPUTime: 7.15s
% Computational Cost: add. (11880->323), mult. (26853->303), div. (0->0), fcn. (17385->8), ass. (0->177)
t2143 = sin(pkin(9));
t2144 = cos(pkin(9));
t2149 = cos(qJ(2));
t2199 = qJD(1) * t2149;
t2176 = qJD(2) * t2199;
t2146 = sin(qJ(2));
t2178 = t2146 * qJDD(1);
t2161 = t2176 + t2178;
t2157 = t2143 * qJDD(2) + t2144 * t2161;
t2200 = qJD(1) * t2146;
t2111 = t2144 * qJD(2) - t2143 * t2200;
t2186 = t2111 * t2149;
t2175 = qJD(1) * t2186;
t2059 = t2175 + t2157;
t2112 = -qJD(2) * t2143 - t2144 * t2200;
t2097 = t2112 * t2199;
t2167 = qJDD(2) * t2144 - t2143 * t2161;
t2217 = -t2097 - t2167;
t2019 = t2059 * t2144 + t2217 * t2143;
t2147 = sin(qJ(1));
t2150 = cos(qJ(1));
t2207 = t2112 ^ 2;
t2208 = t2111 ^ 2;
t2173 = -t2207 - t2208;
t2221 = t2059 * t2143 - t2217 * t2144;
t2226 = t2173 * t2146 + t2149 * t2221;
t2237 = t2019 * t2150 + t2147 * t2226;
t2238 = t2019 * t2147 - t2150 * t2226;
t2134 = qJD(2) * t2200;
t2177 = t2149 * qJDD(1);
t2116 = -t2134 + t2177;
t2185 = t2112 * t2111;
t2066 = -t2185 - t2116;
t2141 = t2149 ^ 2;
t2151 = qJD(1) ^ 2;
t2184 = t2141 * t2151;
t2071 = t2184 + t2208;
t2030 = t2066 * t2143 + t2144 * t2071;
t2220 = t2097 - t2167;
t2007 = t2030 * t2149 - t2220 * t2146;
t2219 = t2066 * t2144 - t2071 * t2143;
t2235 = t2007 * t2147 + t2150 * t2219;
t2234 = t2007 * t2150 - t2147 * t2219;
t2165 = t2184 + t2207;
t2215 = t2116 - t2185;
t2037 = t2165 * t2143 + t2144 * t2215;
t2214 = -t2175 + t2157;
t2015 = t2037 * t2149 + t2214 * t2146;
t2034 = t2143 * t2215 - t2165 * t2144;
t2231 = t2015 * t2147 - t2034 * t2150;
t2230 = t2015 * t2150 + t2034 * t2147;
t2004 = t2030 * t2146 + t2149 * t2220;
t2227 = t2146 * t2221 - t2173 * t2149;
t2012 = t2037 * t2146 - t2149 * t2214;
t2129 = -qJD(6) + t2199;
t2218 = qJD(6) - t2129;
t2213 = pkin(3) * t2220 - t2157 * qJ(4);
t2181 = -pkin(4) * t2112 + qJ(5) * t2199 + (2 * qJD(4));
t2212 = -t2208 * pkin(4) - qJ(5) * t2167 + t2181 * t2112;
t2211 = qJD(2) ^ 2;
t2145 = sin(qJ(6));
t2148 = cos(qJ(6));
t2068 = -t2111 * t2145 + t2148 * t2112;
t2210 = t2068 ^ 2;
t2070 = -t2111 * t2148 - t2112 * t2145;
t2209 = t2070 ^ 2;
t2206 = t2129 ^ 2;
t2205 = -2 * qJD(5);
t2204 = 0.2e1 * t2112;
t2203 = pkin(5) * t2112;
t2202 = t2149 * g(3);
t2190 = t2068 * t2070;
t2125 = -g(1) * t2150 - g(2) * t2147;
t2107 = -pkin(1) * t2151 + qJDD(1) * pkin(7) + t2125;
t2183 = t2146 * t2107;
t2072 = -pkin(3) * t2111 + qJ(4) * t2112;
t2182 = -(2 * qJD(3)) - t2072;
t2180 = qJD(6) + t2129;
t2140 = t2146 ^ 2;
t2179 = t2140 + t2141;
t2083 = -g(3) * t2146 + t2149 * t2107;
t2114 = (-pkin(2) * t2149 - qJ(3) * t2146) * qJD(1);
t2047 = -pkin(2) * t2211 + qJDD(2) * qJ(3) + t2114 * t2199 + t2083;
t2124 = t2147 * g(1) - t2150 * g(2);
t2106 = qJDD(1) * pkin(1) + t2151 * pkin(7) + t2124;
t2115 = 0.2e1 * t2176 + t2178;
t2152 = (-t2116 + t2134) * pkin(2) - t2115 * qJ(3) - t2106;
t2011 = 0.2e1 * qJD(3) * t2111 + t2144 * t2047 + t2143 * t2152;
t2174 = -t2206 - t2209;
t2172 = -qJ(5) * t2111 + t2072;
t2171 = t2182 * t2112;
t2169 = t2143 * t2047 - t2144 * t2152;
t2168 = t2145 * t2167 + t2148 * t2157;
t2166 = -pkin(3) * t2184 + t2011;
t2164 = qJDD(6) - t2116;
t2090 = -pkin(5) * t2199 + pkin(8) * t2111;
t2159 = t2116 * pkin(3) - qJ(4) * t2184 + qJDD(4) + t2169;
t2156 = pkin(4) * t2059 - qJ(5) * t2066 + 0.2e1 * qJD(5) * t2199 + t2159;
t1971 = t2157 * pkin(8) + t2090 * t2199 + (t2182 - t2203) * t2112 + t2156;
t1972 = qJDD(5) + (-pkin(5) - qJ(4)) * t2116 - (-pkin(4) - pkin(8)) * t2167 + (t2172 + t2203) * t2111 + (pkin(8) * t2112 - t2181) * t2199 + t2166;
t2163 = -t1971 * t2145 + t1972 * t2148;
t2162 = -qJDD(2) * pkin(2) - qJ(3) * t2211 + qJDD(3) + t2202;
t2160 = -t2116 * qJ(4) + t2166;
t2158 = t2164 - t2190;
t2046 = (qJD(1) * t2114 + t2107) * t2146 + t2162;
t2155 = -t2145 * t2157 + t2148 * t2167;
t2154 = t2183 + (qJ(4) * t2186 + t2114 * t2146) * qJD(1) + t2162 + t2213;
t2153 = t2068 * t2180 + t2155;
t2128 = t2149 * t2151 * t2146;
t2127 = -t2184 - t2211;
t2126 = -t2140 * t2151 - t2211;
t2123 = -qJDD(2) + t2128;
t2122 = qJDD(2) + t2128;
t2121 = t2179 * t2151;
t2120 = -qJDD(1) * t2147 - t2150 * t2151;
t2119 = qJDD(1) * t2150 - t2147 * t2151;
t2118 = t2179 * qJDD(1);
t2117 = -0.2e1 * t2134 + t2177;
t2082 = -t2183 - t2202;
t2081 = t2123 * t2149 - t2126 * t2146;
t2080 = -t2122 * t2146 + t2127 * t2149;
t2079 = t2123 * t2146 + t2126 * t2149;
t2078 = t2122 * t2149 + t2127 * t2146;
t2043 = -t2082 * t2146 + t2083 * t2149;
t2042 = t2082 * t2149 + t2083 * t2146;
t2033 = -t2206 - t2210;
t2026 = -t2164 - t2190;
t2018 = -t2209 - t2210;
t2010 = qJD(3) * t2204 - t2169;
t2003 = -t2068 * t2218 - t2155;
t2002 = -t2070 * t2180 + t2168;
t2001 = t2070 * t2218 - t2168;
t1993 = t2026 * t2148 - t2145 * t2174;
t1992 = t2145 * t2026 + t2148 * t2174;
t1991 = qJD(4) * t2204 + t2154;
t1990 = t2033 * t2148 - t2145 * t2158;
t1989 = t2145 * t2033 + t2148 * t2158;
t1988 = t2171 + t2159;
t1987 = -0.2e1 * qJD(4) * t2199 + t2111 * t2072 + t2160;
t1986 = t2111 * t2205 + t2154 + t2212;
t1985 = -t2010 * t2143 + t2011 * t2144;
t1984 = t2010 * t2144 + t2011 * t2143;
t1983 = t2002 * t2148 - t2145 * t2153;
t1982 = t2145 * t2002 + t2148 * t2153;
t1981 = pkin(4) * t2167 + t2111 * t2172 - t2181 * t2199 + qJDD(5) + t2160;
t1980 = t2171 + t2156;
t1979 = t1992 * t2144 + t1993 * t2143;
t1978 = t1992 * t2143 - t1993 * t2144;
t1977 = -t2157 * pkin(5) - t2207 * pkin(8) + (qJ(4) * t2199 - t2090 + t2205) * t2111 + t2046 + t2212 + t2213;
t1976 = t1985 * t2149 + t2046 * t2146;
t1975 = t1985 * t2146 - t2046 * t2149;
t1974 = t1989 * t2144 + t1990 * t2143;
t1973 = t1989 * t2143 - t1990 * t2144;
t1970 = t1987 * t2144 + t1988 * t2143;
t1969 = t1987 * t2143 - t1988 * t2144;
t1968 = t1979 * t2149 + t2003 * t2146;
t1967 = t1979 * t2146 - t2003 * t2149;
t1966 = t1974 * t2149 + t2001 * t2146;
t1965 = t1974 * t2146 - t2001 * t2149;
t1964 = t1982 * t2144 + t1983 * t2143;
t1963 = t1982 * t2143 - t1983 * t2144;
t1962 = t1970 * t2149 + t1991 * t2146;
t1961 = t1970 * t2146 - t1991 * t2149;
t1960 = t1980 * t2143 + t1981 * t2144;
t1959 = -t1980 * t2144 + t1981 * t2143;
t1958 = t1964 * t2149 + t2018 * t2146;
t1957 = t1964 * t2146 - t2018 * t2149;
t1956 = t1971 * t2148 + t1972 * t2145;
t1954 = t1960 * t2149 + t1986 * t2146;
t1953 = t1960 * t2146 - t1986 * t2149;
t1952 = t1956 * t2148 - t2145 * t2163;
t1951 = t2145 * t1956 + t2148 * t2163;
t1950 = t1951 * t2144 + t1952 * t2143;
t1949 = t1951 * t2143 - t1952 * t2144;
t1948 = t1950 * t2149 + t1977 * t2146;
t1947 = t1950 * t2146 - t1977 * t2149;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2120, -t2119, 0, -t2124 * t2147 + t2125 * t2150, 0, 0, 0, 0, 0, 0, t2080 * t2150 - t2117 * t2147, t2081 * t2150 + t2115 * t2147, t2118 * t2150 - t2121 * t2147, t2043 * t2150 - t2106 * t2147, 0, 0, 0, 0, 0, 0, -t2234, t2230, -t2238, t1976 * t2150 + t1984 * t2147, 0, 0, 0, 0, 0, 0, -t2238, t2234, -t2230, t1962 * t2150 + t1969 * t2147, 0, 0, 0, 0, 0, 0, -t2230, t2238, -t2234, t1954 * t2150 + t1959 * t2147, 0, 0, 0, 0, 0, 0, t1966 * t2150 + t1973 * t2147, t1968 * t2150 + t1978 * t2147, t1958 * t2150 + t1963 * t2147, t1948 * t2150 + t1949 * t2147; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2119, t2120, 0, t2124 * t2150 + t2125 * t2147, 0, 0, 0, 0, 0, 0, t2080 * t2147 + t2117 * t2150, t2081 * t2147 - t2115 * t2150, t2118 * t2147 + t2121 * t2150, t2043 * t2147 + t2106 * t2150, 0, 0, 0, 0, 0, 0, -t2235, t2231, t2237, t1976 * t2147 - t1984 * t2150, 0, 0, 0, 0, 0, 0, t2237, t2235, -t2231, t1962 * t2147 - t1969 * t2150, 0, 0, 0, 0, 0, 0, -t2231, -t2237, -t2235, t1954 * t2147 - t1959 * t2150, 0, 0, 0, 0, 0, 0, t1966 * t2147 - t1973 * t2150, t1968 * t2147 - t1978 * t2150, t1958 * t2147 - t1963 * t2150, t1948 * t2147 - t1949 * t2150; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2078, t2079, 0, t2042, 0, 0, 0, 0, 0, 0, -t2004, t2012, t2227, t1975, 0, 0, 0, 0, 0, 0, t2227, t2004, -t2012, t1961, 0, 0, 0, 0, 0, 0, -t2012, -t2227, -t2004, t1953, 0, 0, 0, 0, 0, 0, t1965, t1967, t1957, t1947; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2151, -qJDD(1), 0, t2125, 0, 0, 0, 0, 0, 0, t2080, t2081, t2118, t2043, 0, 0, 0, 0, 0, 0, -t2007, t2015, t2226, t1976, 0, 0, 0, 0, 0, 0, t2226, t2007, -t2015, t1962, 0, 0, 0, 0, 0, 0, -t2015, -t2226, -t2007, t1954, 0, 0, 0, 0, 0, 0, t1966, t1968, t1958, t1948; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2151, 0, t2124, 0, 0, 0, 0, 0, 0, t2117, -t2115, t2121, t2106, 0, 0, 0, 0, 0, 0, -t2219, -t2034, t2019, -t1984, 0, 0, 0, 0, 0, 0, t2019, t2219, t2034, -t1969, 0, 0, 0, 0, 0, 0, t2034, -t2019, -t2219, -t1959, 0, 0, 0, 0, 0, 0, -t1973, -t1978, -t1963, -t1949; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2078, t2079, 0, t2042, 0, 0, 0, 0, 0, 0, -t2004, t2012, t2227, t1975, 0, 0, 0, 0, 0, 0, t2227, t2004, -t2012, t1961, 0, 0, 0, 0, 0, 0, -t2012, -t2227, -t2004, t1953, 0, 0, 0, 0, 0, 0, t1965, t1967, t1957, t1947; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2127, t2123, t2177, t2083, 0, 0, 0, 0, 0, 0, -t2030, t2037, t2221, t1985, 0, 0, 0, 0, 0, 0, t2221, t2030, -t2037, t1970, 0, 0, 0, 0, 0, 0, -t2037, -t2221, -t2030, t1960, 0, 0, 0, 0, 0, 0, t1974, t1979, t1964, t1950; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2122, t2126, -t2178, t2082, 0, 0, 0, 0, 0, 0, -t2220, -t2214, -t2173, -t2046, 0, 0, 0, 0, 0, 0, -t2173, t2220, t2214, -t1991, 0, 0, 0, 0, 0, 0, t2214, t2173, -t2220, -t1986, 0, 0, 0, 0, 0, 0, -t2001, -t2003, -t2018, -t1977; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2117, t2115, -t2121, -t2106, 0, 0, 0, 0, 0, 0, t2219, t2034, -t2019, t1984, 0, 0, 0, 0, 0, 0, -t2019, -t2219, -t2034, t1969, 0, 0, 0, 0, 0, 0, -t2034, t2019, t2219, t1959, 0, 0, 0, 0, 0, 0, t1973, t1978, t1963, t1949; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2071, t2215, -t2217, t2011, 0, 0, 0, 0, 0, 0, -t2217, t2071, -t2215, t1987, 0, 0, 0, 0, 0, 0, -t2215, t2217, -t2071, t1981, 0, 0, 0, 0, 0, 0, t1989, t1992, t1982, t1951; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2066, -t2165, -t2059, t2010, 0, 0, 0, 0, 0, 0, -t2059, -t2066, t2165, -t1988, 0, 0, 0, 0, 0, 0, t2165, t2059, t2066, -t1980, 0, 0, 0, 0, 0, 0, -t1990, -t1993, -t1983, -t1952; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2220, t2214, t2173, t2046, 0, 0, 0, 0, 0, 0, t2173, -t2220, -t2214, t1991, 0, 0, 0, 0, 0, 0, -t2214, -t2173, t2220, t1986, 0, 0, 0, 0, 0, 0, t2001, t2003, t2018, t1977; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2173, -t2220, -t2214, t1991, 0, 0, 0, 0, 0, 0, -t2214, -t2173, t2220, t1986, 0, 0, 0, 0, 0, 0, t2001, t2003, t2018, t1977; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2217, -t2071, t2215, -t1987, 0, 0, 0, 0, 0, 0, t2215, -t2217, t2071, -t1981, 0, 0, 0, 0, 0, 0, -t1989, -t1992, -t1982, -t1951; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2059, t2066, -t2165, t1988, 0, 0, 0, 0, 0, 0, -t2165, -t2059, -t2066, t1980, 0, 0, 0, 0, 0, 0, t1990, t1993, t1983, t1952; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2165, -t2059, -t2066, t1980, 0, 0, 0, 0, 0, 0, t1990, t1993, t1983, t1952; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2214, t2173, -t2220, -t1986, 0, 0, 0, 0, 0, 0, -t2001, -t2003, -t2018, -t1977; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2215, t2217, -t2071, t1981, 0, 0, 0, 0, 0, 0, t1989, t1992, t1982, t1951; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2033, t2026, t2002, t1956; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2158, t2174, t2153, t2163; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2001, t2003, t2018, t1977;];
f_new_reg  = t1;
