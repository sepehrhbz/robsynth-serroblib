% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PRPRRR1
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,d6,theta1,theta3]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 00:09
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PRPRRR1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRR1_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRR1_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPRRR1_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPRRR1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRPRRR1_invdynf_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 00:09:14
% EndTime: 2019-05-05 00:09:20
% DurationCPUTime: 6.35s
% Computational Cost: add. (38963->288), mult. (74626->461), div. (0->0), fcn. (56054->14), ass. (0->252)
t1997 = sin(pkin(11));
t2000 = cos(pkin(11));
t1972 = g(1) * t1997 - g(2) * t2000;
t1994 = -g(3) + qJDD(1);
t1998 = sin(pkin(6));
t2001 = cos(pkin(6));
t2060 = t1972 * t2001 + t1994 * t1998;
t2004 = sin(qJ(5));
t2008 = cos(qJ(5));
t2009 = cos(qJ(4));
t2051 = qJD(2) * t2009;
t2005 = sin(qJ(4));
t2052 = qJD(2) * t2005;
t1956 = t2004 * t2052 - t2008 * t2051;
t1950 = qJD(6) + t1956;
t2059 = qJD(6) + t1950;
t1958 = (t2004 * t2009 + t2005 * t2008) * qJD(2);
t1991 = qJD(4) + qJD(5);
t2003 = sin(qJ(6));
t2007 = cos(qJ(6));
t1938 = t1958 * t2003 - t2007 * t1991;
t2058 = t1938 ^ 2;
t1940 = t1958 * t2007 + t1991 * t2003;
t2057 = t1940 ^ 2;
t2056 = t1950 ^ 2;
t2055 = t1956 ^ 2;
t2054 = t1958 ^ 2;
t2053 = t1991 ^ 2;
t2050 = t1938 * t1940;
t2049 = t1956 * t1958;
t1993 = t2009 ^ 2;
t2012 = qJD(2) ^ 2;
t2047 = t1993 * t2012;
t1973 = -g(1) * t2000 - g(2) * t1997;
t2006 = sin(qJ(2));
t2010 = cos(qJ(2));
t1925 = t2010 * t1973 + t2006 * t2060;
t1923 = -pkin(2) * t2012 + t1925;
t1996 = sin(pkin(12));
t1999 = cos(pkin(12));
t1924 = -t2006 * t1973 + t2010 * t2060;
t2014 = qJDD(2) * pkin(2) + t1924;
t1897 = t1999 * t1923 + t1996 * t2014;
t1893 = -pkin(3) * t2012 + qJDD(2) * pkin(8) + t1897;
t2045 = t2005 * t1893;
t2044 = t2005 * t2012;
t2043 = qJD(5) - t1991;
t2042 = qJD(6) - t1950;
t1948 = -t1972 * t1998 + t2001 * t1994;
t1947 = qJDD(3) + t1948;
t1886 = t2009 * t1893 + t2005 * t1947;
t1990 = t2009 * qJDD(2);
t2038 = qJD(4) * t2052;
t1964 = t1990 - t2038;
t1977 = qJD(4) * pkin(4) - pkin(9) * t2052;
t1871 = -pkin(4) * t2047 + pkin(9) * t1964 - qJD(4) * t1977 + t1886;
t2037 = qJD(4) * t2051;
t2040 = t2005 * qJDD(2);
t1963 = t2037 + t2040;
t2013 = qJDD(4) * pkin(4) - t1963 * pkin(9) - t2045 + (pkin(9) * qJD(2) * qJD(4) + pkin(4) * t2044 + t1947) * t2009;
t1844 = t2008 * t1871 + t2004 * t2013;
t1992 = t2005 ^ 2;
t2041 = t1992 + t1993;
t2039 = qJDD(4) + qJDD(5);
t1843 = -t2004 * t1871 + t2008 * t2013;
t2019 = -t2008 * t1963 - t2004 * t1964;
t1913 = -qJD(5) * t1956 - t2019;
t2036 = t1991 * t1956 - t1913;
t2035 = -t2003 * t1913 + t2007 * t2039;
t1896 = -t1996 * t1923 + t1999 * t2014;
t2034 = t2004 * t1963 - t2008 * t1964;
t1933 = pkin(5) * t1956 - pkin(10) * t1958;
t1836 = -pkin(5) * t2053 + pkin(10) * t2039 - t1956 * t1933 + t1844;
t1892 = -qJDD(2) * pkin(3) - t2012 * pkin(8) - t1896;
t1876 = -t1964 * pkin(4) - pkin(9) * t2047 + t1977 * t2052 + t1892;
t1905 = (qJD(5) + t1991) * t1958 + t2034;
t1851 = pkin(5) * t1905 + pkin(10) * t2036 + t1876;
t1818 = -t1836 * t2003 + t1851 * t2007;
t1819 = t1836 * t2007 + t1851 * t2003;
t1801 = -t1818 * t2003 + t1819 * t2007;
t1835 = -pkin(5) * t2039 - pkin(10) * t2053 + t1958 * t1933 - t1843;
t1794 = t1801 * t2004 - t1835 * t2008;
t1795 = t1801 * t2008 + t1835 * t2004;
t1785 = -t1794 * t2005 + t1795 * t2009;
t1800 = t1818 * t2007 + t1819 * t2003;
t1780 = t1785 * t1996 - t1800 * t1999;
t1781 = t1785 * t1999 + t1800 * t1996;
t2033 = t1780 * t2010 + t1781 * t2006;
t1822 = t1843 * t2008 + t1844 * t2004;
t1823 = -t1843 * t2004 + t1844 * t2008;
t1803 = -t1822 * t2005 + t1823 * t2009;
t1798 = t1803 * t1996 - t1876 * t1999;
t1799 = t1803 * t1999 + t1876 * t1996;
t2032 = t1798 * t2010 + t1799 * t2006;
t1878 = -t1940 * t2042 + t2035;
t2016 = -t2007 * t1913 - t2003 * t2039;
t1880 = t1938 * t2042 + t2016;
t1853 = t1878 * t2007 - t1880 * t2003;
t1899 = -t2057 - t2058;
t1839 = t1853 * t2004 - t1899 * t2008;
t1840 = t1853 * t2008 + t1899 * t2004;
t1816 = -t1839 * t2005 + t1840 * t2009;
t1852 = t1878 * t2003 + t1880 * t2007;
t1808 = t1816 * t1996 - t1852 * t1999;
t1809 = t1816 * t1999 + t1852 * t1996;
t2031 = t1808 * t2010 + t1809 * t2006;
t2015 = -qJD(5) * t1958 - qJDD(6) - t2034;
t1889 = -t2015 - t2050;
t1902 = -t2056 - t2058;
t1863 = -t1889 * t2003 + t1902 * t2007;
t1877 = t1940 * t2059 - t2035;
t1845 = t1863 * t2004 - t1877 * t2008;
t1846 = t1863 * t2008 + t1877 * t2004;
t1825 = -t1845 * t2005 + t1846 * t2009;
t1862 = t1889 * t2007 + t1902 * t2003;
t1810 = t1825 * t1996 - t1862 * t1999;
t1811 = t1825 * t1999 + t1862 * t1996;
t2030 = t1810 * t2010 + t1811 * t2006;
t1890 = t2015 - t2050;
t1912 = -t2056 - t2057;
t1865 = t1890 * t2007 - t1912 * t2003;
t1879 = -t1938 * t2059 - t2016;
t1847 = t1865 * t2004 - t1879 * t2008;
t1848 = t1865 * t2008 + t1879 * t2004;
t1827 = -t1847 * t2005 + t1848 * t2009;
t1864 = t1890 * t2003 + t1912 * t2007;
t1812 = t1827 * t1996 - t1864 * t1999;
t1813 = t1827 * t1999 + t1864 * t1996;
t2029 = t1812 * t2010 + t1813 * t2006;
t1885 = t2009 * t1947 - t2045;
t1855 = -t1885 * t2005 + t1886 * t2009;
t1837 = t1855 * t1996 - t1892 * t1999;
t1838 = t1855 * t1999 + t1892 * t1996;
t2028 = t1837 * t2010 + t1838 * t2006;
t1906 = -t1958 * t2043 - t2034;
t1908 = t1956 * t2043 + t2019;
t1872 = t1906 * t2004 + t1908 * t2008;
t1873 = t1906 * t2008 - t1908 * t2004;
t1850 = -t1872 * t2005 + t1873 * t2009;
t1914 = -t2054 - t2055;
t1841 = t1850 * t1996 - t1914 * t1999;
t1842 = t1850 * t1999 + t1914 * t1996;
t2027 = t1841 * t2010 + t1842 * t2006;
t1926 = -t2053 - t2055;
t1927 = t2039 - t2049;
t1900 = t1926 * t2004 + t1927 * t2008;
t1901 = t1926 * t2008 - t1927 * t2004;
t1867 = -t1900 * t2005 + t1901 * t2009;
t1856 = t1867 * t1996 - t1905 * t1999;
t1857 = t1867 * t1999 + t1905 * t1996;
t2026 = t1856 * t2010 + t1857 * t2006;
t1928 = -t2039 - t2049;
t1946 = -t2053 - t2054;
t1909 = t1928 * t2004 + t1946 * t2008;
t1910 = t1928 * t2008 - t1946 * t2004;
t1875 = -t1909 * t2005 + t1910 * t2009;
t1858 = t1875 * t1996 + t1999 * t2036;
t1859 = t1875 * t1999 - t1996 * t2036;
t2025 = t1858 * t2010 + t1859 * t2006;
t1860 = t1896 * t1999 + t1897 * t1996;
t1861 = -t1896 * t1996 + t1897 * t1999;
t2024 = t1860 * t2010 + t1861 * t2006;
t1980 = t2009 * t2044;
t1974 = qJDD(4) + t1980;
t2011 = qJD(4) ^ 2;
t1979 = -t2011 - t2047;
t1944 = -t1974 * t2005 + t1979 * t2009;
t1965 = t1990 - 0.2e1 * t2038;
t1918 = t1944 * t1996 + t1965 * t1999;
t1920 = t1944 * t1999 - t1965 * t1996;
t2023 = t1918 * t2010 + t1920 * t2006;
t1975 = -qJDD(4) + t1980;
t1978 = -t1992 * t2012 - t2011;
t1945 = t1975 * t2009 - t1978 * t2005;
t1962 = 0.2e1 * t2037 + t2040;
t1919 = t1945 * t1996 - t1962 * t1999;
t1921 = t1945 * t1999 + t1962 * t1996;
t2022 = t1919 * t2010 + t1921 * t2006;
t2021 = t1924 * t2010 + t1925 * t2006;
t1968 = t2041 * qJDD(2);
t1971 = t2041 * t2012;
t1936 = t1968 * t1996 + t1971 * t1999;
t1937 = t1968 * t1999 - t1971 * t1996;
t2020 = t1936 * t2010 + t1937 * t2006;
t1966 = qJDD(2) * t1999 - t1996 * t2012;
t1967 = -qJDD(2) * t1996 - t1999 * t2012;
t2018 = t1966 * t2010 + t1967 * t2006;
t1935 = -t1966 * t2006 + t1967 * t2010;
t2017 = qJDD(2) * t2010 - t2006 * t2012;
t1970 = -qJDD(2) * t2006 - t2010 * t2012;
t1954 = t2017 * t2001;
t1953 = t1970 * t2001;
t1952 = t2017 * t1998;
t1951 = t1970 * t1998;
t1943 = t1975 * t2005 + t1978 * t2009;
t1942 = t1974 * t2009 + t1979 * t2005;
t1932 = t2018 * t2001;
t1931 = t1935 * t2001;
t1930 = t2018 * t1998;
t1929 = t1935 * t1998;
t1911 = -t1936 * t2006 + t1937 * t2010;
t1904 = t2020 * t2001;
t1903 = t2020 * t1998;
t1898 = -t1924 * t2006 + t1925 * t2010;
t1895 = -t1919 * t2006 + t1921 * t2010;
t1894 = -t1918 * t2006 + t1920 * t2010;
t1888 = -t1998 * t1948 + t2001 * t2021;
t1887 = t2001 * t1948 + t1998 * t2021;
t1884 = -t1998 * t1943 + t2001 * t2022;
t1883 = -t1998 * t1942 + t2001 * t2023;
t1882 = t2001 * t1943 + t1998 * t2022;
t1881 = t2001 * t1942 + t1998 * t2023;
t1874 = t1909 * t2009 + t1910 * t2005;
t1866 = t1900 * t2009 + t1901 * t2005;
t1854 = t1885 * t2009 + t1886 * t2005;
t1849 = t1872 * t2009 + t1873 * t2005;
t1834 = -t1860 * t2006 + t1861 * t2010;
t1833 = -t1998 * t1947 + t2001 * t2024;
t1832 = t2001 * t1947 + t1998 * t2024;
t1831 = -t1858 * t2006 + t1859 * t2010;
t1830 = -t1856 * t2006 + t1857 * t2010;
t1829 = -t1998 * t1874 + t2001 * t2025;
t1828 = t2001 * t1874 + t1998 * t2025;
t1826 = t1847 * t2009 + t1848 * t2005;
t1824 = t1845 * t2009 + t1846 * t2005;
t1821 = -t1998 * t1866 + t2001 * t2026;
t1820 = t2001 * t1866 + t1998 * t2026;
t1817 = -t1841 * t2006 + t1842 * t2010;
t1815 = t1839 * t2009 + t1840 * t2005;
t1814 = -t1837 * t2006 + t1838 * t2010;
t1807 = -t1998 * t1849 + t2001 * t2027;
t1806 = t2001 * t1849 + t1998 * t2027;
t1805 = -t1998 * t1854 + t2001 * t2028;
t1804 = t2001 * t1854 + t1998 * t2028;
t1802 = t1822 * t2009 + t1823 * t2005;
t1797 = -t1812 * t2006 + t1813 * t2010;
t1796 = -t1810 * t2006 + t1811 * t2010;
t1793 = -t1808 * t2006 + t1809 * t2010;
t1792 = -t1998 * t1826 + t2001 * t2029;
t1791 = t2001 * t1826 + t1998 * t2029;
t1790 = -t1998 * t1824 + t2001 * t2030;
t1789 = t2001 * t1824 + t1998 * t2030;
t1788 = -t1998 * t1815 + t2001 * t2031;
t1787 = t2001 * t1815 + t1998 * t2031;
t1786 = -t1798 * t2006 + t1799 * t2010;
t1784 = t1794 * t2009 + t1795 * t2005;
t1783 = -t1998 * t1802 + t2001 * t2032;
t1782 = t2001 * t1802 + t1998 * t2032;
t1779 = -t1780 * t2006 + t1781 * t2010;
t1778 = -t1998 * t1784 + t2001 * t2033;
t1777 = t2001 * t1784 + t1998 * t2033;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1972 * t1997 + t1973 * t2000, 0, 0, 0, 0, 0, 0, -t1954 * t1997 + t1970 * t2000, -t1953 * t1997 - t2000 * t2017, 0, -t1888 * t1997 + t1898 * t2000, 0, 0, 0, 0, 0, 0, -t1932 * t1997 + t1935 * t2000, -t1931 * t1997 - t2000 * t2018, 0, -t1833 * t1997 + t1834 * t2000, 0, 0, 0, 0, 0, 0, -t1883 * t1997 + t1894 * t2000, -t1884 * t1997 + t1895 * t2000, -t1904 * t1997 + t1911 * t2000, -t1805 * t1997 + t1814 * t2000, 0, 0, 0, 0, 0, 0, -t1821 * t1997 + t1830 * t2000, -t1829 * t1997 + t1831 * t2000, -t1807 * t1997 + t1817 * t2000, -t1783 * t1997 + t1786 * t2000, 0, 0, 0, 0, 0, 0, -t1790 * t1997 + t1796 * t2000, -t1792 * t1997 + t1797 * t2000, -t1788 * t1997 + t1793 * t2000, -t1778 * t1997 + t1779 * t2000; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1972 * t2000 + t1973 * t1997, 0, 0, 0, 0, 0, 0, t1954 * t2000 + t1970 * t1997, t1953 * t2000 - t1997 * t2017, 0, t1888 * t2000 + t1898 * t1997, 0, 0, 0, 0, 0, 0, t1932 * t2000 + t1935 * t1997, t1931 * t2000 - t1997 * t2018, 0, t1833 * t2000 + t1834 * t1997, 0, 0, 0, 0, 0, 0, t1883 * t2000 + t1894 * t1997, t1884 * t2000 + t1895 * t1997, t1904 * t2000 + t1911 * t1997, t1805 * t2000 + t1814 * t1997, 0, 0, 0, 0, 0, 0, t1821 * t2000 + t1830 * t1997, t1829 * t2000 + t1831 * t1997, t1807 * t2000 + t1817 * t1997, t1783 * t2000 + t1786 * t1997, 0, 0, 0, 0, 0, 0, t1790 * t2000 + t1796 * t1997, t1792 * t2000 + t1797 * t1997, t1788 * t2000 + t1793 * t1997, t1778 * t2000 + t1779 * t1997; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1994, 0, 0, 0, 0, 0, 0, t1952, t1951, 0, t1887, 0, 0, 0, 0, 0, 0, t1930, t1929, 0, t1832, 0, 0, 0, 0, 0, 0, t1881, t1882, t1903, t1804, 0, 0, 0, 0, 0, 0, t1820, t1828, t1806, t1782, 0, 0, 0, 0, 0, 0, t1789, t1791, t1787, t1777; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1973, 0, 0, 0, 0, 0, 0, t1970, -t2017, 0, t1898, 0, 0, 0, 0, 0, 0, t1935, -t2018, 0, t1834, 0, 0, 0, 0, 0, 0, t1894, t1895, t1911, t1814, 0, 0, 0, 0, 0, 0, t1830, t1831, t1817, t1786, 0, 0, 0, 0, 0, 0, t1796, t1797, t1793, t1779; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1972, 0, 0, 0, 0, 0, 0, t1954, t1953, 0, t1888, 0, 0, 0, 0, 0, 0, t1932, t1931, 0, t1833, 0, 0, 0, 0, 0, 0, t1883, t1884, t1904, t1805, 0, 0, 0, 0, 0, 0, t1821, t1829, t1807, t1783, 0, 0, 0, 0, 0, 0, t1790, t1792, t1788, t1778; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1994, 0, 0, 0, 0, 0, 0, t1952, t1951, 0, t1887, 0, 0, 0, 0, 0, 0, t1930, t1929, 0, t1832, 0, 0, 0, 0, 0, 0, t1881, t1882, t1903, t1804, 0, 0, 0, 0, 0, 0, t1820, t1828, t1806, t1782, 0, 0, 0, 0, 0, 0, t1789, t1791, t1787, t1777; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2012, -qJDD(2), 0, t1925, 0, 0, 0, 0, 0, 0, t1967, -t1966, 0, t1861, 0, 0, 0, 0, 0, 0, t1920, t1921, t1937, t1838, 0, 0, 0, 0, 0, 0, t1857, t1859, t1842, t1799, 0, 0, 0, 0, 0, 0, t1811, t1813, t1809, t1781; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t2012, 0, t1924, 0, 0, 0, 0, 0, 0, t1966, t1967, 0, t1860, 0, 0, 0, 0, 0, 0, t1918, t1919, t1936, t1837, 0, 0, 0, 0, 0, 0, t1856, t1858, t1841, t1798, 0, 0, 0, 0, 0, 0, t1810, t1812, t1808, t1780; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1948, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1947, 0, 0, 0, 0, 0, 0, t1942, t1943, 0, t1854, 0, 0, 0, 0, 0, 0, t1866, t1874, t1849, t1802, 0, 0, 0, 0, 0, 0, t1824, t1826, t1815, t1784; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2012, -qJDD(2), 0, t1897, 0, 0, 0, 0, 0, 0, t1944, t1945, t1968, t1855, 0, 0, 0, 0, 0, 0, t1867, t1875, t1850, t1803, 0, 0, 0, 0, 0, 0, t1825, t1827, t1816, t1785; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t2012, 0, t1896, 0, 0, 0, 0, 0, 0, t1965, -t1962, t1971, -t1892, 0, 0, 0, 0, 0, 0, -t1905, t2036, -t1914, -t1876, 0, 0, 0, 0, 0, 0, -t1862, -t1864, -t1852, -t1800; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1947, 0, 0, 0, 0, 0, 0, t1942, t1943, 0, t1854, 0, 0, 0, 0, 0, 0, t1866, t1874, t1849, t1802, 0, 0, 0, 0, 0, 0, t1824, t1826, t1815, t1784; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1979, t1975, t1990, t1886, 0, 0, 0, 0, 0, 0, t1901, t1910, t1873, t1823, 0, 0, 0, 0, 0, 0, t1846, t1848, t1840, t1795; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1974, t1978, -t2040, t1885, 0, 0, 0, 0, 0, 0, t1900, t1909, t1872, t1822, 0, 0, 0, 0, 0, 0, t1845, t1847, t1839, t1794; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1965, t1962, -t1971, t1892, 0, 0, 0, 0, 0, 0, t1905, -t2036, t1914, t1876, 0, 0, 0, 0, 0, 0, t1862, t1864, t1852, t1800; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1926, t1928, t1906, t1844, 0, 0, 0, 0, 0, 0, t1863, t1865, t1853, t1801; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1927, t1946, t1908, t1843, 0, 0, 0, 0, 0, 0, -t1877, -t1879, -t1899, -t1835; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1905, -t2036, t1914, t1876, 0, 0, 0, 0, 0, 0, t1862, t1864, t1852, t1800; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1902, t1890, t1878, t1819; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1889, t1912, t1880, t1818; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1877, t1879, t1899, t1835;];
f_new_reg  = t1;
