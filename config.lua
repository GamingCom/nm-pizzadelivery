Config = {}

Config.Locations = {
    ["job"] = { ['x'] = 287.33993, ['y'] = -964.01, ['z'] = 29.418628}, -- Start the job 
    ["exit"]  = { ['x'] = 292.14797, ['y'] = -957.4452, ['z'] = 29.266353 }, -- Stop the job 
    ["vehicle"] = { ['x'] = 287.94827, ['y'] = -957.6777, ['z'] = 29.263866, ['a'] = 271.76031 }, -- Where the vehicle will be spawned
}

Config.ToLocations = { -- The Locations the delivery boy go
    [1] = {x = 333.03515, y = -1740.909, z = 29.730527, money = "l"}, -- l - Low, m - Medium, h - High
    [2] = {x = 320.63760, y = -1759.821, z = 29.637899, money = "l"}, -- l - Low, m - Medium, h - High
    [3] = {x = 304.46853, y = -1775.548, z = 29.101041, money = "l"}, -- l - Low, m - Medium, h - High
    [4] = {x = 300.12615, y = -1783.716, z = 28.438682, money = "l"}, -- l - Low, m - Medium, h - High
    [5] = {x = 288.78643, y = -1792.588, z = 28.089054, money = "l"}, -- l - Low, m - Medium, h - High
    [6] = {x = 282.02108, y = -1694.799, z = 29.647901, money = "l"}, -- l - Low, m - Medium, h - High
    [7] = {x = 269.77816, y = -1712.836, z = 29.668773, money = "l"}, -- l - Low, m - Medium, h - High
    [8] = {x = 257.60018, y = -1722.853, z = 29.654130, money = "l"}, -- l - Low, m - Medium, h - High
    [9] = {x = 250.14614, y = -1730.741, z = 29.668796, money = "l"}, -- l - Low, m - Medium, h - High
    [10] = {x = 252.91162, y = -1670.789, z = 29.663171, money = "l"}, -- l - Low, m - Medium, h - High
    [11] = {x = 240.69511, y = -1687.701, z = 29.699621, money = "l"}, -- l - Low, m - Medium, h - High
    [12] = {x = 222.64022, y = -1702.462, z = 29.696987, money = "l"}, -- l - Low, m - Medium, h - High
    [13] = {x = 216.45486, y = -1717.354, z = 29.677705, money = "l"}, -- l - Low, m - Medium, h - High
    [14] = {x = 197.55946, y = -1725.637, z = 29.663652, money = "l"}, -- l - Low, m - Medium, h - High
    
    [15] = {x = 144.43179, y = -82.74722, z = 64.469192, money = "m"}, -- l - Low, m - Medium, h - High
    [16] = {x = 141.52861, y = -90.13547, z = 68.468536, money = "m"}, -- l - Low, m - Medium, h - High
    [17] = {x = 144.23661, y = -82.59325, z = 68.468536, money = "m"}, -- l - Low, m - Medium, h - High
    [18] = {x = 141.52574, y = -90.21632, z = 72.469116, money = "m"}, -- l - Low, m - Medium, h - High
    [17] = {x = 144.29835, y = -82.61910, z = 72.468704, money = "m"}, -- l - Low, m - Medium, h - High
    [18] = {x = 151.59495, y = -72.76434, z = 67.674865, money = "m"}, -- l - Low, m - Medium, h - High
    [19] = {x = 151.48507, y = -72.77026, z = 71.860260, money = "m"}, -- l - Low, m - Medium, h - High
    [20] = {x = 151.47396, y = -72.75833, z = 75.861610, money = "m"}, -- l - Low, m - Medium, h - High
    [21] = {x = 106.85121, y = 54.873012, z = 77.769500, money = "m"}, -- l - Low, m - Medium, h - High
    [22] = {x = 106.77997, y = 54.805290, z = 81.773292, money = "m"}, -- l - Low, m - Medium, h - High
    [23] = {x = -383.8003, y = 152.87145, z = 65.531349, money = "m"}, -- l - Low, m - Medium, h - High
    [24] = {x = -384.9676, y = 159.56373, z = 65.531364, money = "m"}, -- l - Low, m - Medium, h - High
    [25] = {x = -384.9651, y = 159.48918, z = 69.721908, money = "m"}, -- l - Low, m - Medium, h - High
    [26] = {x = -384.9853, y = 159.56808, z = 73.732994, money = "m"}, -- l - Low, m - Medium, h - High
    [27] = {x = -383.7510, y = 152.80784, z = 73.733757, money = "m"}, -- l - Low, m - Medium, h - High
    [28] = {x = -384.9987, y = 159.52677, z = 77.744079, money = "m"}, -- l - Low, m - Medium, h - High
    [29] = {x = -383.7963, y = 152.77464, z = 77.744079, money = "m"}, -- l - Low, m - Medium, h - High
    [30] = {x = -384.9777, y = 159.57992, z = 81.743080, money = "m"}, -- l - Low, m - Medium, h - High
    [31] = {x = -383.7619, y = 152.80381, z = 81.747627, money = "m"}, -- l - Low, m - Medium, h - High
    [32] = {x = -412.0549, y = 152.78176, z = 65.527275, money = "m"}, -- l - Low, m - Medium, h - High
    [33] = {x = -410.7212, y = 159.65986, z = 65.524963, money = "m"}, -- l - Low, m - Medium, h - High
    [34] = {x = -410.7481, y = 159.61996, z = 69.721885, money = "m"}, -- l - Low, m - Medium, h - High
    [35] = {x = -412.0223, y = 152.79914, z = 69.721885, money = "m"}, -- l - Low, m - Medium, h - High
    [36] = {x = -410.7068, y = 159.63783, z = 73.732971, money = "m"}, -- l - Low, m - Medium, h - High
    [37] = {x = -410.7152, y = 159.63223, z = 77.744049, money = "m"}, -- l - Low, m - Medium, h - High
    [38] = {x = -412.0654, y = 152.85083, z = 77.744049, money = "m"}, -- l - Low, m - Medium, h - High
    [39] = {x = -410.7690, y = 159.57480, z = 81.743087, money = "m"}, -- l - Low, m - Medium, h - High
    [40] = {x = -412.0722, y = 152.86315, z = 81.743072, money = "m"}, -- l - Low, m - Medium, h - High
    
    [41] = {x = -561.0170, y = 402.49816, z = 101.80531, money = "h"}, -- l - Low, m - Medium, h - High
    [42] = {x = -595.6516, y = 392.98223, z = 101.88248, money = "h"}, -- l - Low, m - Medium, h - High
    [43] = {x = -615.4414, y = 398.22393, z = 101.62680, money = "h"}, -- l - Low, m - Medium, h - High
    [44] = {x = -516.5234, y = 433.51712, z = 97.807929, money = "h"}, -- l - Low, m - Medium, h - High
    [45] = {x = -477.1066, y = 413.16775, z = 103.12186, money = "h"}, -- l - Low, m - Medium, h - High
    [46] = {x = -469.2255, y = 330.16082, z = 104.74684, money = "h"}, -- l - Low, m - Medium, h - High
    [47] = {x = -444.2258, y = 342.76159, z = 105.62082, money = "h"}, -- l - Low, m - Medium, h - High
    [48] = {x = -409.5683, y = 341.44491, z = 108.90744, money = "h"}, -- l - Low, m - Medium, h - High
    [49] = {x = -371.8013, y = 343.33239, z = 109.94267, money = "h"}, -- l - Low, m - Medium, h - High
    [50] = {x = -328.0299, y = 369.59500, z = 110.00861, money = "h"}, -- l - Low, m - Medium, h - High
    [51] = {x = -297.7367, y = 379.80142, z = 112.09541, money = "h"}, -- l - Low, m - Medium, h - High
    [52] = {x = -239.1271, y = 381.92565, z = 112.62359, money = "h"}, -- l - Low, m - Medium, h - High
    [53] = {x = -214.0495, y = 399.49905, z = 111.30413, money = "h"}, -- l - Low, m - Medium, h - High
    [54] = {x = 228.65330, y = 765.69213, z = 204.97656, money = "n"}, -- l - Low, m - Medium, h - High
    [55] = {x = 232.30848, y = 672.21112, z = 189.97987, money = "h"}, -- l - Low, m - Medium, h - High
    [56] = {x = 216.39982, y = 620.37451, z = 187.75689, money = "h"}, -- l - Low, m - Medium, h - High
    [57] = {x = 128.11714, y = 565.98571, z = 183.95947, money = "h"}, -- l - Low, m - Medium, h - High
    [58] = {x = 84.901641, y = 561.70324, z = 182.77302, money = "h"}, -- l - Low, m - Medium, h - High
    [59] = {x = 45.770999, y = 555.81329, z = 180.08216, money = "h"}, -- l - Low, m - Medium, h - High
    [60] = {x = -661.7921, y = 678.88293, z = 153.91038, money = "h"}, -- l - Low, m - Medium, h - High
    [61] = {x = -700.9201, y = 646.95629, z = 155.37518, money = "h"}, -- l - Low, m - Medium, h - High
    [62] = {x = -704.3051, y = 588.39343, z = 142.27928, money = "h"}, -- l - Low, m - Medium, h - High
    [63] = {x = -765.7883, y = 650.55303, z = 145.69741, money = "h"}, -- l - Low, m - Medium, h - High
    [64] = {x = -819.4335, y = 696.48468, z = 148.10981, money = "h"}, -- l - Low, m - Medium, h - High
    [65] = {x = -884.5333, y = 699.39642, z = 151.27087, money = "h"}, -- l - Low, m - Medium, h - High
    [66] = {x = -908.6908, y = 693.73315, z = 151.43592, money = "h"}, -- l - Low, m - Medium, h - High
    [67] = {x = -931.4389, y = 690.98803, z = 153.46669, money = "h"}, -- l - Low, m - Medium, h - High
    [68] = {x = -997.3966, y = 681.87878, z = 160.68324, money = "h"}, -- l - Low, m - Medium, h - High
    [69] = {x = -1056.312, y = 761.51300, z = 167.31600, money = "h"}, -- l - Low, m - Medium, h - High
}