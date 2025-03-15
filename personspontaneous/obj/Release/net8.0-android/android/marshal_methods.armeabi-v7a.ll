; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [137 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [274 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 127
	i32 67008169, ; 1: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 51
	i32 117431740, ; 3: System.Runtime.InteropServices => 0x6ffddbc => 118
	i32 165246403, ; 4: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 59
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 77
	i32 195452805, ; 6: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 7: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 8: System.ComponentModel => 0xc38ff48 => 97
	i32 230752869, ; 9: Microsoft.CSharp.dll => 0xdc10265 => 89
	i32 280992041, ; 10: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 11: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 12: Xamarin.AndroidX.Activity.dll => 0x13031348 => 54
	i32 336156722, ; 13: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 14: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 66
	i32 356389973, ; 15: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 379916513, ; 16: System.Threading.Thread.dll => 0x16a510e1 => 127
	i32 385762202, ; 17: System.Memory.dll => 0x16fe439a => 109
	i32 395744057, ; 18: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 19: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 20: System.Collections => 0x1a61054f => 94
	i32 450948140, ; 21: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 65
	i32 456227837, ; 22: System.Web.HttpUtility.dll => 0x1b317bfd => 129
	i32 465846621, ; 23: mscorlib => 0x1bc4415d => 132
	i32 469710990, ; 24: System.dll => 0x1bff388e => 131
	i32 498788369, ; 25: System.ObjectModel => 0x1dbae811 => 115
	i32 500358224, ; 26: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 27: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 504143952, ; 28: Plugin.LocalNotification.dll => 0x1e0ca050 => 53
	i32 513247710, ; 29: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 45
	i32 539058512, ; 30: Microsoft.Extensions.Logging => 0x20216150 => 42
	i32 592146354, ; 31: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 597488923, ; 32: CommunityToolkit.Maui => 0x239cf51b => 35
	i32 627609679, ; 33: Xamarin.AndroidX.CustomView => 0x2568904f => 63
	i32 627931235, ; 34: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 35: System.Text.Encodings.Web.dll => 0x27787397 => 124
	i32 663517072, ; 36: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 78
	i32 672442732, ; 37: System.Collections.Concurrent => 0x2814a96c => 90
	i32 688181140, ; 38: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 706645707, ; 39: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 40: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 41: System.Runtime.Loader.dll => 0x2b15ed29 => 119
	i32 756903454, ; 42: personspontaneous => 0x2d1d6e1e => 88
	i32 759454413, ; 43: System.Net.Requests => 0x2d445acd => 113
	i32 775507847, ; 44: System.IO.Compression => 0x2e394f87 => 106
	i32 777317022, ; 45: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 46: Microsoft.Extensions.Options => 0x2f0980eb => 44
	i32 804715423, ; 47: System.Data.Common => 0x2ff6fb9f => 100
	i32 823281589, ; 48: System.Private.Uri.dll => 0x311247b5 => 116
	i32 830298997, ; 49: System.IO.Compression.Brotli => 0x317d5b75 => 105
	i32 898440345, ; 50: CsvHelper => 0x358d1c99 => 37
	i32 904024072, ; 51: System.ComponentModel.Primitives.dll => 0x35e25008 => 95
	i32 912572698, ; 52: Xamarin.AndroidX.Biometric => 0x3664c11a => 57
	i32 926902833, ; 53: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 54: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 66
	i32 992768348, ; 55: System.Collections.dll => 0x3b2c715c => 94
	i32 1012816738, ; 56: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 76
	i32 1019214401, ; 57: System.Drawing => 0x3cbffa41 => 104
	i32 1021423317, ; 58: personspontaneous.dll => 0x3ce1aed5 => 88
	i32 1028951442, ; 59: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 41
	i32 1029334545, ; 60: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 61: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 55
	i32 1036536393, ; 62: System.Drawing.Primitives.dll => 0x3dc84a49 => 103
	i32 1044663988, ; 63: System.Linq.Expressions.dll => 0x3e444eb4 => 107
	i32 1052210849, ; 64: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 68
	i32 1082857460, ; 65: System.ComponentModel.TypeConverter => 0x408b17f4 => 96
	i32 1084122840, ; 66: Xamarin.Kotlin.StdLib => 0x409e66d8 => 86
	i32 1098259244, ; 67: System => 0x41761b2c => 131
	i32 1118262833, ; 68: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 69: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 70: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 73
	i32 1203215381, ; 71: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 72: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 73: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 74: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 64
	i32 1324164729, ; 75: System.Linq => 0x4eed2679 => 108
	i32 1373134921, ; 76: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 77: Xamarin.AndroidX.SavedState => 0x52114ed3 => 76
	i32 1406073936, ; 78: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 60
	i32 1408764838, ; 79: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 121
	i32 1430672901, ; 80: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 81: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 82: System.Collections.Immutable.dll => 0x5718a9ef => 91
	i32 1462112819, ; 83: System.IO.Compression.dll => 0x57261233 => 106
	i32 1469204771, ; 84: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 56
	i32 1470490898, ; 85: Microsoft.Extensions.Primitives => 0x57a5e912 => 45
	i32 1479771757, ; 86: System.Collections.Immutable => 0x5833866d => 91
	i32 1480492111, ; 87: System.IO.Compression.Brotli.dll => 0x583e844f => 105
	i32 1493001747, ; 88: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 89: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1524747670, ; 90: Plugin.LocalNotification => 0x5ae1cd96 => 53
	i32 1543031311, ; 91: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 126
	i32 1551623176, ; 92: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 93: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 70
	i32 1624863272, ; 94: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 80
	i32 1634654947, ; 95: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 36
	i32 1636350590, ; 96: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 62
	i32 1639515021, ; 97: System.Net.Http.dll => 0x61b9038d => 110
	i32 1639986890, ; 98: System.Text.RegularExpressions => 0x61c036ca => 126
	i32 1657153582, ; 99: System.Runtime => 0x62c6282e => 122
	i32 1658251792, ; 100: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 81
	i32 1677501392, ; 101: System.Net.Primitives.dll => 0x63fca3d0 => 112
	i32 1679769178, ; 102: System.Security.Cryptography => 0x641f3e5a => 123
	i32 1729485958, ; 103: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 58
	i32 1736233607, ; 104: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 105: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 106: System.Diagnostics.TraceSource.dll => 0x69239124 => 102
	i32 1766324549, ; 107: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 77
	i32 1770582343, ; 108: Microsoft.Extensions.Logging.dll => 0x6988f147 => 42
	i32 1776026572, ; 109: System.Core.dll => 0x69dc03cc => 99
	i32 1780572499, ; 110: Mono.Android.Runtime.dll => 0x6a216153 => 135
	i32 1782862114, ; 111: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 112: Xamarin.AndroidX.Fragment => 0x6a96652d => 65
	i32 1793755602, ; 113: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 114: Xamarin.AndroidX.Loader => 0x6bcd3296 => 70
	i32 1813058853, ; 115: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 86
	i32 1813201214, ; 116: Xamarin.Google.Android.Material => 0x6c13413e => 81
	i32 1818569960, ; 117: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 74
	i32 1824722060, ; 118: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 121
	i32 1828688058, ; 119: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 43
	i32 1842015223, ; 120: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 121: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 122: System.Linq.Expressions => 0x6ec71a65 => 107
	i32 1875935024, ; 123: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1908813208, ; 124: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 83
	i32 1910275211, ; 125: System.Collections.NonGeneric.dll => 0x71dc7c8b => 92
	i32 1968388702, ; 126: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 38
	i32 2003115576, ; 127: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 128: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 68
	i32 2025202353, ; 129: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 130: System.Private.Xml => 0x79eb68ee => 117
	i32 2055257422, ; 131: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 67
	i32 2066184531, ; 132: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 133: System.Diagnostics.TraceSource => 0x7b6f419e => 102
	i32 2079903147, ; 134: System.Runtime.dll => 0x7bf8cdab => 122
	i32 2090596640, ; 135: System.Numerics.Vectors => 0x7c9bf920 => 114
	i32 2127167465, ; 136: System.Console => 0x7ec9ffe9 => 98
	i32 2129483829, ; 137: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 82
	i32 2142473426, ; 138: System.Collections.Specialized => 0x7fb38cd2 => 93
	i32 2159891885, ; 139: Microsoft.Maui => 0x80bd55ad => 49
	i32 2169148018, ; 140: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 141: Microsoft.Extensions.Options.dll => 0x820d22b3 => 44
	i32 2192057212, ; 142: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 43
	i32 2193016926, ; 143: System.ObjectModel.dll => 0x82b6c85e => 115
	i32 2201107256, ; 144: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 87
	i32 2201231467, ; 145: System.Net.Http => 0x8334206b => 110
	i32 2207618523, ; 146: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 147: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 39
	i32 2270573516, ; 148: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 149: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 75
	i32 2298471582, ; 150: System.Net.Mail => 0x88ffe49e => 111
	i32 2303942373, ; 151: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 152: System.Private.CoreLib.dll => 0x896b7878 => 133
	i32 2353062107, ; 153: System.Net.Primitives => 0x8c40e0db => 112
	i32 2368005991, ; 154: System.Xml.ReaderWriter.dll => 0x8d24e767 => 130
	i32 2371007202, ; 155: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 38
	i32 2395872292, ; 156: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 157: System.Web.HttpUtility => 0x8f24faee => 129
	i32 2427813419, ; 158: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2428790861, ; 159: Plugin.Fingerprint => 0x90c4684d => 52
	i32 2435356389, ; 160: System.Console.dll => 0x912896e5 => 98
	i32 2475788418, ; 161: Java.Interop.dll => 0x93918882 => 134
	i32 2480646305, ; 162: Microsoft.Maui.Controls => 0x93dba8a1 => 47
	i32 2483946094, ; 163: Plugin.Fingerprint.dll => 0x940e026e => 52
	i32 2526443681, ; 164: Xamarin.AndroidX.Biometric.dll => 0x969678a1 => 57
	i32 2550873716, ; 165: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 166: Microsoft.CSharp => 0x98ba5a04 => 89
	i32 2570120770, ; 167: System.Text.Encodings.Web => 0x9930ee42 => 124
	i32 2593496499, ; 168: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 169: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 87
	i32 2617129537, ; 170: System.Private.Xml.dll => 0x9bfe3a41 => 117
	i32 2620871830, ; 171: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 62
	i32 2626831493, ; 172: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 173: System.Runtime.Loader => 0x9ec4cf01 => 119
	i32 2665622720, ; 174: System.Drawing.Primitives => 0x9ee22cc0 => 103
	i32 2676780864, ; 175: System.Data.Common.dll => 0x9f8c6f40 => 100
	i32 2724373263, ; 176: System.Runtime.Numerics.dll => 0xa262a30f => 120
	i32 2732626843, ; 177: Xamarin.AndroidX.Activity => 0xa2e0939b => 54
	i32 2737747696, ; 178: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 56
	i32 2752995522, ; 179: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 180: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 48
	i32 2764765095, ; 181: Microsoft.Maui.dll => 0xa4caf7a7 => 49
	i32 2778768386, ; 182: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 79
	i32 2785988530, ; 183: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 184: Microsoft.Maui.Graphics => 0xa7008e0b => 51
	i32 2806116107, ; 185: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 186: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 60
	i32 2831556043, ; 187: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2847418871, ; 188: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 82
	i32 2853208004, ; 189: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 79
	i32 2861189240, ; 190: Microsoft.Maui.Essentials => 0xaa8a4878 => 50
	i32 2868488919, ; 191: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 36
	i32 2905242038, ; 192: mscorlib.dll => 0xad2a79b6 => 132
	i32 2909740682, ; 193: System.Private.CoreLib => 0xad6f1e8a => 133
	i32 2916838712, ; 194: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 80
	i32 2919462931, ; 195: System.Numerics.Vectors.dll => 0xae037813 => 114
	i32 2959614098, ; 196: System.ComponentModel.dll => 0xb0682092 => 97
	i32 2978675010, ; 197: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 64
	i32 3038032645, ; 198: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 199: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 71
	i32 3058099980, ; 200: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 85
	i32 3059408633, ; 201: Mono.Android.Runtime => 0xb65adef9 => 135
	i32 3059793426, ; 202: System.ComponentModel.Primitives => 0xb660be12 => 95
	i32 3077302341, ; 203: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3178803400, ; 204: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 72
	i32 3220365878, ; 205: System.Threading => 0xbff2e236 => 128
	i32 3230466174, ; 206: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 83
	i32 3258312781, ; 207: Xamarin.AndroidX.CardView => 0xc235e84d => 58
	i32 3305363605, ; 208: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 209: System.Net.Requests.dll => 0xc5b097e4 => 113
	i32 3317135071, ; 210: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 63
	i32 3346324047, ; 211: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 73
	i32 3357674450, ; 212: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 213: System.Text.Json => 0xc82afec1 => 125
	i32 3362522851, ; 214: Xamarin.AndroidX.Core => 0xc86c06e3 => 61
	i32 3366347497, ; 215: Java.Interop => 0xc8a662e9 => 134
	i32 3374999561, ; 216: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 75
	i32 3381016424, ; 217: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 218: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 40
	i32 3452344032, ; 219: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 46
	i32 3463511458, ; 220: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 221: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 96
	i32 3476120550, ; 222: Mono.Android => 0xcf3163e6 => 136
	i32 3479583265, ; 223: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 224: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 225: System.Text.Json.dll => 0xcfbaacae => 125
	i32 3494395880, ; 226: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 84
	i32 3580758918, ; 227: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 228: System.Linq.dll => 0xd715a361 => 108
	i32 3641597786, ; 229: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 67
	i32 3643446276, ; 230: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 231: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 72
	i32 3657292374, ; 232: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 39
	i32 3672681054, ; 233: Mono.Android.dll => 0xdae8aa5e => 136
	i32 3697841164, ; 234: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 235: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 71
	i32 3748608112, ; 236: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 101
	i32 3786282454, ; 237: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 59
	i32 3792276235, ; 238: System.Collections.NonGeneric => 0xe2098b0b => 92
	i32 3800979733, ; 239: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 46
	i32 3802395368, ; 240: System.Collections.Specialized.dll => 0xe2a3f2e8 => 93
	i32 3817368567, ; 241: CommunityToolkit.Maui.dll => 0xe3886bf7 => 35
	i32 3818918118, ; 242: CsvHelper.dll => 0xe3a010e6 => 37
	i32 3823082795, ; 243: System.Security.Cryptography.dll => 0xe3df9d2b => 123
	i32 3841636137, ; 244: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 41
	i32 3844307129, ; 245: System.Net.Mail.dll => 0xe52378b9 => 111
	i32 3849253459, ; 246: System.Runtime.InteropServices.dll => 0xe56ef253 => 118
	i32 3889960447, ; 247: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 248: System.Collections.Concurrent.dll => 0xe839deed => 90
	i32 3896760992, ; 249: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 61
	i32 3921031405, ; 250: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 78
	i32 3928044579, ; 251: System.Xml.ReaderWriter => 0xea213423 => 130
	i32 3931092270, ; 252: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 74
	i32 3955647286, ; 253: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 55
	i32 3967165417, ; 254: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 84
	i32 3970018735, ; 255: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 85
	i32 3980434154, ; 256: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 257: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 258: System.Memory => 0xeff49a63 => 109
	i32 4046471985, ; 259: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 48
	i32 4073602200, ; 260: System.Threading.dll => 0xf2ce3c98 => 128
	i32 4094352644, ; 261: Microsoft.Maui.Essentials.dll => 0xf40add04 => 50
	i32 4099507663, ; 262: System.Drawing.dll => 0xf45985cf => 104
	i32 4100113165, ; 263: System.Private.Uri => 0xf462c30d => 116
	i32 4102112229, ; 264: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 265: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 266: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 40
	i32 4150914736, ; 267: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4151237749, ; 268: System.Core => 0xf76edc75 => 99
	i32 4182413190, ; 269: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 69
	i32 4213026141, ; 270: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 101
	i32 4271975918, ; 271: Microsoft.Maui.Controls.dll => 0xfea12dee => 47
	i32 4274976490, ; 272: System.Runtime.Numerics => 0xfecef6ea => 120
	i32 4292120959 ; 273: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 69
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [274 x i32] [
	i32 127, ; 0
	i32 33, ; 1
	i32 51, ; 2
	i32 118, ; 3
	i32 59, ; 4
	i32 77, ; 5
	i32 30, ; 6
	i32 31, ; 7
	i32 97, ; 8
	i32 89, ; 9
	i32 2, ; 10
	i32 30, ; 11
	i32 54, ; 12
	i32 15, ; 13
	i32 66, ; 14
	i32 14, ; 15
	i32 127, ; 16
	i32 109, ; 17
	i32 34, ; 18
	i32 26, ; 19
	i32 94, ; 20
	i32 65, ; 21
	i32 129, ; 22
	i32 132, ; 23
	i32 131, ; 24
	i32 115, ; 25
	i32 13, ; 26
	i32 7, ; 27
	i32 53, ; 28
	i32 45, ; 29
	i32 42, ; 30
	i32 21, ; 31
	i32 35, ; 32
	i32 63, ; 33
	i32 19, ; 34
	i32 124, ; 35
	i32 78, ; 36
	i32 90, ; 37
	i32 1, ; 38
	i32 16, ; 39
	i32 4, ; 40
	i32 119, ; 41
	i32 88, ; 42
	i32 113, ; 43
	i32 106, ; 44
	i32 25, ; 45
	i32 44, ; 46
	i32 100, ; 47
	i32 116, ; 48
	i32 105, ; 49
	i32 37, ; 50
	i32 95, ; 51
	i32 57, ; 52
	i32 28, ; 53
	i32 66, ; 54
	i32 94, ; 55
	i32 76, ; 56
	i32 104, ; 57
	i32 88, ; 58
	i32 41, ; 59
	i32 3, ; 60
	i32 55, ; 61
	i32 103, ; 62
	i32 107, ; 63
	i32 68, ; 64
	i32 96, ; 65
	i32 86, ; 66
	i32 131, ; 67
	i32 16, ; 68
	i32 22, ; 69
	i32 73, ; 70
	i32 20, ; 71
	i32 18, ; 72
	i32 2, ; 73
	i32 64, ; 74
	i32 108, ; 75
	i32 32, ; 76
	i32 76, ; 77
	i32 60, ; 78
	i32 121, ; 79
	i32 0, ; 80
	i32 6, ; 81
	i32 91, ; 82
	i32 106, ; 83
	i32 56, ; 84
	i32 45, ; 85
	i32 91, ; 86
	i32 105, ; 87
	i32 10, ; 88
	i32 5, ; 89
	i32 53, ; 90
	i32 126, ; 91
	i32 25, ; 92
	i32 70, ; 93
	i32 80, ; 94
	i32 36, ; 95
	i32 62, ; 96
	i32 110, ; 97
	i32 126, ; 98
	i32 122, ; 99
	i32 81, ; 100
	i32 112, ; 101
	i32 123, ; 102
	i32 58, ; 103
	i32 23, ; 104
	i32 1, ; 105
	i32 102, ; 106
	i32 77, ; 107
	i32 42, ; 108
	i32 99, ; 109
	i32 135, ; 110
	i32 17, ; 111
	i32 65, ; 112
	i32 9, ; 113
	i32 70, ; 114
	i32 86, ; 115
	i32 81, ; 116
	i32 74, ; 117
	i32 121, ; 118
	i32 43, ; 119
	i32 29, ; 120
	i32 26, ; 121
	i32 107, ; 122
	i32 8, ; 123
	i32 83, ; 124
	i32 92, ; 125
	i32 38, ; 126
	i32 5, ; 127
	i32 68, ; 128
	i32 0, ; 129
	i32 117, ; 130
	i32 67, ; 131
	i32 4, ; 132
	i32 102, ; 133
	i32 122, ; 134
	i32 114, ; 135
	i32 98, ; 136
	i32 82, ; 137
	i32 93, ; 138
	i32 49, ; 139
	i32 12, ; 140
	i32 44, ; 141
	i32 43, ; 142
	i32 115, ; 143
	i32 87, ; 144
	i32 110, ; 145
	i32 14, ; 146
	i32 39, ; 147
	i32 8, ; 148
	i32 75, ; 149
	i32 111, ; 150
	i32 18, ; 151
	i32 133, ; 152
	i32 112, ; 153
	i32 130, ; 154
	i32 38, ; 155
	i32 13, ; 156
	i32 129, ; 157
	i32 10, ; 158
	i32 52, ; 159
	i32 98, ; 160
	i32 134, ; 161
	i32 47, ; 162
	i32 52, ; 163
	i32 57, ; 164
	i32 11, ; 165
	i32 89, ; 166
	i32 124, ; 167
	i32 20, ; 168
	i32 87, ; 169
	i32 117, ; 170
	i32 62, ; 171
	i32 15, ; 172
	i32 119, ; 173
	i32 103, ; 174
	i32 100, ; 175
	i32 120, ; 176
	i32 54, ; 177
	i32 56, ; 178
	i32 21, ; 179
	i32 48, ; 180
	i32 49, ; 181
	i32 79, ; 182
	i32 27, ; 183
	i32 51, ; 184
	i32 6, ; 185
	i32 60, ; 186
	i32 19, ; 187
	i32 82, ; 188
	i32 79, ; 189
	i32 50, ; 190
	i32 36, ; 191
	i32 132, ; 192
	i32 133, ; 193
	i32 80, ; 194
	i32 114, ; 195
	i32 97, ; 196
	i32 64, ; 197
	i32 34, ; 198
	i32 71, ; 199
	i32 85, ; 200
	i32 135, ; 201
	i32 95, ; 202
	i32 12, ; 203
	i32 72, ; 204
	i32 128, ; 205
	i32 83, ; 206
	i32 58, ; 207
	i32 7, ; 208
	i32 113, ; 209
	i32 63, ; 210
	i32 73, ; 211
	i32 24, ; 212
	i32 125, ; 213
	i32 61, ; 214
	i32 134, ; 215
	i32 75, ; 216
	i32 3, ; 217
	i32 40, ; 218
	i32 46, ; 219
	i32 11, ; 220
	i32 96, ; 221
	i32 136, ; 222
	i32 24, ; 223
	i32 23, ; 224
	i32 125, ; 225
	i32 84, ; 226
	i32 31, ; 227
	i32 108, ; 228
	i32 67, ; 229
	i32 28, ; 230
	i32 72, ; 231
	i32 39, ; 232
	i32 136, ; 233
	i32 33, ; 234
	i32 71, ; 235
	i32 101, ; 236
	i32 59, ; 237
	i32 92, ; 238
	i32 46, ; 239
	i32 93, ; 240
	i32 35, ; 241
	i32 37, ; 242
	i32 123, ; 243
	i32 41, ; 244
	i32 111, ; 245
	i32 118, ; 246
	i32 32, ; 247
	i32 90, ; 248
	i32 61, ; 249
	i32 78, ; 250
	i32 130, ; 251
	i32 74, ; 252
	i32 55, ; 253
	i32 84, ; 254
	i32 85, ; 255
	i32 27, ; 256
	i32 9, ; 257
	i32 109, ; 258
	i32 48, ; 259
	i32 128, ; 260
	i32 50, ; 261
	i32 104, ; 262
	i32 116, ; 263
	i32 22, ; 264
	i32 17, ; 265
	i32 40, ; 266
	i32 29, ; 267
	i32 99, ; 268
	i32 69, ; 269
	i32 101, ; 270
	i32 47, ; 271
	i32 120, ; 272
	i32 69 ; 273
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
