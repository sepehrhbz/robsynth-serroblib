% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PRRRPR3
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d6,theta1]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 07:33
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PRRRPR3_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR3_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR3_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRRPR3_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRPR3_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRRPR3_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 07:32:53
% EndTime: 2019-05-05 07:33:01
% DurationCPUTime: 8.28s
% Computational Cost: add. (26805->319), mult. (54300->441), div. (0->0), fcn. (39687->12), ass. (0->259)
t2291 = qJDD(3) + qJDD(4);
t2301 = sin(qJ(4));
t2305 = cos(qJ(4));
t2306 = cos(qJ(3));
t2371 = qJD(2) * t2306;
t2302 = sin(qJ(3));
t2372 = qJD(2) * t2302;
t2260 = t2301 * t2372 - t2305 * t2371;
t2262 = (t2301 * t2306 + t2302 * t2305) * qJD(2);
t2367 = t2262 * t2260;
t2228 = -t2291 - t2367;
t2292 = qJD(3) + qJD(4);
t2290 = t2292 ^ 2;
t2376 = t2262 ^ 2;
t2354 = -t2290 - t2376;
t2207 = t2228 * t2301 + t2305 * t2354;
t2209 = t2228 * t2305 - t2301 * t2354;
t2171 = t2207 * t2302 - t2209 * t2306;
t2303 = sin(qJ(2));
t2395 = t2171 * t2303;
t2307 = cos(qJ(2));
t2394 = t2171 * t2307;
t2170 = t2207 * t2306 + t2209 * t2302;
t2296 = sin(pkin(6));
t2393 = t2296 * t2170;
t2298 = cos(pkin(6));
t2392 = t2298 * t2170;
t2259 = t2260 ^ 2;
t2224 = -t2290 - t2259;
t2345 = t2291 - t2367;
t2186 = t2224 * t2301 + t2305 * t2345;
t2189 = -t2224 * t2305 + t2301 * t2345;
t2162 = t2186 * t2302 + t2189 * t2306;
t2391 = t2162 * t2303;
t2390 = t2162 * t2307;
t2159 = t2186 * t2306 - t2189 * t2302;
t2389 = t2296 * t2159;
t2388 = t2298 * t2159;
t2356 = qJD(3) * t2371;
t2360 = t2302 * qJDD(2);
t2268 = t2356 + t2360;
t2357 = qJD(3) * t2372;
t2359 = t2306 * qJDD(2);
t2323 = -t2357 + t2359;
t2320 = -t2305 * t2268 - t2301 * t2323;
t2364 = qJD(4) - t2292;
t2205 = t2260 * t2364 + t2320;
t2387 = t2205 * t2301;
t2386 = t2205 * t2305;
t2380 = -t2259 - t2376;
t2385 = t2303 * t2380;
t2384 = t2307 * t2380;
t2317 = -t2260 * qJD(4) - t2320;
t2366 = t2292 * t2260;
t2203 = t2317 - t2366;
t2295 = sin(pkin(11));
t2297 = cos(pkin(11));
t2347 = g(1) * t2295 - g(2) * t2297;
t2373 = -g(3) + qJDD(1);
t2383 = t2296 * t2373 + t2298 * t2347;
t2300 = sin(qJ(6));
t2304 = cos(qJ(6));
t2274 = -g(1) * t2297 - g(2) * t2295;
t2223 = t2307 * t2274 + t2303 * t2383;
t2309 = qJD(2) ^ 2;
t2219 = -pkin(2) * t2309 + qJDD(2) * pkin(8) + t2223;
t2246 = -t2296 * t2347 + t2298 * t2373;
t2195 = -t2302 * t2219 + t2306 * t2246;
t2282 = t2302 * t2309 * t2306;
t2275 = qJDD(3) + t2282;
t2181 = (-t2268 + t2356) * pkin(9) + t2275 * pkin(3) + t2195;
t2196 = t2306 * t2219 + t2302 * t2246;
t2279 = qJD(3) * pkin(3) - pkin(9) * t2372;
t2375 = t2306 ^ 2;
t2365 = t2375 * t2309;
t2182 = -pkin(3) * t2365 + pkin(9) * t2323 - qJD(3) * t2279 + t2196;
t2150 = t2305 * t2181 - t2301 * t2182;
t2322 = -t2291 * pkin(4) - t2290 * qJ(5) + qJDD(5) - t2150;
t2312 = -t2291 * pkin(10) + t2322 + (t2317 + t2366) * pkin(5);
t2349 = t2301 * t2268 - t2305 * t2323;
t2215 = qJD(4) * t2262 + t2349;
t2346 = t2303 * t2274 - t2307 * t2383;
t2218 = -qJDD(2) * pkin(2) - t2309 * pkin(8) + t2346;
t2190 = -t2323 * pkin(3) - pkin(9) * t2365 + t2279 * t2372 + t2218;
t2315 = t2215 * pkin(4) - qJ(5) * t2203 + t2190;
t2313 = -t2259 * pkin(5) + t2215 * pkin(10) + t2315;
t2245 = pkin(5) * t2262 - pkin(10) * t2292;
t2353 = pkin(4) * t2292 - (2 * qJD(5));
t2348 = -t2245 + t2353;
t2229 = pkin(4) * t2260 - qJ(5) * t2262;
t2352 = pkin(10) * t2260 + t2229;
t2310 = -t2300 * t2313 + t2304 * t2312 + (-t2300 * t2348 + t2304 * t2352) * t2262;
t2234 = -t2304 * t2260 + t2292 * t2300;
t2379 = t2234 ^ 2;
t2236 = t2260 * t2300 + t2292 * t2304;
t2378 = t2236 ^ 2;
t2252 = qJD(6) + t2262;
t2377 = t2252 ^ 2;
t2374 = 2 * qJD(5);
t2368 = t2236 * t2234;
t2363 = qJD(4) + t2292;
t2362 = qJD(6) - t2252;
t2361 = qJD(6) + t2252;
t2293 = t2302 ^ 2;
t2358 = t2293 + t2375;
t2355 = -t2377 - t2378;
t2350 = t2304 * t2215 - t2300 * t2291;
t2105 = t2304 * t2313 + t2300 * t2312 + (t2300 * t2352 + t2304 * t2348) * t2262;
t2091 = t2300 * t2105 + t2304 * t2310;
t2151 = t2301 * t2181 + t2305 * t2182;
t2319 = -t2290 * pkin(4) + t2291 * qJ(5) - t2260 * t2229 + t2151;
t2124 = -t2215 * pkin(5) - t2259 * pkin(10) + (t2374 + t2245) * t2292 + t2319;
t2085 = -t2091 * t2305 + t2124 * t2301;
t2086 = t2091 * t2301 + t2124 * t2305;
t2080 = -t2085 * t2302 + t2086 * t2306;
t2092 = t2304 * t2105 - t2300 * t2310;
t2344 = t2080 * t2303 - t2092 * t2307;
t2143 = t2292 * t2374 + t2319;
t2144 = t2262 * t2229 + t2322;
t2116 = t2143 * t2301 - t2144 * t2305;
t2117 = t2143 * t2305 + t2144 * t2301;
t2097 = -t2116 * t2302 + t2117 * t2306;
t2149 = t2262 * t2353 + t2315;
t2343 = t2097 * t2303 - t2149 * t2307;
t2118 = t2150 * t2305 + t2151 * t2301;
t2119 = -t2150 * t2301 + t2151 * t2305;
t2101 = -t2118 * t2302 + t2119 * t2306;
t2342 = t2101 * t2303 - t2190 * t2307;
t2175 = -t2236 * t2362 + t2350;
t2331 = -t2300 * t2215 - t2304 * t2291;
t2321 = t2234 * t2362 + t2331;
t2145 = t2300 * t2175 + t2304 * t2321;
t2185 = -t2378 - t2379;
t2131 = -t2145 * t2305 + t2185 * t2301;
t2132 = t2145 * t2301 + t2185 * t2305;
t2107 = -t2131 * t2302 + t2132 * t2306;
t2146 = t2304 * t2175 - t2300 * t2321;
t2341 = t2107 * t2303 - t2146 * t2307;
t2197 = -t2377 - t2379;
t2316 = -qJDD(6) - t2317;
t2314 = -t2316 - t2368;
t2155 = t2300 * t2197 + t2304 * t2314;
t2174 = t2236 * t2361 - t2350;
t2135 = -t2155 * t2305 + t2174 * t2301;
t2136 = t2155 * t2301 + t2174 * t2305;
t2113 = -t2135 * t2302 + t2136 * t2306;
t2156 = t2304 * t2197 - t2300 * t2314;
t2340 = t2113 * t2303 - t2156 * t2307;
t2183 = t2316 - t2368;
t2157 = t2300 * t2183 + t2304 * t2355;
t2176 = -t2234 * t2361 - t2331;
t2137 = -t2157 * t2305 + t2176 * t2301;
t2138 = t2157 * t2301 + t2176 * t2305;
t2115 = -t2137 * t2302 + t2138 * t2306;
t2158 = t2304 * t2183 - t2300 * t2355;
t2339 = t2115 * t2303 - t2158 * t2307;
t2199 = t2262 * t2364 + t2349;
t2165 = -t2199 * t2301 + t2386;
t2167 = -t2199 * t2305 - t2387;
t2141 = -t2165 * t2302 + t2167 * t2306;
t2338 = t2141 * t2303 - t2384;
t2249 = t2262 * t2292;
t2201 = -t2215 + t2249;
t2166 = t2201 * t2301 + t2386;
t2168 = t2201 * t2305 - t2387;
t2142 = -t2166 * t2302 + t2168 * t2306;
t2337 = t2142 * t2303 - t2384;
t2198 = t2262 * t2363 + t2349;
t2336 = -t2198 * t2307 - t2391;
t2200 = t2215 + t2249;
t2335 = t2200 * t2307 + t2391;
t2164 = -t2195 * t2302 + t2196 * t2306;
t2334 = t2164 * t2303 - t2218 * t2307;
t2202 = -t2260 * t2363 - t2320;
t2333 = t2202 * t2307 + t2395;
t2332 = -t2203 * t2307 - t2395;
t2330 = t2223 * t2303 - t2307 * t2346;
t2308 = qJD(3) ^ 2;
t2281 = -t2308 - t2365;
t2239 = -t2275 * t2302 + t2281 * t2306;
t2269 = -0.2e1 * t2357 + t2359;
t2329 = t2239 * t2303 + t2269 * t2307;
t2276 = -qJDD(3) + t2282;
t2280 = -t2293 * t2309 - t2308;
t2240 = t2276 * t2306 - t2280 * t2302;
t2267 = 0.2e1 * t2356 + t2360;
t2328 = t2240 * t2303 - t2267 * t2307;
t2270 = t2358 * qJDD(2);
t2273 = t2358 * t2309;
t2327 = t2270 * t2303 + t2273 * t2307;
t2325 = qJDD(2) * t2307 - t2303 * t2309;
t2272 = -qJDD(2) * t2303 - t2307 * t2309;
t2256 = t2325 * t2298;
t2255 = t2272 * t2298;
t2254 = t2325 * t2296;
t2253 = t2272 * t2296;
t2238 = t2276 * t2302 + t2280 * t2306;
t2237 = t2275 * t2306 + t2281 * t2302;
t2233 = t2270 * t2307 - t2273 * t2303;
t2231 = t2327 * t2298;
t2230 = t2327 * t2296;
t2221 = t2240 * t2307 + t2267 * t2303;
t2220 = t2239 * t2307 - t2269 * t2303;
t2194 = -t2296 * t2238 + t2298 * t2328;
t2193 = -t2296 * t2237 + t2298 * t2329;
t2192 = t2298 * t2238 + t2296 * t2328;
t2191 = t2298 * t2237 + t2296 * t2329;
t2184 = t2223 * t2307 + t2303 * t2346;
t2178 = -t2296 * t2246 + t2298 * t2330;
t2177 = t2298 * t2246 + t2296 * t2330;
t2163 = t2195 * t2306 + t2196 * t2302;
t2154 = t2164 * t2307 + t2218 * t2303;
t2153 = t2203 * t2303 - t2394;
t2152 = -t2202 * t2303 + t2394;
t2148 = -t2200 * t2303 + t2390;
t2147 = t2198 * t2303 - t2390;
t2140 = t2166 * t2306 + t2168 * t2302;
t2139 = t2165 * t2306 + t2167 * t2302;
t2134 = t2142 * t2307 + t2385;
t2133 = t2141 * t2307 + t2385;
t2130 = t2298 * t2332 - t2393;
t2129 = t2298 * t2333 + t2393;
t2128 = t2296 * t2332 + t2392;
t2127 = t2296 * t2333 - t2392;
t2126 = -t2296 * t2163 + t2298 * t2334;
t2125 = t2298 * t2163 + t2296 * t2334;
t2123 = t2298 * t2335 + t2389;
t2122 = t2298 * t2336 - t2389;
t2121 = t2296 * t2335 - t2388;
t2120 = t2296 * t2336 + t2388;
t2114 = t2137 * t2306 + t2138 * t2302;
t2112 = t2135 * t2306 + t2136 * t2302;
t2111 = -t2296 * t2140 + t2298 * t2337;
t2110 = -t2296 * t2139 + t2298 * t2338;
t2109 = t2298 * t2140 + t2296 * t2337;
t2108 = t2298 * t2139 + t2296 * t2338;
t2106 = t2131 * t2306 + t2132 * t2302;
t2103 = t2115 * t2307 + t2158 * t2303;
t2102 = t2113 * t2307 + t2156 * t2303;
t2100 = t2118 * t2306 + t2119 * t2302;
t2099 = t2101 * t2307 + t2190 * t2303;
t2098 = t2107 * t2307 + t2146 * t2303;
t2096 = t2116 * t2306 + t2117 * t2302;
t2095 = t2097 * t2307 + t2149 * t2303;
t2094 = -t2296 * t2114 + t2298 * t2339;
t2093 = t2298 * t2114 + t2296 * t2339;
t2090 = -t2296 * t2112 + t2298 * t2340;
t2089 = t2298 * t2112 + t2296 * t2340;
t2088 = -t2296 * t2106 + t2298 * t2341;
t2087 = t2298 * t2106 + t2296 * t2341;
t2084 = -t2296 * t2100 + t2298 * t2342;
t2083 = t2298 * t2100 + t2296 * t2342;
t2082 = -t2296 * t2096 + t2298 * t2343;
t2081 = t2298 * t2096 + t2296 * t2343;
t2079 = t2085 * t2306 + t2086 * t2302;
t2078 = t2080 * t2307 + t2092 * t2303;
t2077 = -t2296 * t2079 + t2298 * t2344;
t2076 = t2298 * t2079 + t2296 * t2344;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2297 * t2274 - t2295 * t2347, 0, 0, 0, 0, 0, 0, -t2256 * t2295 + t2272 * t2297, -t2255 * t2295 - t2297 * t2325, 0, -t2178 * t2295 + t2184 * t2297, 0, 0, 0, 0, 0, 0, -t2193 * t2295 + t2220 * t2297, -t2194 * t2295 + t2221 * t2297, -t2231 * t2295 + t2233 * t2297, -t2126 * t2295 + t2154 * t2297, 0, 0, 0, 0, 0, 0, -t2122 * t2295 + t2147 * t2297, -t2130 * t2295 + t2153 * t2297, -t2111 * t2295 + t2134 * t2297, -t2084 * t2295 + t2099 * t2297, 0, 0, 0, 0, 0, 0, -t2110 * t2295 + t2133 * t2297, -t2123 * t2295 + t2148 * t2297, -t2129 * t2295 + t2152 * t2297, -t2082 * t2295 + t2095 * t2297, 0, 0, 0, 0, 0, 0, -t2090 * t2295 + t2102 * t2297, -t2094 * t2295 + t2103 * t2297, -t2088 * t2295 + t2098 * t2297, -t2077 * t2295 + t2078 * t2297; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2295 * t2274 + t2297 * t2347, 0, 0, 0, 0, 0, 0, t2256 * t2297 + t2272 * t2295, t2255 * t2297 - t2295 * t2325, 0, t2178 * t2297 + t2184 * t2295, 0, 0, 0, 0, 0, 0, t2193 * t2297 + t2220 * t2295, t2194 * t2297 + t2221 * t2295, t2231 * t2297 + t2233 * t2295, t2126 * t2297 + t2154 * t2295, 0, 0, 0, 0, 0, 0, t2122 * t2297 + t2147 * t2295, t2130 * t2297 + t2153 * t2295, t2111 * t2297 + t2134 * t2295, t2084 * t2297 + t2099 * t2295, 0, 0, 0, 0, 0, 0, t2110 * t2297 + t2133 * t2295, t2123 * t2297 + t2148 * t2295, t2129 * t2297 + t2152 * t2295, t2082 * t2297 + t2095 * t2295, 0, 0, 0, 0, 0, 0, t2090 * t2297 + t2102 * t2295, t2094 * t2297 + t2103 * t2295, t2088 * t2297 + t2098 * t2295, t2077 * t2297 + t2078 * t2295; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2373, 0, 0, 0, 0, 0, 0, t2254, t2253, 0, t2177, 0, 0, 0, 0, 0, 0, t2191, t2192, t2230, t2125, 0, 0, 0, 0, 0, 0, t2120, t2128, t2109, t2083, 0, 0, 0, 0, 0, 0, t2108, t2121, t2127, t2081, 0, 0, 0, 0, 0, 0, t2089, t2093, t2087, t2076; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2274, 0, 0, 0, 0, 0, 0, t2272, -t2325, 0, t2184, 0, 0, 0, 0, 0, 0, t2220, t2221, t2233, t2154, 0, 0, 0, 0, 0, 0, t2147, t2153, t2134, t2099, 0, 0, 0, 0, 0, 0, t2133, t2148, t2152, t2095, 0, 0, 0, 0, 0, 0, t2102, t2103, t2098, t2078; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2347, 0, 0, 0, 0, 0, 0, t2256, t2255, 0, t2178, 0, 0, 0, 0, 0, 0, t2193, t2194, t2231, t2126, 0, 0, 0, 0, 0, 0, t2122, t2130, t2111, t2084, 0, 0, 0, 0, 0, 0, t2110, t2123, t2129, t2082, 0, 0, 0, 0, 0, 0, t2090, t2094, t2088, t2077; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2373, 0, 0, 0, 0, 0, 0, t2254, t2253, 0, t2177, 0, 0, 0, 0, 0, 0, t2191, t2192, t2230, t2125, 0, 0, 0, 0, 0, 0, t2120, t2128, t2109, t2083, 0, 0, 0, 0, 0, 0, t2108, t2121, t2127, t2081, 0, 0, 0, 0, 0, 0, t2089, t2093, t2087, t2076; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2309, -qJDD(2), 0, t2223, 0, 0, 0, 0, 0, 0, t2239, t2240, t2270, t2164, 0, 0, 0, 0, 0, 0, -t2162, -t2171, t2142, t2101, 0, 0, 0, 0, 0, 0, t2141, t2162, t2171, t2097, 0, 0, 0, 0, 0, 0, t2113, t2115, t2107, t2080; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t2309, 0, -t2346, 0, 0, 0, 0, 0, 0, t2269, -t2267, t2273, -t2218, 0, 0, 0, 0, 0, 0, -t2198, -t2203, -t2380, -t2190, 0, 0, 0, 0, 0, 0, -t2380, t2200, t2202, -t2149, 0, 0, 0, 0, 0, 0, -t2156, -t2158, -t2146, -t2092; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2246, 0, 0, 0, 0, 0, 0, t2237, t2238, 0, t2163, 0, 0, 0, 0, 0, 0, t2159, t2170, t2140, t2100, 0, 0, 0, 0, 0, 0, t2139, -t2159, -t2170, t2096, 0, 0, 0, 0, 0, 0, t2112, t2114, t2106, t2079; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2281, t2276, t2359, t2196, 0, 0, 0, 0, 0, 0, -t2189, t2209, t2168, t2119, 0, 0, 0, 0, 0, 0, t2167, t2189, -t2209, t2117, 0, 0, 0, 0, 0, 0, t2136, t2138, t2132, t2086; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2275, t2280, -t2360, t2195, 0, 0, 0, 0, 0, 0, t2186, t2207, t2166, t2118, 0, 0, 0, 0, 0, 0, t2165, -t2186, -t2207, t2116, 0, 0, 0, 0, 0, 0, t2135, t2137, t2131, t2085; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2269, t2267, -t2273, t2218, 0, 0, 0, 0, 0, 0, t2198, t2203, t2380, t2190, 0, 0, 0, 0, 0, 0, t2380, -t2200, -t2202, t2149, 0, 0, 0, 0, 0, 0, t2156, t2158, t2146, t2092; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2224, t2228, t2201, t2151, 0, 0, 0, 0, 0, 0, -t2199, -t2224, -t2228, t2143, 0, 0, 0, 0, 0, 0, t2174, t2176, t2185, t2124; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2345, t2354, t2205, t2150, 0, 0, 0, 0, 0, 0, t2205, -t2345, -t2354, -t2144, 0, 0, 0, 0, 0, 0, -t2155, -t2157, -t2145, -t2091; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2198, t2203, t2380, t2190, 0, 0, 0, 0, 0, 0, t2380, -t2200, -t2202, t2149, 0, 0, 0, 0, 0, 0, t2156, t2158, t2146, t2092; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2380, -t2200, -t2202, t2149, 0, 0, 0, 0, 0, 0, t2156, t2158, t2146, t2092; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2199, t2224, t2228, -t2143, 0, 0, 0, 0, 0, 0, -t2174, -t2176, -t2185, -t2124; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2205, t2345, t2354, t2144, 0, 0, 0, 0, 0, 0, t2155, t2157, t2145, t2091; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2197, t2183, t2175, t2105; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2314, t2355, t2321, t2310; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2174, t2176, t2185, t2124;];
f_new_reg  = t1;
