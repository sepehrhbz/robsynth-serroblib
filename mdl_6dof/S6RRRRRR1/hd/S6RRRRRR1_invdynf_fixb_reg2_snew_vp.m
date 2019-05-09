% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRRRR1
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5,d6]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-08 08:05
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRRRR1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR1_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRR1_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRR1_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRR1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRR1_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 08:04:49
% EndTime: 2019-05-08 08:05:01
% DurationCPUTime: 13.08s
% Computational Cost: add. (132124->346), mult. (303210->486), div. (0->0), fcn. (236772->12), ass. (0->277)
t2288 = cos(qJ(2));
t2273 = t2288 * qJDD(1);
t2282 = sin(qJ(2));
t2333 = qJD(1) * t2282;
t2314 = qJD(2) * t2333;
t2252 = t2273 - t2314;
t2277 = t2288 ^ 2;
t2291 = qJD(1) ^ 2;
t2283 = sin(qJ(1));
t2289 = cos(qJ(1));
t2262 = t2283 * g(1) - t2289 * g(2);
t2298 = qJDD(1) * pkin(1) + t2262;
t2299 = qJD(2) * pkin(2) - pkin(8) * t2333;
t2222 = t2252 * pkin(2) - t2299 * t2333 + t2298 + (pkin(8) * t2277 + pkin(7)) * t2291;
t2281 = sin(qJ(3));
t2287 = cos(qJ(3));
t2245 = (t2281 * t2288 + t2282 * t2287) * qJD(1);
t2332 = qJD(1) * t2288;
t2313 = qJD(2) * t2332;
t2317 = t2282 * qJDD(1);
t2251 = t2313 + t2317;
t2307 = t2281 * t2251 - t2287 * t2252;
t2219 = -qJD(3) * t2245 - t2307;
t2243 = t2281 * t2333 - t2287 * t2332;
t2242 = t2243 ^ 2;
t2275 = qJD(2) + qJD(3);
t2305 = pkin(3) * t2275 - pkin(9) * t2245;
t2176 = t2219 * pkin(3) + t2242 * pkin(9) - t2245 * t2305 + t2222;
t2280 = sin(qJ(4));
t2286 = cos(qJ(4));
t2229 = -t2243 * t2280 + t2245 * t2286;
t2300 = -t2287 * t2251 - t2281 * t2252;
t2220 = -qJD(3) * t2243 - t2300;
t2308 = -t2286 * t2219 + t2280 * t2220;
t2178 = -qJD(4) * t2229 - t2308;
t2227 = t2243 * t2286 + t2245 * t2280;
t2226 = t2227 ^ 2;
t2272 = qJD(4) + t2275;
t2304 = pkin(4) * t2272 - pkin(10) * t2229;
t2139 = t2178 * pkin(4) + t2226 * pkin(10) - t2229 * t2304 + t2176;
t2279 = sin(qJ(5));
t2285 = cos(qJ(5));
t2196 = t2285 * t2227 + t2229 * t2279;
t2195 = qJD(6) + t2196;
t2344 = qJD(6) + t2195;
t2198 = -t2227 * t2279 + t2229 * t2285;
t2271 = qJD(5) + t2272;
t2278 = sin(qJ(6));
t2284 = cos(qJ(6));
t2190 = t2198 * t2278 - t2284 * t2271;
t2343 = t2190 ^ 2;
t2192 = t2198 * t2284 + t2271 * t2278;
t2342 = t2192 ^ 2;
t2341 = t2195 ^ 2;
t2340 = t2196 ^ 2;
t2339 = t2198 ^ 2;
t2338 = t2229 ^ 2;
t2337 = t2245 ^ 2;
t2336 = t2271 ^ 2;
t2335 = t2272 ^ 2;
t2334 = t2275 ^ 2;
t2331 = t2190 * t2192;
t2330 = t2196 * t2198;
t2329 = t2227 * t2229;
t2328 = t2243 * t2245;
t2327 = t2272 * t2227;
t2326 = t2275 * t2243;
t2325 = t2277 * t2291;
t2263 = -g(1) * t2289 - g(2) * t2283;
t2247 = -pkin(1) * t2291 + qJDD(1) * pkin(7) + t2263;
t2324 = t2282 * t2247;
t2323 = t2282 * t2291;
t2322 = qJD(3) - t2275;
t2321 = qJD(4) - t2272;
t2320 = qJD(5) - t2271;
t2319 = qJD(6) - t2195;
t2213 = qJDD(2) * pkin(2) - t2251 * pkin(8) - t2324 + (pkin(8) * qJD(1) * qJD(2) + pkin(2) * t2323 - g(3)) * t2288;
t2239 = -t2282 * g(3) + t2288 * t2247;
t2216 = -pkin(2) * t2325 + t2252 * pkin(8) - qJD(2) * t2299 + t2239;
t2187 = t2287 * t2213 - t2281 * t2216;
t2316 = qJDD(2) + qJDD(3);
t2231 = t2316 - t2328;
t2160 = (-t2220 - t2326) * pkin(9) + t2231 * pkin(3) + t2187;
t2188 = t2281 * t2213 + t2287 * t2216;
t2162 = -t2242 * pkin(3) + t2219 * pkin(9) - t2275 * t2305 + t2188;
t2138 = t2280 * t2160 + t2286 * t2162;
t2120 = -t2226 * pkin(4) + t2178 * pkin(10) - t2272 * t2304 + t2138;
t2137 = t2286 * t2160 - t2280 * t2162;
t2301 = -t2280 * t2219 - t2286 * t2220;
t2179 = -qJD(4) * t2227 - t2301;
t2312 = qJDD(4) + t2316;
t2200 = t2312 - t2329;
t2293 = (-t2179 - t2327) * pkin(10) + t2200 * pkin(4) + t2137;
t2097 = t2285 * t2120 + t2279 * t2293;
t2276 = t2282 ^ 2;
t2318 = t2276 + t2277;
t2096 = -t2279 * t2120 + t2285 * t2293;
t2302 = -t2279 * t2178 - t2285 * t2179;
t2142 = -qJD(5) * t2196 - t2302;
t2311 = t2271 * t2196 - t2142;
t2303 = qJDD(5) + t2312;
t2310 = -t2278 * t2142 + t2284 * t2303;
t2309 = -t2285 * t2178 + t2279 * t2179;
t2297 = -qJD(5) * t2198 - qJDD(6) - t2309;
t2133 = (qJD(5) + t2271) * t2198 + t2309;
t2295 = -t2284 * t2142 - t2278 * t2303;
t2290 = qJD(2) ^ 2;
t2269 = t2288 * t2323;
t2267 = -t2290 - t2325;
t2266 = -t2276 * t2291 - t2290;
t2260 = -qJDD(2) + t2269;
t2259 = qJDD(2) + t2269;
t2258 = t2318 * t2291;
t2256 = -qJDD(1) * t2283 - t2289 * t2291;
t2255 = qJDD(1) * t2289 - t2283 * t2291;
t2254 = t2318 * qJDD(1);
t2253 = t2273 - 0.2e1 * t2314;
t2250 = 0.2e1 * t2313 + t2317;
t2246 = t2291 * pkin(7) + t2298;
t2238 = -t2288 * g(3) - t2324;
t2237 = -t2334 - t2337;
t2236 = t2260 * t2288 - t2266 * t2282;
t2235 = -t2259 * t2282 + t2267 * t2288;
t2234 = t2260 * t2282 + t2266 * t2288;
t2233 = t2259 * t2288 + t2267 * t2282;
t2232 = -t2316 - t2328;
t2230 = -t2334 - t2242;
t2221 = -t2242 - t2337;
t2218 = -t2335 - t2338;
t2215 = -t2238 * t2282 + t2239 * t2288;
t2214 = t2238 * t2288 + t2239 * t2282;
t2209 = t2232 * t2287 - t2237 * t2281;
t2208 = t2232 * t2281 + t2237 * t2287;
t2207 = t2243 * t2322 + t2300;
t2206 = t2220 - t2326;
t2205 = -t2245 * t2322 - t2307;
t2204 = (qJD(3) + t2275) * t2245 + t2307;
t2203 = t2230 * t2287 - t2231 * t2281;
t2202 = t2230 * t2281 + t2231 * t2287;
t2201 = -t2312 - t2329;
t2199 = -t2335 - t2226;
t2189 = -t2336 - t2339;
t2186 = -t2226 - t2338;
t2185 = t2201 * t2286 - t2218 * t2280;
t2184 = t2201 * t2280 + t2218 * t2286;
t2183 = -t2208 * t2282 + t2209 * t2288;
t2182 = t2208 * t2288 + t2209 * t2282;
t2181 = t2205 * t2287 - t2207 * t2281;
t2180 = t2205 * t2281 + t2207 * t2287;
t2175 = -t2202 * t2282 + t2203 * t2288;
t2174 = t2202 * t2288 + t2203 * t2282;
t2173 = pkin(5) * t2196 - pkin(11) * t2198;
t2172 = t2199 * t2286 - t2200 * t2280;
t2171 = t2199 * t2280 + t2200 * t2286;
t2170 = -t2303 - t2330;
t2169 = t2303 - t2330;
t2168 = -t2336 - t2340;
t2166 = t2227 * t2321 + t2301;
t2165 = t2179 - t2327;
t2164 = -t2229 * t2321 - t2308;
t2163 = (qJD(4) + t2272) * t2229 + t2308;
t2158 = -t2187 * t2281 + t2188 * t2287;
t2157 = t2187 * t2287 + t2188 * t2281;
t2156 = -t2339 - t2340;
t2155 = -t2341 - t2342;
t2154 = t2170 * t2285 - t2189 * t2279;
t2153 = t2170 * t2279 + t2189 * t2285;
t2152 = -t2341 - t2343;
t2151 = -t2184 * t2281 + t2185 * t2287;
t2150 = t2184 * t2287 + t2185 * t2281;
t2149 = -t2180 * t2282 + t2181 * t2288;
t2148 = t2180 * t2288 + t2181 * t2282;
t2147 = -t2342 - t2343;
t2146 = -t2171 * t2281 + t2172 * t2287;
t2145 = t2171 * t2287 + t2172 * t2281;
t2144 = t2168 * t2285 - t2169 * t2279;
t2143 = t2168 * t2279 + t2169 * t2285;
t2141 = t2164 * t2286 - t2166 * t2280;
t2140 = t2164 * t2280 + t2166 * t2286;
t2136 = t2196 * t2320 + t2302;
t2134 = -t2198 * t2320 - t2309;
t2132 = -t2157 * t2282 + t2158 * t2288;
t2131 = t2157 * t2288 + t2158 * t2282;
t2130 = -t2153 * t2280 + t2154 * t2286;
t2129 = t2153 * t2286 + t2154 * t2280;
t2128 = t2297 - t2331;
t2127 = -t2297 - t2331;
t2126 = -t2150 * t2282 + t2151 * t2288;
t2125 = t2150 * t2288 + t2151 * t2282;
t2124 = t2190 * t2319 + t2295;
t2123 = -t2190 * t2344 - t2295;
t2122 = -t2192 * t2319 + t2310;
t2121 = t2192 * t2344 - t2310;
t2118 = -t2145 * t2282 + t2146 * t2288;
t2117 = t2145 * t2288 + t2146 * t2282;
t2114 = -t2143 * t2280 + t2144 * t2286;
t2113 = t2143 * t2286 + t2144 * t2280;
t2112 = -t2140 * t2281 + t2141 * t2287;
t2111 = t2140 * t2287 + t2141 * t2281;
t2110 = t2128 * t2284 - t2155 * t2278;
t2109 = t2128 * t2278 + t2155 * t2284;
t2108 = -t2127 * t2278 + t2152 * t2284;
t2107 = t2127 * t2284 + t2152 * t2278;
t2106 = -t2137 * t2280 + t2138 * t2286;
t2105 = t2137 * t2286 + t2138 * t2280;
t2104 = t2134 * t2285 - t2136 * t2279;
t2103 = t2134 * t2279 + t2136 * t2285;
t2102 = -t2129 * t2281 + t2130 * t2287;
t2101 = t2129 * t2287 + t2130 * t2281;
t2100 = t2122 * t2284 - t2124 * t2278;
t2099 = t2122 * t2278 + t2124 * t2284;
t2098 = pkin(5) * t2133 + pkin(11) * t2311 - t2139;
t2095 = -t2113 * t2281 + t2114 * t2287;
t2094 = t2113 * t2287 + t2114 * t2281;
t2093 = t2110 * t2285 + t2123 * t2279;
t2092 = t2110 * t2279 - t2123 * t2285;
t2091 = t2108 * t2285 + t2121 * t2279;
t2090 = t2108 * t2279 - t2121 * t2285;
t2089 = -t2111 * t2282 + t2112 * t2288;
t2088 = t2111 * t2288 + t2112 * t2282;
t2087 = t2100 * t2285 + t2147 * t2279;
t2086 = t2100 * t2279 - t2147 * t2285;
t2085 = -pkin(5) * t2336 + pkin(11) * t2303 - t2196 * t2173 + t2097;
t2084 = -pkin(5) * t2303 - pkin(11) * t2336 + t2198 * t2173 - t2096;
t2083 = -t2105 * t2281 + t2106 * t2287;
t2082 = t2105 * t2287 + t2106 * t2281;
t2081 = -t2103 * t2280 + t2104 * t2286;
t2080 = t2103 * t2286 + t2104 * t2280;
t2079 = -t2101 * t2282 + t2102 * t2288;
t2078 = t2101 * t2288 + t2102 * t2282;
t2077 = -t2096 * t2279 + t2097 * t2285;
t2076 = t2096 * t2285 + t2097 * t2279;
t2075 = -t2094 * t2282 + t2095 * t2288;
t2074 = t2094 * t2288 + t2095 * t2282;
t2073 = t2085 * t2284 + t2098 * t2278;
t2072 = -t2085 * t2278 + t2098 * t2284;
t2071 = -t2092 * t2280 + t2093 * t2286;
t2070 = t2092 * t2286 + t2093 * t2280;
t2069 = -t2090 * t2280 + t2091 * t2286;
t2068 = t2090 * t2286 + t2091 * t2280;
t2067 = -t2086 * t2280 + t2087 * t2286;
t2066 = t2086 * t2286 + t2087 * t2280;
t2065 = -t2082 * t2282 + t2083 * t2288;
t2064 = t2082 * t2288 + t2083 * t2282;
t2063 = -t2080 * t2281 + t2081 * t2287;
t2062 = t2080 * t2287 + t2081 * t2281;
t2061 = -t2076 * t2280 + t2077 * t2286;
t2060 = t2076 * t2286 + t2077 * t2280;
t2059 = -t2072 * t2278 + t2073 * t2284;
t2058 = t2072 * t2284 + t2073 * t2278;
t2057 = -t2070 * t2281 + t2071 * t2287;
t2056 = t2070 * t2287 + t2071 * t2281;
t2055 = -t2068 * t2281 + t2069 * t2287;
t2054 = t2068 * t2287 + t2069 * t2281;
t2053 = -t2066 * t2281 + t2067 * t2287;
t2052 = t2066 * t2287 + t2067 * t2281;
t2051 = -t2062 * t2282 + t2063 * t2288;
t2050 = t2062 * t2288 + t2063 * t2282;
t2049 = t2059 * t2285 + t2084 * t2279;
t2048 = t2059 * t2279 - t2084 * t2285;
t2047 = -t2060 * t2281 + t2061 * t2287;
t2046 = t2060 * t2287 + t2061 * t2281;
t2045 = -t2056 * t2282 + t2057 * t2288;
t2044 = t2056 * t2288 + t2057 * t2282;
t2043 = -t2054 * t2282 + t2055 * t2288;
t2042 = t2054 * t2288 + t2055 * t2282;
t2041 = -t2052 * t2282 + t2053 * t2288;
t2040 = t2052 * t2288 + t2053 * t2282;
t2039 = -t2048 * t2280 + t2049 * t2286;
t2038 = t2048 * t2286 + t2049 * t2280;
t2037 = -t2046 * t2282 + t2047 * t2288;
t2036 = t2046 * t2288 + t2047 * t2282;
t2035 = -t2038 * t2281 + t2039 * t2287;
t2034 = t2038 * t2287 + t2039 * t2281;
t2033 = -t2034 * t2282 + t2035 * t2288;
t2032 = t2034 * t2288 + t2035 * t2282;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2256, -t2255, 0, -t2262 * t2283 + t2263 * t2289, 0, 0, 0, 0, 0, 0, t2235 * t2289 - t2253 * t2283, t2236 * t2289 + t2250 * t2283, t2254 * t2289 - t2258 * t2283, t2215 * t2289 - t2246 * t2283, 0, 0, 0, 0, 0, 0, t2175 * t2289 + t2204 * t2283, t2183 * t2289 + t2206 * t2283, t2149 * t2289 + t2221 * t2283, t2132 * t2289 - t2222 * t2283, 0, 0, 0, 0, 0, 0, t2118 * t2289 + t2163 * t2283, t2126 * t2289 + t2165 * t2283, t2089 * t2289 + t2186 * t2283, t2065 * t2289 - t2176 * t2283, 0, 0, 0, 0, 0, 0, t2075 * t2289 + t2133 * t2283, t2079 * t2289 - t2283 * t2311, t2051 * t2289 + t2156 * t2283, t2037 * t2289 - t2139 * t2283, 0, 0, 0, 0, 0, 0, t2043 * t2289 + t2107 * t2283, t2045 * t2289 + t2109 * t2283, t2041 * t2289 + t2099 * t2283, t2033 * t2289 + t2058 * t2283; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2255, t2256, 0, t2262 * t2289 + t2263 * t2283, 0, 0, 0, 0, 0, 0, t2235 * t2283 + t2253 * t2289, t2236 * t2283 - t2250 * t2289, t2254 * t2283 + t2258 * t2289, t2215 * t2283 + t2246 * t2289, 0, 0, 0, 0, 0, 0, t2175 * t2283 - t2204 * t2289, t2183 * t2283 - t2206 * t2289, t2149 * t2283 - t2221 * t2289, t2132 * t2283 + t2222 * t2289, 0, 0, 0, 0, 0, 0, t2118 * t2283 - t2163 * t2289, t2126 * t2283 - t2165 * t2289, t2089 * t2283 - t2186 * t2289, t2065 * t2283 + t2176 * t2289, 0, 0, 0, 0, 0, 0, t2075 * t2283 - t2133 * t2289, t2079 * t2283 + t2289 * t2311, t2051 * t2283 - t2156 * t2289, t2037 * t2283 + t2139 * t2289, 0, 0, 0, 0, 0, 0, t2043 * t2283 - t2107 * t2289, t2045 * t2283 - t2109 * t2289, t2041 * t2283 - t2099 * t2289, t2033 * t2283 - t2058 * t2289; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2233, t2234, 0, t2214, 0, 0, 0, 0, 0, 0, t2174, t2182, t2148, t2131, 0, 0, 0, 0, 0, 0, t2117, t2125, t2088, t2064, 0, 0, 0, 0, 0, 0, t2074, t2078, t2050, t2036, 0, 0, 0, 0, 0, 0, t2042, t2044, t2040, t2032; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2291, -qJDD(1), 0, t2263, 0, 0, 0, 0, 0, 0, t2235, t2236, t2254, t2215, 0, 0, 0, 0, 0, 0, t2175, t2183, t2149, t2132, 0, 0, 0, 0, 0, 0, t2118, t2126, t2089, t2065, 0, 0, 0, 0, 0, 0, t2075, t2079, t2051, t2037, 0, 0, 0, 0, 0, 0, t2043, t2045, t2041, t2033; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2291, 0, t2262, 0, 0, 0, 0, 0, 0, t2253, -t2250, t2258, t2246, 0, 0, 0, 0, 0, 0, -t2204, -t2206, -t2221, t2222, 0, 0, 0, 0, 0, 0, -t2163, -t2165, -t2186, t2176, 0, 0, 0, 0, 0, 0, -t2133, t2311, -t2156, t2139, 0, 0, 0, 0, 0, 0, -t2107, -t2109, -t2099, -t2058; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2233, t2234, 0, t2214, 0, 0, 0, 0, 0, 0, t2174, t2182, t2148, t2131, 0, 0, 0, 0, 0, 0, t2117, t2125, t2088, t2064, 0, 0, 0, 0, 0, 0, t2074, t2078, t2050, t2036, 0, 0, 0, 0, 0, 0, t2042, t2044, t2040, t2032; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2267, t2260, t2273, t2239, 0, 0, 0, 0, 0, 0, t2203, t2209, t2181, t2158, 0, 0, 0, 0, 0, 0, t2146, t2151, t2112, t2083, 0, 0, 0, 0, 0, 0, t2095, t2102, t2063, t2047, 0, 0, 0, 0, 0, 0, t2055, t2057, t2053, t2035; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2259, t2266, -t2317, t2238, 0, 0, 0, 0, 0, 0, t2202, t2208, t2180, t2157, 0, 0, 0, 0, 0, 0, t2145, t2150, t2111, t2082, 0, 0, 0, 0, 0, 0, t2094, t2101, t2062, t2046, 0, 0, 0, 0, 0, 0, t2054, t2056, t2052, t2034; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2253, t2250, -t2258, -t2246, 0, 0, 0, 0, 0, 0, t2204, t2206, t2221, -t2222, 0, 0, 0, 0, 0, 0, t2163, t2165, t2186, -t2176, 0, 0, 0, 0, 0, 0, t2133, -t2311, t2156, -t2139, 0, 0, 0, 0, 0, 0, t2107, t2109, t2099, t2058; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2230, t2232, t2205, t2188, 0, 0, 0, 0, 0, 0, t2172, t2185, t2141, t2106, 0, 0, 0, 0, 0, 0, t2114, t2130, t2081, t2061, 0, 0, 0, 0, 0, 0, t2069, t2071, t2067, t2039; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2231, t2237, t2207, t2187, 0, 0, 0, 0, 0, 0, t2171, t2184, t2140, t2105, 0, 0, 0, 0, 0, 0, t2113, t2129, t2080, t2060, 0, 0, 0, 0, 0, 0, t2068, t2070, t2066, t2038; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2204, t2206, t2221, -t2222, 0, 0, 0, 0, 0, 0, t2163, t2165, t2186, -t2176, 0, 0, 0, 0, 0, 0, t2133, -t2311, t2156, -t2139, 0, 0, 0, 0, 0, 0, t2107, t2109, t2099, t2058; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2199, t2201, t2164, t2138, 0, 0, 0, 0, 0, 0, t2144, t2154, t2104, t2077, 0, 0, 0, 0, 0, 0, t2091, t2093, t2087, t2049; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2200, t2218, t2166, t2137, 0, 0, 0, 0, 0, 0, t2143, t2153, t2103, t2076, 0, 0, 0, 0, 0, 0, t2090, t2092, t2086, t2048; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2163, t2165, t2186, -t2176, 0, 0, 0, 0, 0, 0, t2133, -t2311, t2156, -t2139, 0, 0, 0, 0, 0, 0, t2107, t2109, t2099, t2058; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2168, t2170, t2134, t2097, 0, 0, 0, 0, 0, 0, t2108, t2110, t2100, t2059; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2169, t2189, t2136, t2096, 0, 0, 0, 0, 0, 0, -t2121, -t2123, -t2147, -t2084; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2133, -t2311, t2156, -t2139, 0, 0, 0, 0, 0, 0, t2107, t2109, t2099, t2058; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2152, t2128, t2122, t2073; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2127, t2155, t2124, t2072; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2121, t2123, t2147, t2084;];
f_new_reg  = t1;
