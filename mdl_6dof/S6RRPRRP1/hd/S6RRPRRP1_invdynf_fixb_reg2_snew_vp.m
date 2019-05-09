% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRPRRP1
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,theta3]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 17:21
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRPRRP1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP1_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP1_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRP1_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRP1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP1_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 17:20:54
% EndTime: 2019-05-06 17:21:01
% DurationCPUTime: 7.62s
% Computational Cost: add. (48199->288), mult. (112587->395), div. (0->0), fcn. (84991->10), ass. (0->223)
t2053 = cos(qJ(2));
t2041 = t2053 * qJDD(1);
t2049 = sin(qJ(2));
t2092 = qJD(1) * t2049;
t2075 = qJD(2) * t2092;
t2022 = t2041 - t2075;
t2044 = t2053 ^ 2;
t2056 = qJD(1) ^ 2;
t2066 = qJD(2) * pkin(2) - qJ(3) * t2092;
t2050 = sin(qJ(1));
t2054 = cos(qJ(1));
t2030 = t2050 * g(1) - t2054 * g(2);
t2067 = qJDD(1) * pkin(1) + t2030;
t1982 = t2022 * pkin(2) - t2066 * t2092 - qJDD(3) + t2067 + (qJ(3) * t2044 + pkin(7)) * t2056;
t2091 = qJD(1) * t2053;
t2074 = qJD(2) * t2091;
t2078 = t2049 * qJDD(1);
t2021 = t2074 + t2078;
t2045 = sin(pkin(10));
t2046 = cos(pkin(10));
t2002 = -t2021 * t2045 + t2046 * t2022;
t2014 = -t2045 * t2092 + t2046 * t2091;
t2013 = t2014 ^ 2;
t2015 = (t2045 * t2053 + t2046 * t2049) * qJD(1);
t2070 = qJD(2) * pkin(3) - pkin(8) * t2015;
t1957 = t2002 * pkin(3) + t2013 * pkin(8) - t2015 * t2070 + t1982;
t2081 = qJD(2) + qJD(4);
t2076 = t2081 ^ 2;
t2048 = sin(qJ(4));
t2052 = cos(qJ(4));
t1994 = -t2052 * t2014 + t2015 * t2048;
t1993 = qJD(5) + t1994;
t2102 = qJD(5) + t1993;
t2003 = t2046 * t2021 + t2022 * t2045;
t2068 = t2048 * t2002 + t2052 * t2003;
t1964 = -t1994 * qJD(4) + t2068;
t2101 = t1994 * t2081 - t1964;
t1996 = t2014 * t2048 + t2015 * t2052;
t2047 = sin(qJ(5));
t2051 = cos(qJ(5));
t1983 = t2047 * t1996 - t2051 * t2081;
t2100 = t1983 ^ 2;
t1985 = t2051 * t1996 + t2047 * t2081;
t2099 = t1985 ^ 2;
t2098 = t1993 ^ 2;
t2097 = t1994 ^ 2;
t2096 = t1996 ^ 2;
t2095 = t2015 ^ 2;
t2094 = -2 * qJD(6);
t2093 = t2049 * g(3);
t2090 = qJD(2) * t2014;
t2089 = qJD(2) * t2015;
t2088 = t1983 * t1985;
t2087 = t1994 * t1996;
t2086 = t2014 * t2015;
t2085 = t2044 * t2056;
t2031 = -g(1) * t2054 - g(2) * t2050;
t2018 = -pkin(1) * t2056 + qJDD(1) * pkin(7) + t2031;
t2084 = t2049 * t2018;
t2083 = t2049 * t2056;
t2082 = t2053 * t2018;
t2080 = qJD(5) - t1993;
t2058 = -pkin(2) * t2085 + t2022 * qJ(3) - qJD(2) * t2066 - t2093;
t2062 = qJ(3) * qJD(1) * qJD(2) + pkin(2) * t2083 - g(3);
t2063 = qJDD(2) * pkin(2) - t2021 * qJ(3) - t2084;
t1959 = t2046 * (t2058 + t2082) + t2045 * (t2053 * t2062 + t2063) + 0.2e1 * qJD(3) * t2014;
t1943 = -t2013 * pkin(3) + t2002 * pkin(8) - qJD(2) * t2070 + t1959;
t1958 = -t2045 * t2058 + t2046 * t2063 - 0.2e1 * qJD(3) * t2015 + (-t2045 * t2018 + t2046 * t2062) * t2053;
t1990 = -t2003 + t2090;
t1999 = qJDD(2) + t2086;
t2057 = pkin(3) * t1999 + pkin(8) * t1990 + t1958;
t1919 = t2052 * t1943 + t2048 * t2057;
t1972 = pkin(4) * t1994 - pkin(9) * t1996;
t2077 = qJDD(2) + qJDD(4);
t1910 = -pkin(4) * t2076 + pkin(9) * t2077 - t1994 * t1972 + t1919;
t2071 = -t2052 * t2002 + t2048 * t2003;
t1949 = (0.2e1 * qJD(4) + qJD(2)) * t1996 + t2071;
t1917 = t1949 * pkin(4) + pkin(9) * t2101 - t1957;
t1892 = t2051 * t1910 + t2047 * t1917;
t2043 = t2049 ^ 2;
t2079 = t2043 + t2044;
t1891 = -t2047 * t1910 + t2051 * t1917;
t1918 = -t2048 * t1943 + t2052 * t2057;
t2072 = t2047 * t1964 - t2051 * t2077;
t2065 = -qJD(5) * t1985 - t2072;
t2064 = -t2051 * t1964 - t2047 * t2077;
t2061 = -t1996 * qJD(4) - qJDD(5) - t2071;
t1909 = -t2077 * pkin(4) - t2076 * pkin(9) + t1996 * t1972 - t1918;
t1940 = -t2061 - t2088;
t1935 = t1983 * t2080 + t2064;
t2055 = qJD(2) ^ 2;
t2035 = t2053 * t2083;
t2034 = -t2055 - t2085;
t2033 = -t2043 * t2056 - t2055;
t2029 = -qJDD(2) + t2035;
t2028 = qJDD(2) + t2035;
t2027 = t2079 * t2056;
t2026 = -qJDD(1) * t2050 - t2054 * t2056;
t2025 = qJDD(1) * t2054 - t2050 * t2056;
t2024 = t2079 * qJDD(1);
t2023 = t2041 - 0.2e1 * t2075;
t2020 = 0.2e1 * t2074 + t2078;
t2017 = t2056 * pkin(7) + t2067;
t2010 = -t2055 - t2095;
t2009 = t2082 - t2093;
t2008 = -t2053 * g(3) - t2084;
t2007 = t2029 * t2053 - t2033 * t2049;
t2006 = -t2028 * t2049 + t2034 * t2053;
t2005 = t2029 * t2049 + t2033 * t2053;
t2004 = t2028 * t2053 + t2034 * t2049;
t2000 = -qJDD(2) + t2086;
t1998 = -t2055 - t2013;
t1991 = -t2096 - t2076;
t1989 = t2003 + t2090;
t1988 = t2002 + t2089;
t1987 = -t2002 + t2089;
t1986 = -t2013 - t2095;
t1980 = -t2008 * t2049 + t2009 * t2053;
t1979 = t2008 * t2053 + t2009 * t2049;
t1976 = t2000 * t2046 - t2010 * t2045;
t1975 = t2000 * t2045 + t2010 * t2046;
t1974 = t1998 * t2046 - t1999 * t2045;
t1973 = t1998 * t2045 + t1999 * t2046;
t1971 = -t2077 - t2087;
t1970 = t2077 - t2087;
t1969 = -t2076 - t2097;
t1967 = pkin(5) * t1993 - qJ(6) * t1985;
t1966 = t1988 * t2046 - t1990 * t2045;
t1965 = t1988 * t2045 + t1990 * t2046;
t1963 = -t2096 - t2097;
t1962 = -t1975 * t2049 + t1976 * t2053;
t1961 = t1975 * t2053 + t1976 * t2049;
t1960 = -t2098 - t2099;
t1956 = t1971 * t2052 - t1991 * t2048;
t1955 = t1971 * t2048 + t1991 * t2052;
t1954 = -t2098 - t2100;
t1953 = -t2099 - t2100;
t1952 = -qJD(2) * t1994 - t2068;
t1950 = qJD(2) * t1996 - t2071;
t1948 = -t1973 * t2049 + t1974 * t2053;
t1947 = t1973 * t2053 + t1974 * t2049;
t1946 = t1969 * t2052 - t1970 * t2048;
t1945 = t1969 * t2048 + t1970 * t2052;
t1941 = t2061 - t2088;
t1939 = -t1965 * t2049 + t1966 * t2053;
t1938 = t1965 * t2053 + t1966 * t2049;
t1934 = -t1983 * t2102 - t2064;
t1933 = -t1985 * t2080 - t2072;
t1932 = t1985 * t2102 + t2072;
t1931 = -t1958 * t2045 + t1959 * t2046;
t1930 = t1958 * t2046 + t1959 * t2045;
t1929 = -t1955 * t2045 + t1956 * t2046;
t1928 = t1955 * t2046 + t1956 * t2045;
t1927 = t1950 * t2052 - t1952 * t2048;
t1926 = t1950 * t2048 + t1952 * t2052;
t1925 = t1941 * t2051 - t1960 * t2047;
t1924 = t1941 * t2047 + t1960 * t2051;
t1923 = -t1945 * t2045 + t1946 * t2046;
t1922 = t1945 * t2046 + t1946 * t2045;
t1921 = -t1940 * t2047 + t1954 * t2051;
t1920 = t1940 * t2051 + t1954 * t2047;
t1914 = t1933 * t2051 - t1935 * t2047;
t1913 = t1933 * t2047 + t1935 * t2051;
t1912 = -t1930 * t2049 + t1931 * t2053;
t1911 = t1930 * t2053 + t1931 * t2049;
t1907 = -t1928 * t2049 + t1929 * t2053;
t1906 = t1928 * t2053 + t1929 * t2049;
t1905 = t1925 * t2052 + t1934 * t2048;
t1904 = t1925 * t2048 - t1934 * t2052;
t1903 = t1921 * t2052 + t1932 * t2048;
t1902 = t1921 * t2048 - t1932 * t2052;
t1901 = -t1926 * t2045 + t1927 * t2046;
t1900 = t1926 * t2046 + t1927 * t2045;
t1899 = t1914 * t2052 + t1953 * t2048;
t1898 = t1914 * t2048 - t1953 * t2052;
t1897 = -t1922 * t2049 + t1923 * t2053;
t1896 = t1922 * t2053 + t1923 * t2049;
t1895 = -t1918 * t2048 + t1919 * t2052;
t1894 = t1918 * t2052 + t1919 * t2048;
t1893 = -pkin(5) * t2065 - qJ(6) * t2100 + t1985 * t1967 + qJDD(6) + t1909;
t1890 = -t1904 * t2045 + t1905 * t2046;
t1889 = t1904 * t2046 + t1905 * t2045;
t1888 = -t1902 * t2045 + t1903 * t2046;
t1887 = t1902 * t2046 + t1903 * t2045;
t1886 = -t1900 * t2049 + t1901 * t2053;
t1885 = t1900 * t2053 + t1901 * t2049;
t1884 = -t1898 * t2045 + t1899 * t2046;
t1883 = t1898 * t2046 + t1899 * t2045;
t1882 = -t1993 * t1967 + t2065 * qJ(6) + (-pkin(5) * t1983 + t2094) * t1983 + t1892;
t1881 = pkin(5) * t1940 + qJ(6) * t1935 + t1985 * t2094 + t1891;
t1880 = -t1894 * t2045 + t1895 * t2046;
t1879 = t1894 * t2046 + t1895 * t2045;
t1878 = -t1891 * t2047 + t1892 * t2051;
t1877 = t1891 * t2051 + t1892 * t2047;
t1876 = -t1889 * t2049 + t1890 * t2053;
t1875 = t1889 * t2053 + t1890 * t2049;
t1874 = -t1887 * t2049 + t1888 * t2053;
t1873 = t1887 * t2053 + t1888 * t2049;
t1872 = t1878 * t2052 + t1909 * t2048;
t1871 = t1878 * t2048 - t1909 * t2052;
t1870 = -t1883 * t2049 + t1884 * t2053;
t1869 = t1883 * t2053 + t1884 * t2049;
t1868 = t1876 * t2054 + t1924 * t2050;
t1867 = t1876 * t2050 - t1924 * t2054;
t1866 = t1874 * t2054 + t1920 * t2050;
t1865 = t1874 * t2050 - t1920 * t2054;
t1864 = -t1881 * t2047 + t1882 * t2051;
t1863 = t1881 * t2051 + t1882 * t2047;
t1862 = t1870 * t2054 + t1913 * t2050;
t1861 = t1870 * t2050 - t1913 * t2054;
t1860 = -t1879 * t2049 + t1880 * t2053;
t1859 = t1879 * t2053 + t1880 * t2049;
t1858 = t1864 * t2052 + t1893 * t2048;
t1857 = t1864 * t2048 - t1893 * t2052;
t1856 = -t1871 * t2045 + t1872 * t2046;
t1855 = t1871 * t2046 + t1872 * t2045;
t1854 = -t1857 * t2045 + t1858 * t2046;
t1853 = t1857 * t2046 + t1858 * t2045;
t1852 = -t1855 * t2049 + t1856 * t2053;
t1851 = t1855 * t2053 + t1856 * t2049;
t1850 = -t1853 * t2049 + t1854 * t2053;
t1849 = t1853 * t2053 + t1854 * t2049;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2026, -t2025, 0, -t2030 * t2050 + t2031 * t2054, 0, 0, 0, 0, 0, 0, t2006 * t2054 - t2023 * t2050, t2007 * t2054 + t2020 * t2050, t2024 * t2054 - t2027 * t2050, t1980 * t2054 - t2017 * t2050, 0, 0, 0, 0, 0, 0, t1948 * t2054 + t1987 * t2050, t1962 * t2054 + t1989 * t2050, t1939 * t2054 + t1986 * t2050, t1912 * t2054 - t1982 * t2050, 0, 0, 0, 0, 0, 0, t1897 * t2054 + t1949 * t2050, t1907 * t2054 - t2050 * t2101, t1886 * t2054 + t1963 * t2050, t1860 * t2054 - t1957 * t2050, 0, 0, 0, 0, 0, 0, t1866, t1868, t1862, t1852 * t2054 + t1877 * t2050, 0, 0, 0, 0, 0, 0, t1866, t1868, t1862, t1850 * t2054 + t1863 * t2050; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2025, t2026, 0, t2030 * t2054 + t2031 * t2050, 0, 0, 0, 0, 0, 0, t2006 * t2050 + t2023 * t2054, t2007 * t2050 - t2020 * t2054, t2024 * t2050 + t2027 * t2054, t1980 * t2050 + t2017 * t2054, 0, 0, 0, 0, 0, 0, t1948 * t2050 - t1987 * t2054, t1962 * t2050 - t1989 * t2054, t1939 * t2050 - t1986 * t2054, t1912 * t2050 + t1982 * t2054, 0, 0, 0, 0, 0, 0, t1897 * t2050 - t1949 * t2054, t1907 * t2050 + t2054 * t2101, t1886 * t2050 - t1963 * t2054, t1860 * t2050 + t1957 * t2054, 0, 0, 0, 0, 0, 0, t1865, t1867, t1861, t1852 * t2050 - t1877 * t2054, 0, 0, 0, 0, 0, 0, t1865, t1867, t1861, t1850 * t2050 - t1863 * t2054; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2004, t2005, 0, t1979, 0, 0, 0, 0, 0, 0, t1947, t1961, t1938, t1911, 0, 0, 0, 0, 0, 0, t1896, t1906, t1885, t1859, 0, 0, 0, 0, 0, 0, t1873, t1875, t1869, t1851, 0, 0, 0, 0, 0, 0, t1873, t1875, t1869, t1849; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2056, -qJDD(1), 0, t2031, 0, 0, 0, 0, 0, 0, t2006, t2007, t2024, t1980, 0, 0, 0, 0, 0, 0, t1948, t1962, t1939, t1912, 0, 0, 0, 0, 0, 0, t1897, t1907, t1886, t1860, 0, 0, 0, 0, 0, 0, t1874, t1876, t1870, t1852, 0, 0, 0, 0, 0, 0, t1874, t1876, t1870, t1850; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2056, 0, t2030, 0, 0, 0, 0, 0, 0, t2023, -t2020, t2027, t2017, 0, 0, 0, 0, 0, 0, -t1987, -t1989, -t1986, t1982, 0, 0, 0, 0, 0, 0, -t1949, t2101, -t1963, t1957, 0, 0, 0, 0, 0, 0, -t1920, -t1924, -t1913, -t1877, 0, 0, 0, 0, 0, 0, -t1920, -t1924, -t1913, -t1863; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2004, t2005, 0, t1979, 0, 0, 0, 0, 0, 0, t1947, t1961, t1938, t1911, 0, 0, 0, 0, 0, 0, t1896, t1906, t1885, t1859, 0, 0, 0, 0, 0, 0, t1873, t1875, t1869, t1851, 0, 0, 0, 0, 0, 0, t1873, t1875, t1869, t1849; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2034, t2029, t2041, t2009, 0, 0, 0, 0, 0, 0, t1974, t1976, t1966, t1931, 0, 0, 0, 0, 0, 0, t1923, t1929, t1901, t1880, 0, 0, 0, 0, 0, 0, t1888, t1890, t1884, t1856, 0, 0, 0, 0, 0, 0, t1888, t1890, t1884, t1854; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2028, t2033, -t2078, t2008, 0, 0, 0, 0, 0, 0, t1973, t1975, t1965, t1930, 0, 0, 0, 0, 0, 0, t1922, t1928, t1900, t1879, 0, 0, 0, 0, 0, 0, t1887, t1889, t1883, t1855, 0, 0, 0, 0, 0, 0, t1887, t1889, t1883, t1853; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2023, t2020, -t2027, -t2017, 0, 0, 0, 0, 0, 0, t1987, t1989, t1986, -t1982, 0, 0, 0, 0, 0, 0, t1949, -t2101, t1963, -t1957, 0, 0, 0, 0, 0, 0, t1920, t1924, t1913, t1877, 0, 0, 0, 0, 0, 0, t1920, t1924, t1913, t1863; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1998, t2000, t1988, t1959, 0, 0, 0, 0, 0, 0, t1946, t1956, t1927, t1895, 0, 0, 0, 0, 0, 0, t1903, t1905, t1899, t1872, 0, 0, 0, 0, 0, 0, t1903, t1905, t1899, t1858; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1999, t2010, t1990, t1958, 0, 0, 0, 0, 0, 0, t1945, t1955, t1926, t1894, 0, 0, 0, 0, 0, 0, t1902, t1904, t1898, t1871, 0, 0, 0, 0, 0, 0, t1902, t1904, t1898, t1857; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1987, t1989, t1986, -t1982, 0, 0, 0, 0, 0, 0, t1949, -t2101, t1963, -t1957, 0, 0, 0, 0, 0, 0, t1920, t1924, t1913, t1877, 0, 0, 0, 0, 0, 0, t1920, t1924, t1913, t1863; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1969, t1971, t1950, t1919, 0, 0, 0, 0, 0, 0, t1921, t1925, t1914, t1878, 0, 0, 0, 0, 0, 0, t1921, t1925, t1914, t1864; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1970, t1991, t1952, t1918, 0, 0, 0, 0, 0, 0, -t1932, -t1934, -t1953, -t1909, 0, 0, 0, 0, 0, 0, -t1932, -t1934, -t1953, -t1893; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1949, -t2101, t1963, -t1957, 0, 0, 0, 0, 0, 0, t1920, t1924, t1913, t1877, 0, 0, 0, 0, 0, 0, t1920, t1924, t1913, t1863; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1954, t1941, t1933, t1892, 0, 0, 0, 0, 0, 0, t1954, t1941, t1933, t1882; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1940, t1960, t1935, t1891, 0, 0, 0, 0, 0, 0, t1940, t1960, t1935, t1881; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1932, t1934, t1953, t1909, 0, 0, 0, 0, 0, 0, t1932, t1934, t1953, t1893; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1954, t1941, t1933, t1882; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1940, t1960, t1935, t1881; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1932, t1934, t1953, t1893;];
f_new_reg  = t1;
