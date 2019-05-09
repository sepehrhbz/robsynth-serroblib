% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RRPRPR14
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d6]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 17:02
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RRPRPR14_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR14_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR14_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR14_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR14_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRPR14_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 17:01:15
% EndTime: 2019-05-06 17:02:05
% DurationCPUTime: 54.62s
% Computational Cost: add. (177910->1006), mult. (403764->1274), div. (0->0), fcn. (293703->10), ass. (0->683)
t1808 = sin(qJ(4));
t1805 = sin(pkin(6));
t1809 = sin(qJ(2));
t1980 = t1805 * t1809;
t1942 = qJD(1) * t1980;
t1786 = qJD(4) + t1942;
t1780 = t1786 ^ 2;
t1806 = cos(pkin(6));
t1798 = qJD(1) * t1806 + qJD(2);
t1812 = cos(qJ(4));
t1813 = cos(qJ(2));
t1979 = t1805 * t1813;
t1948 = qJD(1) * t1979;
t1751 = t1798 * t1812 - t1808 * t1948;
t2040 = t1751 ^ 2;
t2048 = -t2040 + t1780;
t1763 = (qJD(1) * qJD(2) * t1813 + qJDD(1) * t1809) * t1805;
t1755 = qJDD(4) + t1763;
t1749 = t1798 * t1808 + t1812 * t1948;
t1996 = t1751 * t1749;
t2050 = -t1996 + t1755;
t2105 = t1812 * t2050;
t1601 = t1808 * t2048 - t2105;
t2108 = t1808 * t2050;
t1596 = t1812 * t2048 + t2108;
t1954 = qJDD(1) * t1805;
t1764 = -qJD(2) * t1942 + t1813 * t1954;
t1797 = qJDD(1) * t1806 + qJDD(2);
t1874 = t1808 * t1764 - t1812 * t1797;
t1961 = qJD(4) - t1786;
t1641 = t1749 * t1961 + t1874;
t1884 = t1596 * t1813 + t1641 * t1809;
t1481 = -t1601 * t1805 + t1806 * t1884;
t1524 = t1596 * t1809 - t1641 * t1813;
t1810 = sin(qJ(1));
t1814 = cos(qJ(1));
t2156 = t1481 * t1810 + t1524 * t1814;
t2155 = t1481 * t1814 - t1524 * t1810;
t1746 = t1749 ^ 2;
t1692 = -t1780 - t1746;
t1579 = t1692 * t1808 + t2105;
t2154 = pkin(3) * t1579;
t2153 = pkin(9) * t1579;
t1581 = t1692 * t1812 - t2108;
t2152 = pkin(9) * t1581;
t2151 = qJ(3) * t1581;
t2150 = t1579 * t1809;
t2149 = t1579 * t1813;
t2035 = -pkin(2) - pkin(9);
t2148 = t1579 * t2035;
t2147 = t1581 * t2035;
t2146 = t1805 * t1581;
t2145 = t1806 * t1581;
t1477 = t1806 * t1601 + t1805 * t1884;
t1705 = t2040 + t1780;
t2049 = t1996 + t1755;
t2070 = t2049 * t1808;
t1590 = t1705 * t1812 + t2070;
t2142 = pkin(3) * t1590;
t2141 = pkin(9) * t1590;
t2069 = t2049 * t1812;
t1593 = t1705 * t1808 - t2069;
t2140 = pkin(9) * t1593;
t2139 = qJ(3) * t1593;
t2138 = t1590 * t1809;
t2137 = t1590 * t1813;
t2136 = t1590 * t2035;
t2135 = t1593 * t2035;
t1722 = t1780 - t1746;
t1598 = t1722 * t1808 - t2069;
t2134 = t1598 * t1809;
t2133 = t1598 * t1813;
t2132 = t1805 * t1593;
t1602 = t1722 * t1812 + t2070;
t2131 = t1805 * t1602;
t2130 = t1806 * t1593;
t2129 = t1806 * t1602;
t1773 = t1798 * t1942;
t1727 = t1764 - t1773;
t1804 = t1813 ^ 2;
t1803 = t1805 ^ 2;
t1815 = qJD(1) ^ 2;
t1986 = t1803 * t1815;
t1943 = t1804 * t1986;
t2039 = t1798 ^ 2;
t1768 = -t1943 - t2039;
t1962 = t1813 * t1815;
t1987 = t1803 * t1809;
t1784 = t1962 * t1987;
t2051 = -t1797 - t1784;
t1993 = t2051 * t1813;
t1876 = t1768 * t1809 - t1993;
t1653 = t1805 * t1727 + t1806 * t1876;
t1994 = t2051 * t1809;
t1712 = -t1768 * t1813 - t1994;
t2128 = pkin(7) * (t1653 * t1814 - t1712 * t1810);
t2127 = pkin(7) * (t1653 * t1810 + t1712 * t1814);
t2038 = t1809 ^ 2;
t1795 = t2038 * t1986;
t1742 = -t1795 - t2039;
t1762 = -t1784 + t1797;
t1992 = t1762 * t1809;
t1878 = t1742 * t1813 - t1992;
t1774 = t1798 * t1948;
t2052 = t1774 + t1763;
t1629 = -t1805 * t2052 + t1806 * t1878;
t1991 = t1762 * t1813;
t1695 = t1742 * t1809 + t1991;
t2126 = pkin(7) * (t1629 * t1814 - t1695 * t1810);
t2125 = pkin(7) * (t1629 * t1810 + t1695 * t1814);
t1978 = t1806 * t1727;
t1647 = t1805 * t1876 - t1978;
t2124 = pkin(8) * (t1647 * t1805 + t1653 * t1806);
t1977 = t1806 * t2052;
t1627 = t1805 * t1878 + t1977;
t2123 = pkin(8) * (t1627 * t1805 + t1629 * t1806);
t1925 = t1764 * t1812 + t1808 * t1797;
t1861 = qJD(4) * t1751 + t1925;
t1990 = t1786 * t1808;
t1941 = t1749 * t1990;
t1618 = -t1812 * t1861 + t1941;
t1944 = t1813 * t1996;
t2068 = t1618 * t1809 - t1944;
t1989 = t1786 * t1812;
t1823 = t1749 * t1989 + t1808 * t1861;
t1945 = t1809 * t1996;
t2067 = -t1618 * t1813 - t1945;
t2091 = -t1805 * t1823 + t1806 * t2067;
t2120 = -t1810 * t2091 + t1814 * t2068;
t1687 = -qJD(4) * t1749 - t1874;
t1721 = t1751 * t1989;
t2054 = t1687 * t1808 + t1721;
t2066 = t1809 * t2054 + t1944;
t1917 = t1687 * t1812 - t1751 * t1990;
t2065 = -t1813 * t2054 + t1945;
t2092 = -t1805 * t1917 + t1806 * t2065;
t2119 = -t1810 * t2092 + t1814 * t2066;
t2118 = t1810 * t2068 + t1814 * t2091;
t2117 = t1810 * t2066 + t1814 * t2092;
t2116 = pkin(1) * t1627;
t2115 = pkin(1) * t1629;
t2114 = pkin(1) * t1647;
t2113 = pkin(1) * t1653;
t2112 = t1641 * t1808;
t2110 = t1641 * t1812;
t1997 = t1749 * t1786;
t1640 = t1687 - t1997;
t1730 = -t1774 + t1763;
t1766 = -t1795 + t2039;
t1877 = t1766 * t1813 - t1994;
t1649 = -t1805 * t1730 + t1806 * t1877;
t1707 = -t1766 * t1809 - t1993;
t2100 = t1649 * t1810 - t1707 * t1814;
t2099 = t1649 * t1814 + t1707 * t1810;
t1731 = t1764 + t1773;
t1767 = t1943 - t2039;
t1875 = t1767 * t1809 + t1991;
t1651 = -t1805 * t1731 + t1806 * t1875;
t1710 = -t1767 * t1813 + t1992;
t2098 = t1651 * t1810 + t1710 * t1814;
t2097 = t1651 * t1814 - t1710 * t1810;
t2094 = t1805 * t2065 + t1806 * t1917;
t2093 = t1805 * t2067 + t1806 * t1823;
t2037 = 2 * qJD(3);
t2053 = -t1746 - t2040;
t2088 = pkin(3) * t2053;
t2087 = pkin(8) * t1695;
t2086 = pkin(8) * t1712;
t2085 = qJ(3) * t2053;
t1807 = sin(qJ(6));
t1811 = cos(qJ(6));
t1715 = -t1749 * t1811 + t1786 * t1807;
t1717 = t1749 * t1807 + t1786 * t1811;
t1656 = t1717 * t1715;
t1683 = qJDD(6) + t1687;
t2056 = -t1656 + t1683;
t2076 = t1807 * t2056;
t2047 = t2040 - t1746;
t2075 = t1809 * t2047;
t2074 = t1809 * t2053;
t2073 = t1811 * t2056;
t2072 = t1813 * t2047;
t2071 = t1813 * t2053;
t2064 = qJ(3) * t2052;
t1760 = pkin(3) * t1942 - pkin(9) * t1798;
t1789 = g(1) * t1814 + g(2) * t1810;
t1758 = -pkin(1) * t1815 + pkin(8) * t1954 - t1789;
t2032 = pkin(2) * t1813;
t1919 = qJ(3) * t1809 + t2032;
t2014 = qJD(1) * t1805;
t1759 = t1919 * t2014;
t1788 = g(1) * t1810 - g(2) * t1814;
t2022 = pkin(8) * t1805;
t1757 = qJDD(1) * pkin(1) + t1815 * t2022 + t1788;
t1974 = t1806 * t1809;
t1916 = -g(3) * t1980 + t1757 * t1974;
t1822 = -t2039 * pkin(2) + t1813 * (-t1759 * t2014 + t1758) + t1916;
t2015 = t1797 * qJ(3);
t2045 = pkin(3) * t1764 - pkin(9) * t1943 + t2015;
t1560 = (t2037 + t1760) * t1798 + t1822 + t2045;
t2046 = t1861 * pkin(4) - qJ(5) * t1640;
t1817 = t1560 + t2046;
t1938 = pkin(4) * t1786 - (2 * qJD(5));
t1455 = t1751 * t1938 + t1817;
t1940 = qJ(5) * t1808 + pkin(3);
t2027 = pkin(4) * t1812;
t2063 = t1455 * (t1940 + t2027);
t1960 = qJD(4) + t1786;
t1828 = -t1749 * t1960 - t1874;
t2058 = t1808 * t1828;
t2057 = t1812 * t1828;
t1787 = -0.2e1 * qJD(3) * t1942;
t1771 = pkin(2) * t1773;
t2017 = t1806 * g(3);
t1936 = -t1771 + t2017;
t1870 = t1763 * qJ(3) + t1936;
t1988 = t1798 * t1813;
t1950 = qJ(3) * t1988;
t1561 = -pkin(3) * t1943 + t1787 + t2035 * t1764 + (-t1757 + (-t1760 * t1809 - t1950) * qJD(1)) * t1805 - t1870;
t1973 = t1806 * t1813;
t1927 = -t1757 * t1973 + t1809 * t1758;
t1855 = -pkin(2) * t1797 - qJ(3) * t2039 + qJDD(3) + t1927;
t1995 = t1759 * t1809;
t2019 = g(3) * t1813;
t1563 = t1763 * pkin(3) + t2051 * pkin(9) + (t2019 + (-pkin(3) * t1988 - t1995) * qJD(1)) * t1805 + t1855;
t1470 = t1808 * t1561 - t1563 * t1812;
t1699 = pkin(4) * t1749 - qJ(5) * t1751;
t1440 = -pkin(4) * t1755 - qJ(5) * t1780 + t1751 * t1699 + qJDD(5) + t1470;
t1394 = -t2050 * pkin(10) + (t1687 + t1997) * pkin(5) + t1440;
t1720 = pkin(5) * t1751 - pkin(10) * t1786;
t1407 = t1925 * pkin(10) + t1817 - t1746 * pkin(5) + (pkin(10) * qJD(4) - t1720 + t1938) * t1751;
t1357 = -t1394 * t1811 + t1407 * t1807;
t1358 = t1394 * t1807 + t1407 * t1811;
t1323 = -t1357 * t1811 + t1358 * t1807;
t1471 = t1812 * t1561 + t1808 * t1563;
t1929 = t1470 * t1812 - t1808 * t1471;
t1585 = -qJD(6) * t1715 + t1755 * t1811 + t1807 * t1861;
t1744 = qJD(6) + t1751;
t1678 = t1744 * t1715;
t2055 = -t1678 + t1585;
t1820 = t1798 * t2037 + t1822;
t1732 = t1786 * t1751;
t1634 = t1732 + t1861;
t2012 = qJD(5) * t1751;
t1425 = t1817 - 0.2e1 * t2012 + (t1634 + t1732) * pkin(4);
t2044 = t1812 * t1425 + t1634 * t1940;
t1928 = t1807 * t1755 - t1811 * t1861;
t1538 = (qJD(6) - t1744) * t1717 + t1928;
t1857 = (-t1749 * t1812 + t1751 * t1808) * t1786;
t2043 = t1755 * t1980 + t1806 * t1857;
t2042 = t1755 * t1974 - t1805 * t1857;
t1645 = t1806 * t1731 + t1805 * t1875;
t1643 = t1806 * t1730 + t1805 * t1877;
t1424 = -pkin(4) * t1732 + qJ(5) * t1828 - t1798 * t1760 - t1820 + 0.2e1 * t2012 - t2045 - t2046;
t2041 = t1828 * (pkin(3) + t2027) + t1808 * t1424;
t1713 = t1715 ^ 2;
t1714 = t1717 ^ 2;
t1741 = t1744 ^ 2;
t2036 = 2 * qJD(5);
t2034 = -pkin(4) - pkin(10);
t2033 = pkin(2) * t1809;
t2031 = pkin(3) * t1929;
t1635 = t1732 - t1861;
t1545 = t1635 * t1808 + t2110;
t2030 = pkin(3) * t1545;
t2029 = pkin(3) * t1560;
t2028 = pkin(4) * t1808;
t2026 = pkin(5) * t1323;
t1826 = -pkin(4) * t1780 + t1755 * qJ(5) - t1749 * t1699 + t1471;
t1398 = -t1861 * pkin(5) - t1746 * pkin(10) + (t2036 + t1720) * t1786 + t1826;
t2025 = pkin(5) * t1398;
t1541 = t1678 + t1585;
t1449 = -t1538 * t1807 - t1541 * t1811;
t2024 = pkin(5) * t1449;
t1770 = -t1795 - t1943;
t1879 = -t1730 * t1813 + t1731 * t1809;
t1614 = -t1805 * t1770 + t1806 * t1879;
t1660 = t1730 * t1809 + t1731 * t1813;
t2023 = pkin(7) * (t1614 * t1814 + t1660 * t1810);
t2021 = pkin(8) * t1806;
t2020 = pkin(10) * t1323;
t2018 = t1764 * pkin(2);
t2016 = qJ(5) * t1812;
t2010 = t1634 * t1812;
t2002 = t1727 * t1809;
t2001 = t1727 * t1813;
t2000 = t1744 * t1717;
t1999 = t1744 * t1807;
t1998 = t1744 * t1811;
t1981 = t1805 * t1797;
t1972 = t1807 * t1398;
t1576 = t1656 + t1683;
t1971 = t1807 * t1576;
t1969 = t1808 * t1425;
t1967 = t1808 * t1560;
t1735 = t1805 * t1757 + t2017;
t1966 = t1809 * t1735;
t1396 = t1811 * t1398;
t1965 = t1811 * t1576;
t1559 = t1812 * t1560;
t1963 = t1813 * t1735;
t1958 = t1424 * t1812 - t1828 * t2028;
t1434 = t1786 * t2036 + t1826;
t1957 = -pkin(4) * t1440 + qJ(5) * t1434;
t1956 = pkin(1) * t1614 + t1660 * t2022;
t1642 = -t1751 * t1961 - t1925;
t1955 = pkin(4) * t1641 + qJ(5) * t1642;
t1953 = t1809 * t2037;
t1952 = -t1714 - t1741;
t1949 = t1798 * t2014;
t1947 = t1808 * t1656;
t1946 = t1812 * t1656;
t1612 = t1806 * t1770 + t1805 * t1879;
t1939 = -pkin(1) * t1612 + t1660 * t2021;
t1508 = t1811 * t1952 - t1971;
t1937 = -pkin(10) * t1508 + t1396;
t1935 = -qJ(3) + t2016;
t1324 = t1807 * t1357 + t1811 * t1358;
t1296 = t1324 * t2034 + t2025;
t1298 = -qJ(5) * t1324 + t2026;
t1934 = -t1808 * t1296 + t1298 * t1812;
t1451 = -t1538 * t1811 + t1541 * t1807;
t1587 = -t1713 - t1714;
t1848 = pkin(5) * t1587 - t1324;
t1312 = t1451 * t2034 + t1848;
t1386 = -qJ(5) * t1451 + t2024;
t1933 = -t1808 * t1312 + t1386 * t1812;
t1604 = -t1741 - t1713;
t1502 = t1604 * t1811 - t2076;
t1501 = t1604 * t1807 + t2073;
t1867 = -pkin(5) * t1501 + t1357;
t1336 = -qJ(5) * t1502 - t1867;
t1537 = (qJD(6) + t1744) * t1717 + t1928;
t1913 = pkin(5) * t1537 + t1396;
t1350 = t1502 * t2034 + t1913;
t1932 = t1336 * t1812 - t1808 * t1350;
t1509 = -t1807 * t1952 - t1965;
t1847 = -pkin(5) * t1508 + t1358;
t1338 = -qJ(5) * t1509 - t1847;
t1912 = pkin(5) * t2055 - t1972;
t1352 = t1509 * t2034 + t1912;
t1931 = t1338 * t1812 - t1808 * t1352;
t1408 = -pkin(4) * t2053 + t1434;
t1412 = -qJ(5) * t2053 + t1440;
t1930 = -t1808 * t1408 + t1412 * t1812;
t1390 = t1808 * t1470 + t1471 * t1812;
t1924 = -t1788 * t1810 - t1789 * t1814;
t1375 = t1434 * t1808 - t1440 * t1812;
t1923 = -pkin(3) * t1375 - t1957;
t1546 = t1642 * t1808 + t2110;
t1922 = -pkin(3) * t1546 - t1955;
t1921 = -pkin(4) * t1323 + qJ(5) * t1398 - t2020;
t1782 = qJDD(1) * t1814 - t1810 * t1815;
t1920 = -pkin(7) * t1782 - g(3) * t1810;
t1633 = t1751 * t1960 + t1925;
t1915 = pkin(3) * t1633 + t1559;
t1914 = pkin(3) * t1640 - t1967;
t1911 = -t1966 - t2087;
t1910 = t1963 - t2086;
t1909 = -pkin(10) * t1501 + t1972;
t1908 = qJD(1) * t1798 - t1806 * t1815;
t1316 = -t1323 * t1812 + t1398 * t1808;
t1907 = -t1316 * t1813 + t1324 * t1809;
t1906 = -t1375 * t1813 + t1455 * t1809;
t1905 = t1560 * t1809 + t1813 * t1929;
t1409 = -t1449 * t1812 + t1587 * t1808;
t1904 = -t1409 * t1813 + t1451 * t1809;
t1448 = -t1537 * t1807 + t1811 * t2055;
t1655 = t1714 - t1713;
t1419 = -t1448 * t1812 + t1655 * t1808;
t1450 = -t1537 * t1811 - t1807 * t2055;
t1903 = -t1419 * t1813 + t1450 * t1809;
t1431 = -t1501 * t1812 + t1537 * t1808;
t1902 = -t1431 * t1813 + t1502 * t1809;
t1441 = -t1508 * t1812 + t1808 * t2055;
t1901 = -t1441 * t1813 + t1509 * t1809;
t1670 = t1713 - t1741;
t1521 = t1670 * t1807 + t1965;
t1443 = -t1521 * t1812 - t1538 * t1808;
t1523 = t1670 * t1811 - t1971;
t1900 = -t1443 * t1813 + t1523 * t1809;
t1671 = -t1714 + t1741;
t1520 = t1671 * t1811 + t2076;
t1444 = -t1520 * t1812 + t1541 * t1808;
t1522 = -t1671 * t1807 + t2073;
t1899 = -t1444 * t1813 + t1522 * t1809;
t1584 = -qJD(6) * t1717 - t1928;
t1530 = -t1584 * t1811 - t1715 * t1999;
t1484 = t1530 * t1812 - t1947;
t1531 = t1584 * t1807 - t1715 * t1998;
t1898 = -t1484 * t1813 - t1531 * t1809;
t1532 = t1585 * t1807 + t1717 * t1998;
t1485 = t1532 * t1812 - t1947;
t1533 = t1585 * t1811 - t1717 * t1999;
t1897 = t1485 * t1813 + t1533 * t1809;
t1577 = (-t1715 * t1807 - t1717 * t1811) * t1744;
t1528 = -t1577 * t1812 + t1683 * t1808;
t1578 = (-t1715 * t1811 + t1717 * t1807) * t1744;
t1896 = -t1528 * t1813 + t1578 * t1809;
t1543 = -t1633 * t1808 + t2057;
t1895 = -t1543 * t1813 + t2075;
t1544 = -t1634 * t1808 + t2057;
t1894 = -t1544 * t1813 + t2075;
t1893 = -t1545 * t1813 + t2074;
t1892 = -t1546 * t1813 + t2074;
t1891 = t1633 * t1809 - t2149;
t1890 = -t1634 * t1809 + t2149;
t1594 = t1820 + t2015;
t1583 = -pkin(2) * t1770 + t1594;
t1606 = (-qJD(1) * t1995 + t2019) * t1805 + t1855;
t1588 = -qJ(3) * t1770 + t1606;
t1889 = t1583 * t1813 + t1588 * t1809;
t1888 = -t1809 * t1828 - t2137;
t1887 = t1640 * t1809 + t2137;
t1886 = t1594 * t1809 - t1606 * t1813;
t1883 = -t1635 * t1809 - t2133;
t1882 = t1642 * t1809 + t2133;
t1693 = g(3) * t1979 + t1927;
t1694 = t1813 * t1758 + t1916;
t1881 = -t1813 * t1693 + t1809 * t1694;
t1589 = t1693 * t1809 + t1694 * t1813;
t1880 = t1813 * t2052 + t2002;
t1873 = t1788 * t1814 - t1789 * t1810;
t1871 = -pkin(4) * t1508 + qJ(5) * t2055 + t1937;
t1869 = -t1390 + t2088;
t1868 = t1470 - t2154;
t1866 = -pkin(10) * t1449 - t1323;
t1860 = (-t1612 * t1805 - t1614 * t1806) * pkin(8);
t1858 = -pkin(3) * t1316 - t1921;
t1856 = -pkin(4) * t1501 + qJ(5) * t1537 + t1909;
t1854 = pkin(3) * t1324 - t1812 * t1296 - t1808 * t1298;
t1853 = pkin(3) * t1451 - t1812 * t1312 - t1808 * t1386;
t1852 = pkin(3) * t1502 - t1808 * t1336 - t1812 * t1350;
t1851 = pkin(3) * t1509 - t1808 * t1338 - t1812 * t1352;
t1850 = -t1812 * t1408 - t1808 * t1412 + t2088;
t1849 = t1471 + t2142;
t1317 = t1323 * t1808 + t1398 * t1812;
t1274 = t1317 * t2035 + t1854;
t1284 = -qJ(3) * t1317 - t1858;
t1295 = t1316 * t1809 + t1324 * t1813;
t1846 = pkin(8) * t1295 + t1274 * t1813 + t1284 * t1809;
t1410 = t1449 * t1808 + t1587 * t1812;
t1294 = t1410 * t2035 + t1853;
t1833 = -pkin(4) * t1449 + qJ(5) * t1587 + t1866;
t1827 = -pkin(3) * t1409 - t1833;
t1301 = -qJ(3) * t1410 - t1827;
t1372 = t1409 * t1809 + t1451 * t1813;
t1845 = pkin(8) * t1372 + t1294 * t1813 + t1301 * t1809;
t1432 = t1501 * t1808 + t1537 * t1812;
t1303 = t1432 * t2035 + t1852;
t1829 = -pkin(3) * t1431 - t1856;
t1327 = -qJ(3) * t1432 - t1829;
t1387 = t1431 * t1809 + t1502 * t1813;
t1844 = pkin(8) * t1387 + t1303 * t1813 + t1327 * t1809;
t1442 = t1508 * t1808 + t1812 * t2055;
t1305 = t1442 * t2035 + t1851;
t1834 = -pkin(3) * t1441 - t1871;
t1332 = -qJ(3) * t1442 - t1834;
t1388 = t1441 * t1809 + t1509 * t1813;
t1843 = pkin(8) * t1388 + t1305 * t1813 + t1332 * t1809;
t1376 = t1434 * t1812 + t1440 * t1808;
t1315 = t1376 * t2035 + t2063;
t1318 = -qJ(3) * t1376 - t1923;
t1351 = t1375 * t1809 + t1455 * t1813;
t1842 = pkin(8) * t1351 + t1315 * t1813 + t1318 * t1809;
t1342 = t1390 * t2035 + t2029;
t1349 = -qJ(3) * t1390 - t2031;
t1378 = t1560 * t1813 - t1809 * t1929;
t1841 = pkin(8) * t1378 + t1342 * t1813 + t1349 * t1809;
t1550 = t1642 * t1812 - t2112;
t1344 = t1550 * t2035 + t1850;
t1400 = -qJ(3) * t1550 - t1922;
t1490 = t1546 * t1809 + t2071;
t1840 = pkin(8) * t1490 + t1344 * t1813 + t1400 * t1809;
t1549 = t1635 * t1812 - t2112;
t1362 = t1549 * t2035 + t1869;
t1453 = -qJ(3) * t1549 + t2030;
t1491 = t1545 * t1809 + t2071;
t1839 = pkin(8) * t1491 + t1362 * t1813 + t1453 * t1809;
t1370 = -t2044 - t2147;
t1824 = -pkin(4) * t2050 - qJ(5) * t1692 + t1440;
t1821 = -t1824 + t2154;
t1379 = -t1821 + t2151;
t1514 = -t1634 * t1813 - t2150;
t1838 = pkin(8) * t1514 + t1370 * t1813 + t1379 * t1809;
t1374 = -t2041 - t2135;
t1819 = pkin(4) * t1705 + qJ(5) * t2049 + t1434;
t1818 = -t1819 - t2142;
t1380 = -t1818 + t2139;
t1518 = -t1813 * t1828 + t2138;
t1837 = pkin(8) * t1518 + t1374 * t1813 + t1380 * t1809;
t1395 = -t1868 - t2151;
t1404 = t1915 + t2147;
t1513 = t1633 * t1813 + t2150;
t1836 = pkin(8) * t1513 + t1395 * t1809 + t1404 * t1813;
t1399 = -t1849 - t2139;
t1416 = t1914 + t2135;
t1517 = t1640 * t1813 - t2138;
t1835 = pkin(8) * t1517 + t1399 * t1809 + t1416 * t1813;
t1571 = t2018 + (qJD(1) * t1953 + t1757) * t1805 + 0.2e1 * t2064 + t1936;
t1832 = t1571 * t1809 + t2032 * t2052 + t2087;
t1572 = t1771 + t1787 - t2064 + (-t1727 - t1764) * pkin(2) - t1735;
t1831 = -qJ(3) * t2002 + t1572 * t1813 + t2086;
t1515 = t1594 * t1813 + t1606 * t1809;
t1595 = t2018 + (t1757 + (t1950 + t1953) * qJD(1)) * t1805 + t1870;
t1830 = pkin(8) * t1515 + t1595 * t1919;
t1802 = t1805 * t1803;
t1781 = qJDD(1) * t1810 + t1814 * t1815;
t1779 = t1806 * t1797;
t1769 = t1795 - t1943;
t1765 = -pkin(7) * t1781 + g(3) * t1814;
t1745 = t1813 * t1755;
t1734 = (t1804 + t2038) * t1949;
t1719 = t1763 * t1813 - t1949 * t2038;
t1718 = -t1764 * t1809 - t1804 * t1949;
t1698 = t1734 * t1814 + t1810 * t1981;
t1697 = t1734 * t1810 - t1814 * t1981;
t1691 = (t1802 * t1962 + t1977) * t1809;
t1690 = (t1803 * t1813 * t1908 + t1763 * t1805) * t1809;
t1689 = (t1764 * t1805 - t1908 * t1987) * t1813;
t1688 = (-t1802 * t1809 * t1815 + t1978) * t1813;
t1665 = -pkin(2) * t1730 + qJ(3) * t1731;
t1662 = t1721 + t1941;
t1661 = (-t1749 * t1808 - t1751 * t1812) * t1786;
t1659 = -t1809 * t2052 + t2001;
t1616 = -t1662 * t1809 + t1745;
t1615 = t1661 * t1809 + t1745;
t1613 = -t1805 * t1769 + t1806 * t1880;
t1611 = t1806 * t1769 + t1805 * t1880;
t1610 = -t1691 * t1810 + t1719 * t1814;
t1609 = -t1688 * t1810 + t1718 * t1814;
t1608 = t1691 * t1814 + t1719 * t1810;
t1607 = t1688 * t1814 + t1718 * t1810;
t1574 = pkin(2) * t2051 - qJ(3) * t1768 + t1606;
t1566 = t1805 * t1735 + t1806 * t1881;
t1565 = -t1735 * t1806 + t1805 * t1881;
t1564 = -pkin(2) * t1742 + (t1762 + t1797) * qJ(3) + t1820;
t1558 = t1662 * t1973 + t2042;
t1557 = -t1661 * t1973 + t2042;
t1556 = t1662 * t1979 + t2043;
t1555 = -t1661 * t1979 + t2043;
t1554 = -t1613 * t1810 + t1659 * t1814;
t1552 = t1613 * t1814 + t1659 * t1810;
t1551 = pkin(7) * (-t1614 * t1810 + t1660 * t1814);
t1548 = -t2010 - t2058;
t1547 = -t1633 * t1812 - t2058;
t1529 = t1577 * t1808 + t1683 * t1812;
t1526 = -t1635 * t1813 + t2134;
t1525 = t1642 * t1813 - t2134;
t1519 = -t1966 - t2124;
t1516 = -pkin(2) * t1606 + qJ(3) * t1594;
t1512 = -t1963 - t2123;
t1511 = t1805 * t1693 + t1806 * t1910 - t2114;
t1510 = -t1693 * t1806 + t1805 * t1910 + t2113;
t1506 = t1544 * t1809 + t2072;
t1505 = t1543 * t1809 + t2072;
t1504 = t1805 * t1694 + t1806 * t1911 - t2116;
t1503 = -t1806 * t1694 + t1805 * t1911 + t2115;
t1489 = pkin(1) * t1566 + t1589 * t2022;
t1488 = -pkin(1) * t1565 + t1589 * t2021;
t1487 = t1532 * t1808 + t1946;
t1486 = -t1530 * t1808 - t1946;
t1483 = t1589 * t1806 + t1939;
t1482 = t1589 * t1805 + t1956;
t1480 = t1806 * t1883 - t2131;
t1479 = t1806 * t1882 + t2131;
t1476 = t1805 * t1883 + t2129;
t1475 = t1805 * t1882 - t2129;
t1473 = (-t1565 * t1805 - t1566 * t1806) * pkin(8);
t1472 = t1860 - t1881;
t1467 = t1805 * t1595 + t1806 * t1886;
t1466 = -t1806 * t1595 + t1805 * t1886;
t1465 = t1806 * t1888 + t2132;
t1464 = t1806 * t1887 - t2132;
t1463 = t1805 * t1888 - t2130;
t1462 = t1805 * t1887 + t2130;
t1461 = t1528 * t1809 + t1578 * t1813;
t1460 = t1806 * t1890 + t2146;
t1459 = t1806 * t1891 - t2146;
t1458 = t1805 * t1890 - t2145;
t1457 = t1805 * t1891 + t2145;
t1456 = -qJ(3) * t2001 - t1809 * t1572 + t2124;
t1454 = t1455 * t2028;
t1452 = t1813 * t1571 - t2033 * t2052 + t2123;
t1446 = t1520 * t1808 + t1541 * t1812;
t1445 = t1521 * t1808 - t1538 * t1812;
t1438 = -t1805 * t1548 + t1806 * t1894;
t1437 = -t1805 * t1547 + t1806 * t1895;
t1436 = t1548 * t1806 + t1805 * t1894;
t1435 = t1806 * t1547 + t1805 * t1895;
t1430 = -t1549 * t1805 + t1806 * t1893;
t1429 = -t1805 * t1550 + t1806 * t1892;
t1428 = t1806 * t1549 + t1805 * t1893;
t1427 = t1806 * t1550 + t1805 * t1892;
t1426 = -t1809 * t1583 + t1813 * t1588 + t1860;
t1422 = -t1805 * t1574 + t1806 * t1831 + t2114;
t1421 = t1806 * t1574 + t1805 * t1831 - t2113;
t1420 = t1448 * t1808 + t1655 * t1812;
t1418 = -t1485 * t1809 + t1533 * t1813;
t1417 = t1484 * t1809 - t1531 * t1813;
t1415 = qJ(3) * t1640 + t1559 - t2136;
t1414 = -t1805 * t1564 + t1806 * t1832 + t2116;
t1413 = t1806 * t1564 + t1805 * t1832 - t2115;
t1406 = -t1805 * t1665 + t1806 * t1889 + t1939;
t1405 = t1806 * t1665 + t1805 * t1889 + t1956;
t1403 = qJ(3) * t1633 + t1967 + t2148;
t1402 = -t1805 * t1529 + t1806 * t1896;
t1401 = t1806 * t1529 + t1805 * t1896;
t1392 = t1443 * t1809 + t1523 * t1813;
t1391 = t1444 * t1809 + t1522 * t1813;
t1385 = -t1805 * t1487 + t1806 * t1897;
t1384 = -t1805 * t1486 + t1806 * t1898;
t1383 = t1806 * t1487 + t1805 * t1897;
t1382 = t1806 * t1486 + t1805 * t1898;
t1377 = t1419 * t1809 + t1450 * t1813;
t1373 = -qJ(3) * t1828 + t1958 + t2136;
t1371 = (qJ(3) * t1813 - t2033) * t1595 + (-t1466 * t1805 - t1467 * t1806) * pkin(8);
t1369 = t1634 * t1935 - t1969 - t2148;
t1368 = -pkin(1) * t1466 - t1805 * t1516 + t1806 * t1830;
t1367 = pkin(1) * t1467 + t1806 * t1516 + t1805 * t1830;
t1366 = -t1805 * t1445 + t1806 * t1900;
t1365 = -t1805 * t1446 + t1806 * t1899;
t1364 = t1806 * t1445 + t1805 * t1900;
t1363 = t1806 * t1446 + t1805 * t1899;
t1361 = t1545 * t2035 + t1929 + t2085;
t1360 = -t1805 * t1442 + t1806 * t1901;
t1359 = t1806 * t1442 + t1805 * t1901;
t1354 = -t1432 * t1805 + t1806 * t1902;
t1353 = t1806 * t1432 + t1805 * t1902;
t1348 = -t1420 * t1805 + t1806 * t1903;
t1347 = t1806 * t1420 + t1805 * t1903;
t1346 = -t1410 * t1805 + t1806 * t1904;
t1345 = t1806 * t1410 + t1805 * t1904;
t1343 = t1546 * t2035 + t1930 + t2085;
t1341 = qJ(3) * t1560 - t1929 * t2035;
t1340 = -t1805 * t1390 + t1806 * t1905;
t1339 = t1806 * t1390 + t1805 * t1905;
t1334 = t1813 * t1399 - t1809 * t1416 + (-t1462 * t1805 - t1464 * t1806) * pkin(8);
t1333 = t1813 * t1395 - t1809 * t1404 + (-t1457 * t1805 - t1459 * t1806) * pkin(8);
t1331 = -pkin(1) * t1462 - t1805 * t1415 + t1806 * t1835;
t1330 = pkin(1) * t1464 + t1806 * t1415 + t1805 * t1835;
t1329 = -t1805 * t1376 + t1806 * t1906;
t1328 = t1376 * t1806 + t1805 * t1906;
t1326 = -pkin(1) * t1457 - t1805 * t1403 + t1806 * t1836;
t1325 = pkin(1) * t1459 + t1806 * t1403 + t1805 * t1836;
t1321 = -t1809 * t1374 + t1813 * t1380 + (-t1463 * t1805 - t1465 * t1806) * pkin(8);
t1320 = -t1809 * t1362 + t1813 * t1453 + (-t1428 * t1805 - t1430 * t1806) * pkin(8);
t1319 = -t1809 * t1370 + t1813 * t1379 + (-t1458 * t1805 - t1460 * t1806) * pkin(8);
t1314 = t1375 * t2035 - t1455 * t1935 + t1454;
t1313 = -t1809 * t1344 + t1813 * t1400 + (-t1427 * t1805 - t1429 * t1806) * pkin(8);
t1311 = -pkin(1) * t1463 - t1805 * t1373 + t1806 * t1837;
t1310 = pkin(1) * t1465 + t1806 * t1373 + t1805 * t1837;
t1309 = -pkin(1) * t1458 - t1805 * t1369 + t1806 * t1838;
t1308 = pkin(1) * t1460 + t1806 * t1369 + t1805 * t1838;
t1307 = -pkin(1) * t1428 - t1805 * t1361 + t1806 * t1839;
t1306 = pkin(1) * t1430 + t1806 * t1361 + t1805 * t1839;
t1304 = qJ(3) * t1509 + t1441 * t2035 + t1931;
t1302 = qJ(3) * t1502 + t1431 * t2035 + t1932;
t1300 = -pkin(1) * t1427 - t1805 * t1343 + t1806 * t1840;
t1299 = pkin(1) * t1429 + t1806 * t1343 + t1805 * t1840;
t1293 = qJ(3) * t1451 + t1409 * t2035 + t1933;
t1292 = -t1809 * t1342 + t1813 * t1349 + (-t1339 * t1805 - t1340 * t1806) * pkin(8);
t1291 = -pkin(1) * t1339 - t1805 * t1341 + t1806 * t1841;
t1290 = pkin(1) * t1340 + t1806 * t1341 + t1805 * t1841;
t1289 = -t1805 * t1317 + t1806 * t1907;
t1288 = t1806 * t1317 + t1805 * t1907;
t1287 = -t1809 * t1305 + t1813 * t1332 + (-t1359 * t1805 - t1360 * t1806) * pkin(8);
t1286 = -t1809 * t1303 + t1813 * t1327 + (-t1353 * t1805 - t1354 * t1806) * pkin(8);
t1285 = -t1809 * t1315 + t1813 * t1318 + (-t1328 * t1805 - t1329 * t1806) * pkin(8);
t1283 = -pkin(1) * t1359 - t1805 * t1304 + t1806 * t1843;
t1282 = pkin(1) * t1360 + t1806 * t1304 + t1805 * t1843;
t1281 = -pkin(1) * t1328 - t1805 * t1314 + t1806 * t1842;
t1280 = pkin(1) * t1329 + t1806 * t1314 + t1805 * t1842;
t1279 = -pkin(1) * t1353 - t1805 * t1302 + t1806 * t1844;
t1278 = pkin(1) * t1354 + t1806 * t1302 + t1805 * t1844;
t1277 = -t1809 * t1294 + t1813 * t1301 + (-t1345 * t1805 - t1346 * t1806) * pkin(8);
t1276 = -pkin(1) * t1345 - t1805 * t1293 + t1806 * t1845;
t1275 = pkin(1) * t1346 + t1806 * t1293 + t1805 * t1845;
t1273 = qJ(3) * t1324 + t1316 * t2035 + t1934;
t1272 = -t1809 * t1274 + t1813 * t1284 + (-t1288 * t1805 - t1289 * t1806) * pkin(8);
t1271 = -pkin(1) * t1288 - t1805 * t1273 + t1806 * t1846;
t1270 = pkin(1) * t1289 + t1806 * t1273 + t1805 * t1846;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1782, 0, -t1781, 0, t1920, -t1765, -t1873, -pkin(7) * t1873, t1610, t1554, -t2100, t1609, -t2098, t1698, -t1810 * t1511 + t1814 * t1519 - t2128, -t1810 * t1504 + t1814 * t1512 - t2126, t1472 * t1814 - t1483 * t1810 - t2023, t1814 * t1473 - t1810 * t1488 - pkin(7) * (t1566 * t1814 + t1589 * t1810), t1698, t2100, t2098, t1610, t1554, t1609, -t1406 * t1810 + t1426 * t1814 - t2023, -t1810 * t1422 + t1814 * t1456 + t2128, -t1810 * t1414 + t1814 * t1452 + t2126, t1814 * t1371 - t1810 * t1368 - pkin(7) * (t1467 * t1814 + t1515 * t1810), t2119, -t1437 * t1810 + t1505 * t1814, t2156, t2120, -t1479 * t1810 + t1525 * t1814, -t1557 * t1810 + t1615 * t1814, t1814 * t1333 - t1810 * t1326 - pkin(7) * (t1459 * t1814 + t1513 * t1810), t1814 * t1334 - t1810 * t1331 - pkin(7) * (t1464 * t1814 + t1517 * t1810), t1814 * t1320 - t1810 * t1307 - pkin(7) * (t1430 * t1814 + t1491 * t1810), t1814 * t1292 - t1810 * t1291 - pkin(7) * (t1340 * t1814 + t1378 * t1810), -t1558 * t1810 + t1616 * t1814, -t2156, -t1480 * t1810 + t1526 * t1814, t2119, -t1438 * t1810 + t1506 * t1814, t2120, t1814 * t1313 - t1810 * t1300 - pkin(7) * (t1429 * t1814 + t1490 * t1810), t1814 * t1319 - t1810 * t1309 - pkin(7) * (t1460 * t1814 + t1514 * t1810), t1814 * t1321 - t1810 * t1311 - pkin(7) * (t1465 * t1814 + t1518 * t1810), t1814 * t1285 - t1810 * t1281 - pkin(7) * (t1329 * t1814 + t1351 * t1810), -t1385 * t1810 + t1418 * t1814, -t1348 * t1810 + t1377 * t1814, -t1365 * t1810 + t1391 * t1814, -t1384 * t1810 + t1417 * t1814, -t1366 * t1810 + t1392 * t1814, -t1402 * t1810 + t1461 * t1814, t1814 * t1286 - t1810 * t1279 - pkin(7) * (t1354 * t1814 + t1387 * t1810), t1814 * t1287 - t1810 * t1283 - pkin(7) * (t1360 * t1814 + t1388 * t1810), t1814 * t1277 - t1810 * t1276 - pkin(7) * (t1346 * t1814 + t1372 * t1810), t1814 * t1272 - t1810 * t1271 - pkin(7) * (t1289 * t1814 + t1295 * t1810); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1781, 0, t1782, 0, t1765, t1920, t1924, pkin(7) * t1924, t1608, t1552, t2099, t1607, t2097, t1697, t1814 * t1511 + t1810 * t1519 - t2127, t1814 * t1504 + t1810 * t1512 - t2125, t1472 * t1810 + t1483 * t1814 + t1551, t1810 * t1473 + t1814 * t1488 + pkin(7) * (-t1566 * t1810 + t1589 * t1814), t1697, -t2099, -t2097, t1608, t1552, t1607, t1406 * t1814 + t1426 * t1810 + t1551, t1814 * t1422 + t1810 * t1456 + t2127, t1814 * t1414 + t1810 * t1452 + t2125, t1810 * t1371 + t1814 * t1368 + pkin(7) * (-t1467 * t1810 + t1515 * t1814), t2117, t1437 * t1814 + t1505 * t1810, -t2155, t2118, t1479 * t1814 + t1525 * t1810, t1557 * t1814 + t1615 * t1810, t1810 * t1333 + t1814 * t1326 + pkin(7) * (-t1459 * t1810 + t1513 * t1814), t1810 * t1334 + t1814 * t1331 + pkin(7) * (-t1464 * t1810 + t1517 * t1814), t1810 * t1320 + t1814 * t1307 + pkin(7) * (-t1430 * t1810 + t1491 * t1814), t1810 * t1292 + t1814 * t1291 + pkin(7) * (-t1340 * t1810 + t1378 * t1814), t1558 * t1814 + t1616 * t1810, t2155, t1480 * t1814 + t1526 * t1810, t2117, t1438 * t1814 + t1506 * t1810, t2118, t1810 * t1313 + t1814 * t1300 + pkin(7) * (-t1429 * t1810 + t1490 * t1814), t1810 * t1319 + t1814 * t1309 + pkin(7) * (-t1460 * t1810 + t1514 * t1814), t1810 * t1321 + t1814 * t1311 + pkin(7) * (-t1465 * t1810 + t1518 * t1814), t1810 * t1285 + t1814 * t1281 + pkin(7) * (-t1329 * t1810 + t1351 * t1814), t1385 * t1814 + t1418 * t1810, t1348 * t1814 + t1377 * t1810, t1365 * t1814 + t1391 * t1810, t1384 * t1814 + t1417 * t1810, t1366 * t1814 + t1392 * t1810, t1402 * t1814 + t1461 * t1810, t1810 * t1286 + t1814 * t1279 + pkin(7) * (-t1354 * t1810 + t1387 * t1814), t1810 * t1287 + t1814 * t1283 + pkin(7) * (-t1360 * t1810 + t1388 * t1814), t1810 * t1277 + t1814 * t1276 + pkin(7) * (-t1346 * t1810 + t1372 * t1814), t1810 * t1272 + t1814 * t1271 + pkin(7) * (-t1289 * t1810 + t1295 * t1814); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1788, t1789, 0, 0, t1690, t1611, t1643, t1689, t1645, t1779, t1510, t1503, t1482, t1489, t1779, -t1643, -t1645, t1690, t1611, t1689, t1405, t1421, t1413, t1367, t2094, t1435, -t1477, t2093, t1475, t1555, t1325, t1330, t1306, t1290, t1556, t1477, t1476, t2094, t1436, t2093, t1299, t1308, t1310, t1280, t1383, t1347, t1363, t1382, t1364, t1401, t1278, t1282, t1275, t1270; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1815, 0, 0, -g(3), -t1788, 0, t1719, t1659, t1707, t1718, -t1710, t1734, t1519, t1512, t1472, t1473, t1734, -t1707, t1710, t1719, t1659, t1718, t1426, t1456, t1452, t1371, t2066, t1505, t1524, t2068, t1525, t1615, t1333, t1334, t1320, t1292, t1616, -t1524, t1526, t2066, t1506, t2068, t1313, t1319, t1321, t1285, t1418, t1377, t1391, t1417, t1392, t1461, t1286, t1287, t1277, t1272; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1815, 0, qJDD(1), 0, g(3), 0, -t1789, 0, t1691, t1613, t1649, t1688, t1651, -t1981, t1511, t1504, t1483, t1488, -t1981, -t1649, -t1651, t1691, t1613, t1688, t1406, t1422, t1414, t1368, t2092, t1437, -t1481, t2091, t1479, t1557, t1326, t1331, t1307, t1291, t1558, t1481, t1480, t2092, t1438, t2091, t1300, t1309, t1311, t1281, t1385, t1348, t1365, t1384, t1366, t1402, t1279, t1283, t1276, t1271; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1788, t1789, 0, 0, t1690, t1611, t1643, t1689, t1645, t1779, t1510, t1503, t1482, t1489, t1779, -t1643, -t1645, t1690, t1611, t1689, t1405, t1421, t1413, t1367, t2094, t1435, -t1477, t2093, t1475, t1555, t1325, t1330, t1306, t1290, t1556, t1477, t1476, t2094, t1436, t2093, t1299, t1308, t1310, t1280, t1383, t1347, t1363, t1382, t1364, t1401, t1278, t1282, t1275, t1270; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1763, t1727, -t2051, -t1774, t1767, t1774, 0, -t1735, t1693, 0, t1774, t2051, -t1767, t1763, t1727, -t1774, t1588, -qJ(3) * t1727, t1571, qJ(3) * t1595, t1996, t2047, -t1641, -t1996, t1642, t1755, t1395, t1399, t1453, t1349, t1755, t1641, -t1635, t1996, t2047, -t1996, t1400, t1379, t1380, t1318, t1533, t1450, t1522, -t1531, t1523, t1578, t1327, t1332, t1301, t1284; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1773, t2052, t1766, t1764, t1762, -t1773, t1735, 0, t1694, 0, -t1773, -t1766, -t1762, t1773, t2052, t1764, t1583, t1572, pkin(2) * t2052, pkin(2) * t1595, -t2054, -t1543, -t1596, -t1618, t1598, -t1661, t1404, t1416, t1362, t1342, t1662, t1596, -t1598, -t2054, -t1544, -t1618, t1344, t1370, t1374, t1315, t1485, -t1419, -t1444, -t1484, -t1443, -t1528, t1303, t1305, t1294, t1274; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1784, t1769, t1730, t1784, t1731, t1797, -t1693, -t1694, 0, 0, t1797, -t1730, -t1731, -t1784, t1769, t1784, t1665, t1574, t1564, t1516, t1917, t1547, -t1601, t1823, -t1602, t1857, t1403, t1415, t1361, t1341, t1857, t1601, t1602, t1917, t1548, t1823, t1343, t1369, t1373, t1314, t1487, t1420, t1446, t1486, t1445, t1529, t1302, t1304, t1293, t1273; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1797, -t1730, -t1731, -t1784, t1769, t1784, 0, t1606, t1594, 0, t1917, t1547, -t1601, t1823, -t1602, t1857, t1967 - t2153, t1559 + t2141, -pkin(9) * t1545 + t1929, pkin(9) * t1929, t1857, t1601, t1602, t1917, t1548, t1823, -pkin(9) * t1546 + t1930, qJ(5) * t2010 - t1969 + t2153, t1958 - t2141, -pkin(9) * t1375 - t1455 * t2016 + t1454, t1487, t1420, t1446, t1486, t1445, t1529, -pkin(9) * t1431 + t1932, -pkin(9) * t1441 + t1931, -pkin(9) * t1409 + t1933, -pkin(9) * t1316 + t1934; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1774, -t2051, t1767, -t1763, -t1727, t1774, -t1606, 0, -t1595, 0, -t1996, -t2047, t1641, t1996, -t1642, -t1755, t1868, t1849, -t2030, t2031, -t1755, -t1641, t1635, -t1996, -t2047, t1996, t1922, t1821, t1818, t1923, -t1533, -t1450, -t1522, t1531, -t1523, -t1578, t1829, t1834, t1827, t1858; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1773, t1766, t1762, -t1773, -t2052, -t1764, -t1594, t1595, 0, 0, t2054, t1543, t1596, t1618, -t1598, t1661, -t1915 + t2152, -t1914 + t2140, pkin(9) * t1549 - t1869, pkin(9) * t1390 - t2029, -t1662, -t1596, t1598, t2054, t1544, t1618, pkin(9) * t1550 - t1850, t2044 - t2152, t2041 - t2140, pkin(9) * t1376 - t2063, -t1485, t1419, t1444, t1484, t1443, t1528, pkin(9) * t1432 - t1852, pkin(9) * t1442 - t1851, pkin(9) * t1410 - t1853, pkin(9) * t1317 - t1854; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1687, -t1633, t2050, t1997, -t1722, -t1997, 0, t1560, t1470, 0, -t1997, -t2050, t1722, t1687, -t1634, t1997, t1412, qJ(5) * t1634, t1424, -qJ(5) * t1455, t1656, t1655, t1541, -t1656, -t1538, t1683, t1336, t1338, t1386, t1298; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1732, t1828, t2048, -t1861, t2049, -t1732, -t1560, 0, t1471, 0, -t1732, -t2048, -t2049, t1732, t1828, -t1861, t1408, t1425, pkin(4) * t1828, -pkin(4) * t1455, -t1532, -t1448, -t1520, t1530, -t1521, -t1577, t1350, t1352, t1312, t1296; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1996, t2047, -t1641, -t1996, t1642, t1755, -t1470, -t1471, 0, 0, t1755, t1641, -t1635, t1996, t2047, -t1996, t1955, t1824, t1819, t1957, t1533, t1450, t1522, -t1531, t1523, t1578, t1856, t1871, t1833, t1921; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1755, t1641, -t1635, t1996, t2047, -t1996, 0, t1440, t1434, 0, t1533, t1450, t1522, -t1531, t1523, t1578, t1909, t1937, t1866, -t2020; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1997, t2050, -t1722, -t1687, t1634, -t1997, -t1440, 0, t1455, 0, -t1656, -t1655, -t1541, t1656, t1538, -t1683, t1867, t1847, -t2024, -t2026; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1732, t2048, t2049, -t1732, -t1828, t1861, -t1434, -t1455, 0, 0, t1532, t1448, t1520, -t1530, t1521, t1577, pkin(10) * t1502 - t1913, pkin(10) * t1509 - t1912, pkin(10) * t1451 - t1848, pkin(10) * t1324 - t2025; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1585, -t1537, t2056, t1678, t1670, -t1678, 0, t1398, t1357, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2000, t2055, t1671, t1584, t1576, -t2000, -t1398, 0, t1358, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1656, t1655, t1541, -t1656, -t1538, t1683, -t1357, -t1358, 0, 0;];
m_new_reg  = t1;
