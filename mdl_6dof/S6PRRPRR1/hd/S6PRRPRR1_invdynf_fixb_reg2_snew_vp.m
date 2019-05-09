% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PRRPRR1
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,d6,theta1,theta4]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 04:19
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PRRPRR1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR1_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRR1_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRPRR1_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPRR1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRPRR1_invdynf_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 04:19:30
% EndTime: 2019-05-05 04:19:39
% DurationCPUTime: 9.50s
% Computational Cost: add. (71559->325), mult. (158581->508), div. (0->0), fcn. (121586->14), ass. (0->280)
t2223 = sin(pkin(6));
t2226 = cos(pkin(6));
t2222 = sin(pkin(11));
t2225 = cos(pkin(11));
t2263 = g(1) * t2222 - g(2) * t2225;
t2284 = -g(3) + qJDD(1);
t2296 = t2223 * t2284 + t2226 * t2263;
t2221 = sin(pkin(12));
t2224 = cos(pkin(12));
t2234 = cos(qJ(3));
t2282 = qJD(2) * t2234;
t2230 = sin(qJ(3));
t2283 = qJD(2) * t2230;
t2187 = t2221 * t2283 - t2224 * t2282;
t2189 = (t2221 * t2234 + t2224 * t2230) * qJD(2);
t2229 = sin(qJ(5));
t2233 = cos(qJ(5));
t2156 = t2233 * t2187 + t2189 * t2229;
t2155 = qJD(6) + t2156;
t2295 = qJD(6) + t2155;
t2158 = -t2187 * t2229 + t2189 * t2233;
t2218 = qJD(3) + qJD(5);
t2228 = sin(qJ(6));
t2232 = cos(qJ(6));
t2140 = t2158 * t2228 - t2232 * t2218;
t2294 = t2140 ^ 2;
t2142 = t2158 * t2232 + t2218 * t2228;
t2293 = t2142 ^ 2;
t2292 = t2155 ^ 2;
t2291 = t2156 ^ 2;
t2290 = t2158 ^ 2;
t2289 = t2187 ^ 2;
t2288 = t2189 ^ 2;
t2287 = t2218 ^ 2;
t2286 = t2234 ^ 2;
t2285 = -2 * qJD(4);
t2281 = qJD(3) * t2189;
t2280 = t2140 * t2142;
t2279 = t2156 * t2158;
t2278 = t2187 * qJD(3);
t2277 = t2187 * t2189;
t2237 = qJD(2) ^ 2;
t2276 = t2286 * t2237;
t2275 = qJD(5) - t2218;
t2274 = qJD(6) - t2155;
t2202 = -g(1) * t2225 - g(2) * t2222;
t2231 = sin(qJ(2));
t2235 = cos(qJ(2));
t2160 = t2235 * t2202 + t2231 * t2296;
t2151 = -pkin(2) * t2237 + qJDD(2) * pkin(8) + t2160;
t2178 = -t2223 * t2263 + t2226 * t2284;
t2136 = -t2151 * t2230 + t2234 * t2178;
t2268 = qJD(3) * t2282;
t2273 = t2230 * qJDD(2);
t2196 = t2268 + t2273;
t2211 = t2230 * t2237 * t2234;
t2204 = qJDD(3) + t2211;
t2121 = (-t2196 + t2268) * qJ(4) + t2204 * pkin(3) + t2136;
t2137 = t2234 * t2151 + t2230 * t2178;
t2203 = qJD(3) * pkin(3) - qJ(4) * t2283;
t2269 = qJD(3) * t2283;
t2272 = t2234 * qJDD(2);
t2241 = -t2269 + t2272;
t2122 = -pkin(3) * t2276 + qJ(4) * t2241 - qJD(3) * t2203 + t2137;
t2087 = t2221 * t2121 + t2224 * t2122 + t2187 * t2285;
t2168 = -t2196 * t2221 + t2224 * t2241;
t2177 = qJD(3) * pkin(4) - pkin(9) * t2189;
t2078 = -pkin(4) * t2289 + pkin(9) * t2168 - qJD(3) * t2177 + t2087;
t2086 = t2121 * t2224 - t2122 * t2221 + t2189 * t2285;
t2169 = t2224 * t2196 + t2221 * t2241;
t2147 = -t2169 - t2278;
t2162 = qJDD(3) - t2277;
t2238 = pkin(4) * t2162 + pkin(9) * t2147 + t2086;
t2047 = t2233 * t2078 + t2229 * t2238;
t2271 = qJDD(3) + qJDD(5);
t2219 = t2230 ^ 2;
t2270 = t2219 + t2286;
t2046 = -t2078 * t2229 + t2233 * t2238;
t2247 = -t2168 * t2229 - t2169 * t2233;
t2116 = -qJD(5) * t2156 - t2247;
t2266 = t2218 * t2156 - t2116;
t2265 = -t2116 * t2228 + t2232 * t2271;
t2264 = -t2233 * t2168 + t2229 * t2169;
t2262 = t2231 * t2202 - t2235 * t2296;
t2128 = pkin(5) * t2156 - pkin(10) * t2158;
t2038 = -pkin(5) * t2287 + pkin(10) * t2271 - t2156 * t2128 + t2047;
t2150 = -qJDD(2) * pkin(2) - t2237 * pkin(8) + t2262;
t2129 = -t2241 * pkin(3) - qJ(4) * t2276 + t2203 * t2283 + qJDD(4) + t2150;
t2097 = -t2168 * pkin(4) - t2289 * pkin(9) + t2189 * t2177 + t2129;
t2100 = (qJD(5) + t2218) * t2158 + t2264;
t2058 = pkin(5) * t2100 + pkin(10) * t2266 + t2097;
t2029 = -t2038 * t2228 + t2058 * t2232;
t2030 = t2038 * t2232 + t2058 * t2228;
t2011 = -t2029 * t2228 + t2030 * t2232;
t2037 = -pkin(5) * t2271 - pkin(10) * t2287 + t2128 * t2158 - t2046;
t1998 = t2011 * t2229 - t2037 * t2233;
t1999 = t2011 * t2233 + t2037 * t2229;
t1986 = t1998 * t2224 + t1999 * t2221;
t1987 = -t1998 * t2221 + t1999 * t2224;
t1983 = -t1986 * t2230 + t1987 * t2234;
t2010 = t2029 * t2232 + t2030 * t2228;
t2261 = t1983 * t2231 - t2010 * t2235;
t2025 = t2046 * t2233 + t2047 * t2229;
t2026 = -t2046 * t2229 + t2047 * t2233;
t2006 = t2025 * t2224 + t2026 * t2221;
t2007 = -t2025 * t2221 + t2026 * t2224;
t1996 = -t2006 * t2230 + t2007 * t2234;
t2260 = t1996 * t2231 - t2097 * t2235;
t2083 = -t2142 * t2274 + t2265;
t2240 = -t2232 * t2116 - t2228 * t2271;
t2085 = t2140 * t2274 + t2240;
t2055 = t2083 * t2232 - t2085 * t2228;
t2106 = -t2293 - t2294;
t2042 = t2055 * t2229 - t2106 * t2233;
t2043 = t2055 * t2233 + t2106 * t2229;
t2019 = t2042 * t2224 + t2043 * t2221;
t2020 = -t2042 * t2221 + t2043 * t2224;
t2003 = -t2019 * t2230 + t2020 * t2234;
t2054 = t2083 * t2228 + t2085 * t2232;
t2259 = t2003 * t2231 - t2054 * t2235;
t2239 = -qJD(5) * t2158 - qJDD(6) - t2264;
t2091 = -t2239 - t2280;
t2107 = -t2292 - t2294;
t2066 = -t2091 * t2228 + t2107 * t2232;
t2082 = t2142 * t2295 - t2265;
t2048 = t2066 * t2229 - t2082 * t2233;
t2049 = t2066 * t2233 + t2082 * t2229;
t2027 = t2048 * t2224 + t2049 * t2221;
t2028 = -t2048 * t2221 + t2049 * t2224;
t2009 = -t2027 * t2230 + t2028 * t2234;
t2065 = t2091 * t2232 + t2107 * t2228;
t2258 = t2009 * t2231 - t2065 * t2235;
t2092 = t2239 - t2280;
t2110 = -t2292 - t2293;
t2070 = t2092 * t2232 - t2110 * t2228;
t2084 = -t2140 * t2295 - t2240;
t2050 = t2070 * t2229 - t2084 * t2233;
t2051 = t2070 * t2233 + t2084 * t2229;
t2031 = t2050 * t2224 + t2051 * t2221;
t2032 = -t2050 * t2221 + t2051 * t2224;
t2013 = -t2031 * t2230 + t2032 * t2234;
t2069 = t2092 * t2228 + t2110 * t2232;
t2257 = t2013 * t2231 - t2069 * t2235;
t2101 = -t2158 * t2275 - t2264;
t2103 = t2156 * t2275 + t2247;
t2075 = t2101 * t2229 + t2103 * t2233;
t2076 = t2101 * t2233 - t2103 * t2229;
t2044 = t2075 * t2224 + t2076 * t2221;
t2045 = -t2075 * t2221 + t2076 * t2224;
t2024 = -t2044 * t2230 + t2045 * t2234;
t2113 = -t2290 - t2291;
t2256 = t2024 * t2231 - t2113 * t2235;
t2059 = t2086 * t2224 + t2087 * t2221;
t2060 = -t2086 * t2221 + t2087 * t2224;
t2035 = -t2059 * t2230 + t2060 * t2234;
t2255 = t2035 * t2231 - t2129 * t2235;
t2125 = -t2287 - t2291;
t2126 = t2271 - t2279;
t2095 = t2125 * t2229 + t2126 * t2233;
t2096 = t2125 * t2233 - t2126 * t2229;
t2067 = t2095 * t2224 + t2096 * t2221;
t2068 = -t2095 * t2221 + t2096 * t2224;
t2041 = -t2067 * t2230 + t2068 * t2234;
t2254 = t2041 * t2231 - t2100 * t2235;
t2127 = -t2271 - t2279;
t2149 = -t2287 - t2290;
t2108 = t2127 * t2229 + t2149 * t2233;
t2109 = t2127 * t2233 - t2149 * t2229;
t2079 = t2108 * t2224 + t2221 * t2109;
t2080 = -t2108 * t2221 + t2109 * t2224;
t2053 = -t2079 * t2230 + t2080 * t2234;
t2253 = t2053 * t2231 + t2235 * t2266;
t2145 = t2168 + t2281;
t2119 = t2145 * t2221 + t2147 * t2224;
t2120 = t2145 * t2224 - t2147 * t2221;
t2089 = -t2119 * t2230 + t2120 * t2234;
t2143 = -t2288 - t2289;
t2252 = t2089 * t2231 - t2143 * t2235;
t2236 = qJD(3) ^ 2;
t2161 = -t2236 - t2289;
t2130 = t2161 * t2221 + t2162 * t2224;
t2131 = t2161 * t2224 - t2162 * t2221;
t2099 = -t2130 * t2230 + t2131 * t2234;
t2144 = -t2168 + t2281;
t2251 = t2099 * t2231 - t2144 * t2235;
t2105 = -t2136 * t2230 + t2137 * t2234;
t2250 = t2105 * t2231 - t2150 * t2235;
t2163 = -qJDD(3) - t2277;
t2179 = -t2236 - t2288;
t2138 = t2163 * t2221 + t2179 * t2224;
t2139 = t2163 * t2224 - t2179 * t2221;
t2112 = -t2138 * t2230 + t2139 * t2234;
t2146 = t2169 - t2278;
t2249 = t2112 * t2231 - t2146 * t2235;
t2248 = t2160 * t2231 - t2235 * t2262;
t2210 = -t2236 - t2276;
t2173 = -t2204 * t2230 + t2210 * t2234;
t2197 = -0.2e1 * t2269 + t2272;
t2246 = t2173 * t2231 + t2197 * t2235;
t2205 = -qJDD(3) + t2211;
t2209 = -t2219 * t2237 - t2236;
t2174 = t2205 * t2234 - t2209 * t2230;
t2195 = 0.2e1 * t2268 + t2273;
t2245 = t2174 * t2231 - t2195 * t2235;
t2198 = t2270 * qJDD(2);
t2201 = t2270 * t2237;
t2244 = t2198 * t2231 + t2201 * t2235;
t2243 = qJDD(2) * t2235 - t2231 * t2237;
t2200 = -qJDD(2) * t2231 - t2235 * t2237;
t2186 = t2243 * t2226;
t2185 = t2200 * t2226;
t2184 = t2243 * t2223;
t2183 = t2200 * t2223;
t2172 = t2205 * t2230 + t2209 * t2234;
t2171 = t2204 * t2234 + t2210 * t2230;
t2170 = t2198 * t2235 - t2201 * t2231;
t2166 = t2244 * t2226;
t2165 = t2244 * t2223;
t2154 = t2174 * t2235 + t2195 * t2231;
t2153 = t2173 * t2235 - t2197 * t2231;
t2135 = -t2172 * t2223 + t2226 * t2245;
t2134 = -t2171 * t2223 + t2226 * t2246;
t2133 = t2172 * t2226 + t2223 * t2245;
t2132 = t2171 * t2226 + t2223 * t2246;
t2124 = t2160 * t2235 + t2231 * t2262;
t2115 = -t2178 * t2223 + t2226 * t2248;
t2114 = t2178 * t2226 + t2223 * t2248;
t2111 = t2138 * t2234 + t2139 * t2230;
t2104 = t2136 * t2234 + t2137 * t2230;
t2098 = t2130 * t2234 + t2131 * t2230;
t2094 = t2112 * t2235 + t2146 * t2231;
t2093 = t2105 * t2235 + t2150 * t2231;
t2090 = t2099 * t2235 + t2144 * t2231;
t2088 = t2119 * t2234 + t2120 * t2230;
t2081 = t2089 * t2235 + t2143 * t2231;
t2072 = -t2111 * t2223 + t2226 * t2249;
t2071 = t2111 * t2226 + t2223 * t2249;
t2064 = -t2104 * t2223 + t2226 * t2250;
t2063 = t2104 * t2226 + t2223 * t2250;
t2062 = -t2098 * t2223 + t2226 * t2251;
t2061 = t2098 * t2226 + t2223 * t2251;
t2057 = -t2088 * t2223 + t2226 * t2252;
t2056 = t2088 * t2226 + t2223 * t2252;
t2052 = t2079 * t2234 + t2080 * t2230;
t2040 = t2067 * t2234 + t2068 * t2230;
t2039 = t2053 * t2235 - t2231 * t2266;
t2036 = t2041 * t2235 + t2100 * t2231;
t2034 = t2059 * t2234 + t2060 * t2230;
t2033 = t2035 * t2235 + t2129 * t2231;
t2023 = t2044 * t2234 + t2045 * t2230;
t2022 = -t2052 * t2223 + t2226 * t2253;
t2021 = t2052 * t2226 + t2223 * t2253;
t2018 = t2024 * t2235 + t2113 * t2231;
t2017 = -t2040 * t2223 + t2226 * t2254;
t2016 = t2040 * t2226 + t2223 * t2254;
t2015 = -t2034 * t2223 + t2226 * t2255;
t2014 = t2034 * t2226 + t2223 * t2255;
t2012 = t2031 * t2234 + t2032 * t2230;
t2008 = t2027 * t2234 + t2028 * t2230;
t2005 = -t2023 * t2223 + t2226 * t2256;
t2004 = t2023 * t2226 + t2223 * t2256;
t2002 = t2019 * t2234 + t2020 * t2230;
t2001 = t2013 * t2235 + t2069 * t2231;
t2000 = t2009 * t2235 + t2065 * t2231;
t1997 = t2003 * t2235 + t2054 * t2231;
t1995 = t2006 * t2234 + t2007 * t2230;
t1994 = t1996 * t2235 + t2097 * t2231;
t1993 = -t2012 * t2223 + t2226 * t2257;
t1992 = t2012 * t2226 + t2223 * t2257;
t1991 = -t2008 * t2223 + t2226 * t2258;
t1990 = t2008 * t2226 + t2223 * t2258;
t1989 = -t2002 * t2223 + t2226 * t2259;
t1988 = t2002 * t2226 + t2223 * t2259;
t1985 = -t1995 * t2223 + t2226 * t2260;
t1984 = t1995 * t2226 + t2223 * t2260;
t1982 = t1986 * t2234 + t1987 * t2230;
t1981 = t1983 * t2235 + t2010 * t2231;
t1980 = -t1982 * t2223 + t2226 * t2261;
t1979 = t1982 * t2226 + t2223 * t2261;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2225 * t2202 - t2222 * t2263, 0, 0, 0, 0, 0, 0, -t2186 * t2222 + t2200 * t2225, -t2185 * t2222 - t2225 * t2243, 0, -t2115 * t2222 + t2124 * t2225, 0, 0, 0, 0, 0, 0, -t2134 * t2222 + t2153 * t2225, -t2135 * t2222 + t2154 * t2225, -t2166 * t2222 + t2170 * t2225, -t2064 * t2222 + t2093 * t2225, 0, 0, 0, 0, 0, 0, -t2062 * t2222 + t2090 * t2225, -t2072 * t2222 + t2094 * t2225, -t2057 * t2222 + t2081 * t2225, -t2015 * t2222 + t2033 * t2225, 0, 0, 0, 0, 0, 0, -t2017 * t2222 + t2036 * t2225, -t2022 * t2222 + t2039 * t2225, -t2005 * t2222 + t2018 * t2225, -t1985 * t2222 + t1994 * t2225, 0, 0, 0, 0, 0, 0, -t1991 * t2222 + t2000 * t2225, -t1993 * t2222 + t2001 * t2225, -t1989 * t2222 + t1997 * t2225, -t1980 * t2222 + t1981 * t2225; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2222 * t2202 + t2225 * t2263, 0, 0, 0, 0, 0, 0, t2186 * t2225 + t2200 * t2222, t2185 * t2225 - t2222 * t2243, 0, t2115 * t2225 + t2124 * t2222, 0, 0, 0, 0, 0, 0, t2134 * t2225 + t2153 * t2222, t2135 * t2225 + t2154 * t2222, t2166 * t2225 + t2170 * t2222, t2064 * t2225 + t2093 * t2222, 0, 0, 0, 0, 0, 0, t2062 * t2225 + t2090 * t2222, t2072 * t2225 + t2094 * t2222, t2057 * t2225 + t2081 * t2222, t2015 * t2225 + t2033 * t2222, 0, 0, 0, 0, 0, 0, t2017 * t2225 + t2036 * t2222, t2022 * t2225 + t2039 * t2222, t2005 * t2225 + t2018 * t2222, t1985 * t2225 + t1994 * t2222, 0, 0, 0, 0, 0, 0, t1991 * t2225 + t2000 * t2222, t1993 * t2225 + t2001 * t2222, t1989 * t2225 + t1997 * t2222, t1980 * t2225 + t1981 * t2222; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2284, 0, 0, 0, 0, 0, 0, t2184, t2183, 0, t2114, 0, 0, 0, 0, 0, 0, t2132, t2133, t2165, t2063, 0, 0, 0, 0, 0, 0, t2061, t2071, t2056, t2014, 0, 0, 0, 0, 0, 0, t2016, t2021, t2004, t1984, 0, 0, 0, 0, 0, 0, t1990, t1992, t1988, t1979; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2202, 0, 0, 0, 0, 0, 0, t2200, -t2243, 0, t2124, 0, 0, 0, 0, 0, 0, t2153, t2154, t2170, t2093, 0, 0, 0, 0, 0, 0, t2090, t2094, t2081, t2033, 0, 0, 0, 0, 0, 0, t2036, t2039, t2018, t1994, 0, 0, 0, 0, 0, 0, t2000, t2001, t1997, t1981; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2263, 0, 0, 0, 0, 0, 0, t2186, t2185, 0, t2115, 0, 0, 0, 0, 0, 0, t2134, t2135, t2166, t2064, 0, 0, 0, 0, 0, 0, t2062, t2072, t2057, t2015, 0, 0, 0, 0, 0, 0, t2017, t2022, t2005, t1985, 0, 0, 0, 0, 0, 0, t1991, t1993, t1989, t1980; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2284, 0, 0, 0, 0, 0, 0, t2184, t2183, 0, t2114, 0, 0, 0, 0, 0, 0, t2132, t2133, t2165, t2063, 0, 0, 0, 0, 0, 0, t2061, t2071, t2056, t2014, 0, 0, 0, 0, 0, 0, t2016, t2021, t2004, t1984, 0, 0, 0, 0, 0, 0, t1990, t1992, t1988, t1979; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2237, -qJDD(2), 0, t2160, 0, 0, 0, 0, 0, 0, t2173, t2174, t2198, t2105, 0, 0, 0, 0, 0, 0, t2099, t2112, t2089, t2035, 0, 0, 0, 0, 0, 0, t2041, t2053, t2024, t1996, 0, 0, 0, 0, 0, 0, t2009, t2013, t2003, t1983; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t2237, 0, -t2262, 0, 0, 0, 0, 0, 0, t2197, -t2195, t2201, -t2150, 0, 0, 0, 0, 0, 0, -t2144, -t2146, -t2143, -t2129, 0, 0, 0, 0, 0, 0, -t2100, t2266, -t2113, -t2097, 0, 0, 0, 0, 0, 0, -t2065, -t2069, -t2054, -t2010; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2178, 0, 0, 0, 0, 0, 0, t2171, t2172, 0, t2104, 0, 0, 0, 0, 0, 0, t2098, t2111, t2088, t2034, 0, 0, 0, 0, 0, 0, t2040, t2052, t2023, t1995, 0, 0, 0, 0, 0, 0, t2008, t2012, t2002, t1982; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2210, t2205, t2272, t2137, 0, 0, 0, 0, 0, 0, t2131, t2139, t2120, t2060, 0, 0, 0, 0, 0, 0, t2068, t2080, t2045, t2007, 0, 0, 0, 0, 0, 0, t2028, t2032, t2020, t1987; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2204, t2209, -t2273, t2136, 0, 0, 0, 0, 0, 0, t2130, t2138, t2119, t2059, 0, 0, 0, 0, 0, 0, t2067, t2079, t2044, t2006, 0, 0, 0, 0, 0, 0, t2027, t2031, t2019, t1986; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2197, t2195, -t2201, t2150, 0, 0, 0, 0, 0, 0, t2144, t2146, t2143, t2129, 0, 0, 0, 0, 0, 0, t2100, -t2266, t2113, t2097, 0, 0, 0, 0, 0, 0, t2065, t2069, t2054, t2010; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2161, t2163, t2145, t2087, 0, 0, 0, 0, 0, 0, t2096, t2109, t2076, t2026, 0, 0, 0, 0, 0, 0, t2049, t2051, t2043, t1999; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2162, t2179, t2147, t2086, 0, 0, 0, 0, 0, 0, t2095, t2108, t2075, t2025, 0, 0, 0, 0, 0, 0, t2048, t2050, t2042, t1998; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2144, t2146, t2143, t2129, 0, 0, 0, 0, 0, 0, t2100, -t2266, t2113, t2097, 0, 0, 0, 0, 0, 0, t2065, t2069, t2054, t2010; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2125, t2127, t2101, t2047, 0, 0, 0, 0, 0, 0, t2066, t2070, t2055, t2011; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2126, t2149, t2103, t2046, 0, 0, 0, 0, 0, 0, -t2082, -t2084, -t2106, -t2037; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2100, -t2266, t2113, t2097, 0, 0, 0, 0, 0, 0, t2065, t2069, t2054, t2010; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2107, t2092, t2083, t2030; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2091, t2110, t2085, t2029; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2082, t2084, t2106, t2037;];
f_new_reg  = t1;
