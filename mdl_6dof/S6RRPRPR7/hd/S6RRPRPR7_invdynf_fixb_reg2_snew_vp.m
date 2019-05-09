% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRPRPR7
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 14:47
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRPRPR7_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR7_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR7_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR7_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR7_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRPR7_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 14:47:08
% EndTime: 2019-05-06 14:47:14
% DurationCPUTime: 6.10s
% Computational Cost: add. (34689->317), mult. (77702->381), div. (0->0), fcn. (53081->10), ass. (0->221)
t1961 = sin(qJ(2));
t1965 = cos(qJ(2));
t1968 = qJD(1) ^ 2;
t1988 = t1965 * t1968;
t1936 = t1961 * t1988;
t1928 = qJDD(2) - t1936;
t1954 = t1961 ^ 2;
t1967 = qJD(2) ^ 2;
t1933 = t1954 * t1968 + t1967;
t1899 = t1928 * t1965 - t1933 * t1961;
t1998 = qJD(2) * t1965;
t1981 = qJD(1) * t1998;
t1984 = t1961 * qJDD(1);
t1919 = 0.2e1 * t1981 + t1984;
t1962 = sin(qJ(1));
t1966 = cos(qJ(1));
t2013 = t1899 * t1962 + t1919 * t1966;
t2012 = t1899 * t1966 - t1919 * t1962;
t1960 = sin(qJ(4));
t1964 = cos(qJ(4));
t1911 = (-t1960 * t1961 - t1964 * t1965) * qJD(1);
t1999 = qJD(1) * t1965;
t2000 = qJD(1) * t1961;
t1913 = -t1960 * t1999 + t1964 * t2000;
t1957 = sin(pkin(10));
t1958 = cos(pkin(10));
t1887 = -t1958 * t1911 + t1913 * t1957;
t1886 = qJD(6) + t1887;
t2011 = qJD(6) + t1886;
t1889 = t1911 * t1957 + t1913 * t1958;
t1950 = qJD(2) - qJD(4);
t1959 = sin(qJ(6));
t1963 = cos(qJ(6));
t1873 = t1889 * t1959 + t1963 * t1950;
t2010 = t1873 ^ 2;
t1875 = t1889 * t1963 - t1950 * t1959;
t2009 = t1875 ^ 2;
t2008 = t1886 ^ 2;
t2007 = t1887 ^ 2;
t2006 = t1889 ^ 2;
t1910 = t1911 ^ 2;
t2005 = t1913 ^ 2;
t2004 = t1950 ^ 2;
t2003 = 2 * qJD(3);
t2002 = -2 * qJD(5);
t2001 = t1965 * g(3);
t1997 = t1873 * t1875;
t1996 = t1887 * t1889;
t1995 = t1887 * t1950;
t1994 = t1889 * t1950;
t1993 = t1911 * t1913;
t1992 = t1911 * t1950;
t1955 = t1965 ^ 2;
t1989 = t1955 * t1968;
t1987 = qJD(4) + t1950;
t1986 = qJD(6) - t1886;
t1931 = -g(1) * t1966 - g(2) * t1962;
t1915 = -pkin(1) * t1968 + qJDD(1) * pkin(7) + t1931;
t1903 = -g(3) * t1961 + t1965 * t1915;
t1918 = (-pkin(2) * t1965 - qJ(3) * t1961) * qJD(1);
t1871 = -pkin(2) * t1967 + qJDD(2) * qJ(3) + qJD(2) * t2003 + t1918 * t1999 + t1903;
t1943 = qJD(2) * t2000;
t1983 = t1965 * qJDD(1);
t1921 = -t1943 + t1983;
t1929 = -qJD(2) * pkin(3) - pkin(8) * t2000;
t1857 = -pkin(3) * t1989 - pkin(8) * t1921 + qJD(2) * t1929 + t1871;
t1920 = t1981 + t1984;
t1972 = -qJDD(2) * pkin(2) - t1967 * qJ(3) + qJDD(3) + t2001;
t1980 = qJD(1) * t1918 + t1915;
t1858 = -qJDD(2) * pkin(3) + (-t1920 + t1981) * pkin(8) + (-pkin(3) * t1988 + t1980) * t1961 + t1972;
t1829 = t1964 * t1857 + t1960 * t1858;
t1985 = t1954 + t1955;
t1982 = qJDD(2) - qJDD(4);
t1975 = t1960 * t1920 + t1964 * t1921;
t1877 = -qJD(4) * t1913 - t1975;
t1904 = -pkin(4) * t1950 - qJ(5) * t1913;
t1818 = -pkin(4) * t1910 + qJ(5) * t1877 + t1904 * t1950 + t1829;
t1828 = -t1960 * t1857 + t1964 * t1858;
t1973 = -t1964 * t1920 + t1960 * t1921;
t1878 = qJD(4) * t1911 - t1973;
t1892 = -t1982 + t1993;
t1969 = (-t1878 - t1992) * qJ(5) + t1892 * pkin(4) + t1828;
t1795 = t1958 * t1818 + t1887 * t2002 + t1957 * t1969;
t1930 = t1962 * g(1) - t1966 * g(2);
t1979 = t1957 * t1818 - t1958 * t1969;
t1848 = t1877 * t1957 + t1878 * t1958;
t1978 = -t1848 - t1995;
t1977 = -t1959 * t1848 - t1963 * t1982;
t1976 = -t1958 * t1877 + t1878 * t1957;
t1974 = -qJDD(6) - t1976;
t1896 = t1928 * t1961 + t1933 * t1965;
t1833 = t1976 - t1994;
t1971 = -t1963 * t1848 + t1959 * t1982;
t1914 = qJDD(1) * pkin(1) + t1968 * pkin(7) + t1930;
t1970 = t1914 + (t1921 - t1943) * pkin(2);
t1849 = t1920 * qJ(3) + t1921 * pkin(3) - pkin(8) * t1989 + (qJ(3) * t1998 + (t2003 + t1929) * t1961) * qJD(1) + t1970;
t1825 = -t1877 * pkin(4) - t1910 * qJ(5) + t1913 * t1904 + qJDD(5) + t1849;
t1934 = -t1967 - t1989;
t1927 = qJDD(2) + t1936;
t1926 = t1985 * t1968;
t1925 = -qJDD(1) * t1962 - t1966 * t1968;
t1924 = qJDD(1) * t1966 - t1962 * t1968;
t1923 = t1985 * qJDD(1);
t1922 = -0.2e1 * t1943 + t1983;
t1902 = -t1961 * t1915 - t2001;
t1901 = -t2004 - t2005;
t1898 = -t1927 * t1961 + t1934 * t1965;
t1895 = t1927 * t1965 + t1934 * t1961;
t1894 = t1923 * t1966 - t1926 * t1962;
t1893 = t1923 * t1962 + t1926 * t1966;
t1891 = t1982 + t1993;
t1890 = -t2004 - t1910;
t1882 = t1898 * t1966 - t1922 * t1962;
t1881 = t1898 * t1962 + t1922 * t1966;
t1880 = -t2004 - t2006;
t1879 = -t1910 - t2005;
t1876 = t1980 * t1961 + t1972;
t1869 = -t1902 * t1961 + t1903 * t1965;
t1868 = t1902 * t1965 + t1903 * t1961;
t1867 = t2000 * t2003 + (t1920 + t1981) * qJ(3) + t1970;
t1866 = t1891 * t1964 - t1901 * t1960;
t1865 = t1891 * t1960 + t1901 * t1964;
t1864 = -t1911 * t1987 + t1973;
t1863 = t1878 - t1992;
t1862 = -t1913 * t1987 - t1975;
t1861 = (qJD(4) - t1950) * t1913 + t1975;
t1860 = t1890 * t1964 - t1892 * t1960;
t1859 = t1890 * t1960 + t1892 * t1964;
t1856 = pkin(5) * t1887 - pkin(9) * t1889;
t1855 = -t1982 - t1996;
t1854 = t1982 - t1996;
t1853 = -t2004 - t2007;
t1847 = t1871 * t1965 + t1876 * t1961;
t1846 = t1871 * t1961 - t1876 * t1965;
t1845 = -t2006 - t2007;
t1844 = -t2008 - t2009;
t1843 = t1854 * t1958 - t1880 * t1957;
t1842 = t1854 * t1957 + t1880 * t1958;
t1841 = -t2008 - t2010;
t1840 = t1865 * t1961 + t1866 * t1965;
t1839 = -t1865 * t1965 + t1866 * t1961;
t1838 = t1862 * t1964 - t1864 * t1960;
t1837 = t1862 * t1960 + t1864 * t1964;
t1836 = -t1848 + t1995;
t1834 = -t1976 - t1994;
t1832 = -t2009 - t2010;
t1831 = t1859 * t1961 + t1860 * t1965;
t1830 = -t1859 * t1965 + t1860 * t1961;
t1827 = t1853 * t1958 - t1855 * t1957;
t1826 = t1853 * t1957 + t1855 * t1958;
t1824 = t1974 - t1997;
t1823 = -t1974 - t1997;
t1822 = t1873 * t1986 + t1971;
t1821 = -t1873 * t2011 - t1971;
t1820 = -t1875 * t1986 + t1977;
t1819 = t1875 * t2011 - t1977;
t1814 = -t1842 * t1960 + t1843 * t1964;
t1813 = t1842 * t1964 + t1843 * t1960;
t1812 = t1837 * t1961 + t1838 * t1965;
t1811 = -t1837 * t1965 + t1838 * t1961;
t1810 = t1834 * t1958 - t1836 * t1957;
t1809 = t1834 * t1957 + t1836 * t1958;
t1808 = -t1828 * t1960 + t1829 * t1964;
t1807 = t1828 * t1964 + t1829 * t1960;
t1806 = t1824 * t1963 - t1844 * t1959;
t1805 = t1824 * t1959 + t1844 * t1963;
t1804 = -t1826 * t1960 + t1827 * t1964;
t1803 = t1826 * t1964 + t1827 * t1960;
t1802 = -t1823 * t1959 + t1841 * t1963;
t1801 = t1823 * t1963 + t1841 * t1959;
t1800 = pkin(5) * t1833 + pkin(9) * t1978 + t1825;
t1799 = t1820 * t1963 - t1822 * t1959;
t1798 = t1820 * t1959 + t1822 * t1963;
t1797 = t1813 * t1961 + t1814 * t1965;
t1796 = -t1813 * t1965 + t1814 * t1961;
t1794 = t1889 * t2002 - t1979;
t1793 = t1806 * t1958 + t1821 * t1957;
t1792 = t1806 * t1957 - t1821 * t1958;
t1791 = -t1809 * t1960 + t1810 * t1964;
t1790 = t1809 * t1964 + t1810 * t1960;
t1789 = t1802 * t1958 + t1819 * t1957;
t1788 = t1802 * t1957 - t1819 * t1958;
t1787 = t1799 * t1958 + t1832 * t1957;
t1786 = t1799 * t1957 - t1832 * t1958;
t1785 = t1807 * t1961 + t1808 * t1965;
t1784 = -t1807 * t1965 + t1808 * t1961;
t1783 = t1803 * t1961 + t1804 * t1965;
t1782 = -t1803 * t1965 + t1804 * t1961;
t1781 = -pkin(5) * t2004 - pkin(9) * t1982 - t1887 * t1856 + t1795;
t1780 = t1982 * pkin(5) - t2004 * pkin(9) + ((2 * qJD(5)) + t1856) * t1889 + t1979;
t1779 = -t1794 * t1957 + t1795 * t1958;
t1778 = t1794 * t1958 + t1795 * t1957;
t1777 = t1781 * t1963 + t1800 * t1959;
t1776 = -t1781 * t1959 + t1800 * t1963;
t1775 = -t1792 * t1960 + t1793 * t1964;
t1774 = t1792 * t1964 + t1793 * t1960;
t1773 = t1790 * t1961 + t1791 * t1965;
t1772 = -t1790 * t1965 + t1791 * t1961;
t1771 = -t1788 * t1960 + t1789 * t1964;
t1770 = t1788 * t1964 + t1789 * t1960;
t1769 = -t1786 * t1960 + t1787 * t1964;
t1768 = t1786 * t1964 + t1787 * t1960;
t1767 = -t1778 * t1960 + t1779 * t1964;
t1766 = t1778 * t1964 + t1779 * t1960;
t1765 = -t1776 * t1959 + t1777 * t1963;
t1764 = t1776 * t1963 + t1777 * t1959;
t1763 = t1774 * t1961 + t1775 * t1965;
t1762 = -t1774 * t1965 + t1775 * t1961;
t1761 = t1770 * t1961 + t1771 * t1965;
t1760 = -t1770 * t1965 + t1771 * t1961;
t1759 = t1768 * t1961 + t1769 * t1965;
t1758 = -t1768 * t1965 + t1769 * t1961;
t1757 = t1765 * t1958 + t1780 * t1957;
t1756 = t1765 * t1957 - t1780 * t1958;
t1755 = t1766 * t1961 + t1767 * t1965;
t1754 = -t1766 * t1965 + t1767 * t1961;
t1753 = -t1756 * t1960 + t1757 * t1964;
t1752 = t1756 * t1964 + t1757 * t1960;
t1751 = t1752 * t1961 + t1753 * t1965;
t1750 = -t1752 * t1965 + t1753 * t1961;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1925, -t1924, 0, -t1930 * t1962 + t1931 * t1966, 0, 0, 0, 0, 0, 0, t1882, -t2012, t1894, t1869 * t1966 - t1914 * t1962, 0, 0, 0, 0, 0, 0, t1882, t1894, t2012, t1847 * t1966 - t1867 * t1962, 0, 0, 0, 0, 0, 0, t1831 * t1966 - t1861 * t1962, t1840 * t1966 - t1863 * t1962, t1812 * t1966 - t1879 * t1962, t1785 * t1966 - t1849 * t1962, 0, 0, 0, 0, 0, 0, t1783 * t1966 - t1833 * t1962, t1797 * t1966 + t1962 * t1978, t1773 * t1966 - t1845 * t1962, t1755 * t1966 - t1825 * t1962, 0, 0, 0, 0, 0, 0, t1761 * t1966 - t1801 * t1962, t1763 * t1966 - t1805 * t1962, t1759 * t1966 - t1798 * t1962, t1751 * t1966 - t1764 * t1962; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1924, t1925, 0, t1930 * t1966 + t1931 * t1962, 0, 0, 0, 0, 0, 0, t1881, -t2013, t1893, t1869 * t1962 + t1914 * t1966, 0, 0, 0, 0, 0, 0, t1881, t1893, t2013, t1847 * t1962 + t1867 * t1966, 0, 0, 0, 0, 0, 0, t1831 * t1962 + t1861 * t1966, t1840 * t1962 + t1863 * t1966, t1812 * t1962 + t1879 * t1966, t1785 * t1962 + t1849 * t1966, 0, 0, 0, 0, 0, 0, t1783 * t1962 + t1833 * t1966, t1797 * t1962 - t1966 * t1978, t1773 * t1962 + t1845 * t1966, t1755 * t1962 + t1825 * t1966, 0, 0, 0, 0, 0, 0, t1761 * t1962 + t1801 * t1966, t1763 * t1962 + t1805 * t1966, t1759 * t1962 + t1798 * t1966, t1751 * t1962 + t1764 * t1966; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1895, -t1896, 0, t1868, 0, 0, 0, 0, 0, 0, t1895, 0, t1896, t1846, 0, 0, 0, 0, 0, 0, t1830, t1839, t1811, t1784, 0, 0, 0, 0, 0, 0, t1782, t1796, t1772, t1754, 0, 0, 0, 0, 0, 0, t1760, t1762, t1758, t1750; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1968, -qJDD(1), 0, t1931, 0, 0, 0, 0, 0, 0, t1898, -t1899, t1923, t1869, 0, 0, 0, 0, 0, 0, t1898, t1923, t1899, t1847, 0, 0, 0, 0, 0, 0, t1831, t1840, t1812, t1785, 0, 0, 0, 0, 0, 0, t1783, t1797, t1773, t1755, 0, 0, 0, 0, 0, 0, t1761, t1763, t1759, t1751; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1968, 0, t1930, 0, 0, 0, 0, 0, 0, t1922, -t1919, t1926, t1914, 0, 0, 0, 0, 0, 0, t1922, t1926, t1919, t1867, 0, 0, 0, 0, 0, 0, t1861, t1863, t1879, t1849, 0, 0, 0, 0, 0, 0, t1833, -t1978, t1845, t1825, 0, 0, 0, 0, 0, 0, t1801, t1805, t1798, t1764; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1895, -t1896, 0, t1868, 0, 0, 0, 0, 0, 0, t1895, 0, t1896, t1846, 0, 0, 0, 0, 0, 0, t1830, t1839, t1811, t1784, 0, 0, 0, 0, 0, 0, t1782, t1796, t1772, t1754, 0, 0, 0, 0, 0, 0, t1760, t1762, t1758, t1750; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1934, -t1928, t1983, t1903, 0, 0, 0, 0, 0, 0, t1934, t1983, t1928, t1871, 0, 0, 0, 0, 0, 0, t1860, t1866, t1838, t1808, 0, 0, 0, 0, 0, 0, t1804, t1814, t1791, t1767, 0, 0, 0, 0, 0, 0, t1771, t1775, t1769, t1753; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1927, -t1933, -t1984, t1902, 0, 0, 0, 0, 0, 0, t1927, -t1984, t1933, -t1876, 0, 0, 0, 0, 0, 0, -t1859, -t1865, -t1837, -t1807, 0, 0, 0, 0, 0, 0, -t1803, -t1813, -t1790, -t1766, 0, 0, 0, 0, 0, 0, -t1770, -t1774, -t1768, -t1752; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1922, t1919, -t1926, -t1914, 0, 0, 0, 0, 0, 0, -t1922, -t1926, -t1919, -t1867, 0, 0, 0, 0, 0, 0, -t1861, -t1863, -t1879, -t1849, 0, 0, 0, 0, 0, 0, -t1833, t1978, -t1845, -t1825, 0, 0, 0, 0, 0, 0, -t1801, -t1805, -t1798, -t1764; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1934, t1983, t1928, t1871, 0, 0, 0, 0, 0, 0, t1860, t1866, t1838, t1808, 0, 0, 0, 0, 0, 0, t1804, t1814, t1791, t1767, 0, 0, 0, 0, 0, 0, t1771, t1775, t1769, t1753; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1922, -t1926, -t1919, -t1867, 0, 0, 0, 0, 0, 0, -t1861, -t1863, -t1879, -t1849, 0, 0, 0, 0, 0, 0, -t1833, t1978, -t1845, -t1825, 0, 0, 0, 0, 0, 0, -t1801, -t1805, -t1798, -t1764; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1927, t1984, -t1933, t1876, 0, 0, 0, 0, 0, 0, t1859, t1865, t1837, t1807, 0, 0, 0, 0, 0, 0, t1803, t1813, t1790, t1766, 0, 0, 0, 0, 0, 0, t1770, t1774, t1768, t1752; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1890, t1891, t1862, t1829, 0, 0, 0, 0, 0, 0, t1827, t1843, t1810, t1779, 0, 0, 0, 0, 0, 0, t1789, t1793, t1787, t1757; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1892, t1901, t1864, t1828, 0, 0, 0, 0, 0, 0, t1826, t1842, t1809, t1778, 0, 0, 0, 0, 0, 0, t1788, t1792, t1786, t1756; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1861, t1863, t1879, t1849, 0, 0, 0, 0, 0, 0, t1833, -t1978, t1845, t1825, 0, 0, 0, 0, 0, 0, t1801, t1805, t1798, t1764; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1853, t1854, t1834, t1795, 0, 0, 0, 0, 0, 0, t1802, t1806, t1799, t1765; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1855, t1880, t1836, t1794, 0, 0, 0, 0, 0, 0, -t1819, -t1821, -t1832, -t1780; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1833, -t1978, t1845, t1825, 0, 0, 0, 0, 0, 0, t1801, t1805, t1798, t1764; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1841, t1824, t1820, t1777; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1823, t1844, t1822, t1776; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1819, t1821, t1832, t1780;];
f_new_reg  = t1;
