; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [129 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [258 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 119
	i32 67008169, ; 1: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 51
	i32 117431740, ; 3: System.Runtime.InteropServices => 0x6ffddbc => 112
	i32 165246403, ; 4: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 58
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 76
	i32 195452805, ; 6: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 7: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 8: System.ComponentModel => 0xc38ff48 => 91
	i32 230752869, ; 9: Microsoft.CSharp.dll => 0xdc10265 => 83
	i32 280992041, ; 10: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 11: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 12: Xamarin.AndroidX.Activity.dll => 0x13031348 => 53
	i32 336156722, ; 13: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 14: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 65
	i32 356389973, ; 15: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 379916513, ; 16: System.Threading.Thread.dll => 0x16a510e1 => 119
	i32 385762202, ; 17: System.Memory.dll => 0x16fe439a => 103
	i32 395744057, ; 18: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 19: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 20: System.Collections => 0x1a61054f => 88
	i32 450948140, ; 21: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 64
	i32 456227837, ; 22: System.Web.HttpUtility.dll => 0x1b317bfd => 121
	i32 465846621, ; 23: mscorlib => 0x1bc4415d => 124
	i32 469710990, ; 24: System.dll => 0x1bff388e => 123
	i32 498788369, ; 25: System.ObjectModel => 0x1dbae811 => 109
	i32 500358224, ; 26: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 27: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 28: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 45
	i32 539058512, ; 29: Microsoft.Extensions.Logging => 0x20216150 => 42
	i32 592146354, ; 30: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 597488923, ; 31: CommunityToolkit.Maui => 0x239cf51b => 35
	i32 627609679, ; 32: Xamarin.AndroidX.CustomView => 0x2568904f => 62
	i32 627931235, ; 33: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 34: System.Collections.Concurrent => 0x2814a96c => 84
	i32 688181140, ; 35: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 706645707, ; 36: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 37: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 38: System.Runtime.Loader.dll => 0x2b15ed29 => 113
	i32 756903454, ; 39: personspontaneous => 0x2d1d6e1e => 82
	i32 759454413, ; 40: System.Net.Requests => 0x2d445acd => 107
	i32 775507847, ; 41: System.IO.Compression => 0x2e394f87 => 100
	i32 777317022, ; 42: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 43: Microsoft.Extensions.Options => 0x2f0980eb => 44
	i32 804715423, ; 44: System.Data.Common => 0x2ff6fb9f => 94
	i32 823281589, ; 45: System.Private.Uri.dll => 0x311247b5 => 110
	i32 830298997, ; 46: System.IO.Compression.Brotli => 0x317d5b75 => 99
	i32 898440345, ; 47: CsvHelper => 0x358d1c99 => 37
	i32 904024072, ; 48: System.ComponentModel.Primitives.dll => 0x35e25008 => 89
	i32 912572698, ; 49: Xamarin.AndroidX.Biometric => 0x3664c11a => 56
	i32 926902833, ; 50: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 51: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 65
	i32 992768348, ; 52: System.Collections.dll => 0x3b2c715c => 88
	i32 1012816738, ; 53: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 75
	i32 1019214401, ; 54: System.Drawing => 0x3cbffa41 => 98
	i32 1021423317, ; 55: personspontaneous.dll => 0x3ce1aed5 => 82
	i32 1028951442, ; 56: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 41
	i32 1029334545, ; 57: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 58: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 54
	i32 1036536393, ; 59: System.Drawing.Primitives.dll => 0x3dc84a49 => 97
	i32 1044663988, ; 60: System.Linq.Expressions.dll => 0x3e444eb4 => 101
	i32 1052210849, ; 61: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 67
	i32 1082857460, ; 62: System.ComponentModel.TypeConverter => 0x408b17f4 => 90
	i32 1084122840, ; 63: Xamarin.Kotlin.StdLib => 0x409e66d8 => 80
	i32 1098259244, ; 64: System => 0x41761b2c => 123
	i32 1118262833, ; 65: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 66: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 67: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 72
	i32 1203215381, ; 68: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 69: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 70: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 71: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 63
	i32 1324164729, ; 72: System.Linq => 0x4eed2679 => 102
	i32 1373134921, ; 73: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 74: Xamarin.AndroidX.SavedState => 0x52114ed3 => 75
	i32 1406073936, ; 75: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 59
	i32 1408764838, ; 76: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 115
	i32 1430672901, ; 77: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 78: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 79: System.Collections.Immutable.dll => 0x5718a9ef => 85
	i32 1462112819, ; 80: System.IO.Compression.dll => 0x57261233 => 100
	i32 1469204771, ; 81: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 55
	i32 1470490898, ; 82: Microsoft.Extensions.Primitives => 0x57a5e912 => 45
	i32 1479771757, ; 83: System.Collections.Immutable => 0x5833866d => 85
	i32 1480492111, ; 84: System.IO.Compression.Brotli.dll => 0x583e844f => 99
	i32 1493001747, ; 85: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 86: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 87: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 118
	i32 1551623176, ; 88: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 89: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 69
	i32 1624863272, ; 90: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 78
	i32 1634654947, ; 91: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 36
	i32 1636350590, ; 92: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 61
	i32 1639515021, ; 93: System.Net.Http.dll => 0x61b9038d => 104
	i32 1639986890, ; 94: System.Text.RegularExpressions => 0x61c036ca => 118
	i32 1657153582, ; 95: System.Runtime => 0x62c6282e => 116
	i32 1658251792, ; 96: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 79
	i32 1677501392, ; 97: System.Net.Primitives.dll => 0x63fca3d0 => 106
	i32 1679769178, ; 98: System.Security.Cryptography => 0x641f3e5a => 117
	i32 1729485958, ; 99: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 57
	i32 1736233607, ; 100: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 101: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 102: System.Diagnostics.TraceSource.dll => 0x69239124 => 96
	i32 1766324549, ; 103: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 76
	i32 1770582343, ; 104: Microsoft.Extensions.Logging.dll => 0x6988f147 => 42
	i32 1776026572, ; 105: System.Core.dll => 0x69dc03cc => 93
	i32 1780572499, ; 106: Mono.Android.Runtime.dll => 0x6a216153 => 127
	i32 1782862114, ; 107: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 108: Xamarin.AndroidX.Fragment => 0x6a96652d => 64
	i32 1793755602, ; 109: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 110: Xamarin.AndroidX.Loader => 0x6bcd3296 => 69
	i32 1813058853, ; 111: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 80
	i32 1813201214, ; 112: Xamarin.Google.Android.Material => 0x6c13413e => 79
	i32 1818569960, ; 113: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 73
	i32 1824722060, ; 114: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 115
	i32 1828688058, ; 115: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 43
	i32 1842015223, ; 116: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 117: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 118: System.Linq.Expressions => 0x6ec71a65 => 101
	i32 1875935024, ; 119: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 120: System.Collections.NonGeneric.dll => 0x71dc7c8b => 86
	i32 1968388702, ; 121: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 38
	i32 2003115576, ; 122: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 123: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 67
	i32 2025202353, ; 124: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 125: System.Private.Xml => 0x79eb68ee => 111
	i32 2055257422, ; 126: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 66
	i32 2066184531, ; 127: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 128: System.Diagnostics.TraceSource => 0x7b6f419e => 96
	i32 2079903147, ; 129: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 130: System.Numerics.Vectors => 0x7c9bf920 => 108
	i32 2127167465, ; 131: System.Console => 0x7ec9ffe9 => 92
	i32 2142473426, ; 132: System.Collections.Specialized => 0x7fb38cd2 => 87
	i32 2159891885, ; 133: Microsoft.Maui => 0x80bd55ad => 49
	i32 2169148018, ; 134: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 135: Microsoft.Extensions.Options.dll => 0x820d22b3 => 44
	i32 2192057212, ; 136: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 43
	i32 2193016926, ; 137: System.ObjectModel.dll => 0x82b6c85e => 109
	i32 2201107256, ; 138: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 81
	i32 2201231467, ; 139: System.Net.Http => 0x8334206b => 104
	i32 2207618523, ; 140: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 141: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 39
	i32 2270573516, ; 142: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 143: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 74
	i32 2298471582, ; 144: System.Net.Mail => 0x88ffe49e => 105
	i32 2303942373, ; 145: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 146: System.Private.CoreLib.dll => 0x896b7878 => 125
	i32 2353062107, ; 147: System.Net.Primitives => 0x8c40e0db => 106
	i32 2368005991, ; 148: System.Xml.ReaderWriter.dll => 0x8d24e767 => 122
	i32 2371007202, ; 149: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 38
	i32 2395872292, ; 150: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 151: System.Web.HttpUtility => 0x8f24faee => 121
	i32 2427813419, ; 152: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2428790861, ; 153: Plugin.Fingerprint => 0x90c4684d => 52
	i32 2435356389, ; 154: System.Console.dll => 0x912896e5 => 92
	i32 2475788418, ; 155: Java.Interop.dll => 0x93918882 => 126
	i32 2480646305, ; 156: Microsoft.Maui.Controls => 0x93dba8a1 => 47
	i32 2483946094, ; 157: Plugin.Fingerprint.dll => 0x940e026e => 52
	i32 2526443681, ; 158: Xamarin.AndroidX.Biometric.dll => 0x969678a1 => 56
	i32 2550873716, ; 159: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 160: Microsoft.CSharp => 0x98ba5a04 => 83
	i32 2593496499, ; 161: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 162: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 81
	i32 2617129537, ; 163: System.Private.Xml.dll => 0x9bfe3a41 => 111
	i32 2620871830, ; 164: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 61
	i32 2626831493, ; 165: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 166: System.Runtime.Loader => 0x9ec4cf01 => 113
	i32 2665622720, ; 167: System.Drawing.Primitives => 0x9ee22cc0 => 97
	i32 2676780864, ; 168: System.Data.Common.dll => 0x9f8c6f40 => 94
	i32 2724373263, ; 169: System.Runtime.Numerics.dll => 0xa262a30f => 114
	i32 2732626843, ; 170: Xamarin.AndroidX.Activity => 0xa2e0939b => 53
	i32 2737747696, ; 171: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 55
	i32 2752995522, ; 172: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 173: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 48
	i32 2764765095, ; 174: Microsoft.Maui.dll => 0xa4caf7a7 => 49
	i32 2778768386, ; 175: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 77
	i32 2785988530, ; 176: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 177: Microsoft.Maui.Graphics => 0xa7008e0b => 51
	i32 2806116107, ; 178: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 179: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 59
	i32 2831556043, ; 180: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 181: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 77
	i32 2861189240, ; 182: Microsoft.Maui.Essentials => 0xaa8a4878 => 50
	i32 2868488919, ; 183: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 36
	i32 2905242038, ; 184: mscorlib.dll => 0xad2a79b6 => 124
	i32 2909740682, ; 185: System.Private.CoreLib => 0xad6f1e8a => 125
	i32 2916838712, ; 186: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 78
	i32 2919462931, ; 187: System.Numerics.Vectors.dll => 0xae037813 => 108
	i32 2959614098, ; 188: System.ComponentModel.dll => 0xb0682092 => 91
	i32 2978675010, ; 189: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 63
	i32 3038032645, ; 190: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 191: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 70
	i32 3059408633, ; 192: Mono.Android.Runtime => 0xb65adef9 => 127
	i32 3059793426, ; 193: System.ComponentModel.Primitives => 0xb660be12 => 89
	i32 3077302341, ; 194: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3178803400, ; 195: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 71
	i32 3220365878, ; 196: System.Threading => 0xbff2e236 => 120
	i32 3258312781, ; 197: Xamarin.AndroidX.CardView => 0xc235e84d => 57
	i32 3305363605, ; 198: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 199: System.Net.Requests.dll => 0xc5b097e4 => 107
	i32 3317135071, ; 200: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 62
	i32 3346324047, ; 201: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 72
	i32 3357674450, ; 202: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3362522851, ; 203: Xamarin.AndroidX.Core => 0xc86c06e3 => 60
	i32 3366347497, ; 204: Java.Interop => 0xc8a662e9 => 126
	i32 3374999561, ; 205: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 74
	i32 3381016424, ; 206: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 207: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 40
	i32 3452344032, ; 208: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 46
	i32 3463511458, ; 209: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 210: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 90
	i32 3476120550, ; 211: Mono.Android => 0xcf3163e6 => 128
	i32 3479583265, ; 212: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 213: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3580758918, ; 214: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 215: System.Linq.dll => 0xd715a361 => 102
	i32 3641597786, ; 216: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 66
	i32 3643446276, ; 217: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 218: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 71
	i32 3657292374, ; 219: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 39
	i32 3672681054, ; 220: Mono.Android.dll => 0xdae8aa5e => 128
	i32 3697841164, ; 221: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 222: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 70
	i32 3748608112, ; 223: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 95
	i32 3786282454, ; 224: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 58
	i32 3792276235, ; 225: System.Collections.NonGeneric => 0xe2098b0b => 86
	i32 3800979733, ; 226: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 46
	i32 3802395368, ; 227: System.Collections.Specialized.dll => 0xe2a3f2e8 => 87
	i32 3817368567, ; 228: CommunityToolkit.Maui.dll => 0xe3886bf7 => 35
	i32 3818918118, ; 229: CsvHelper.dll => 0xe3a010e6 => 37
	i32 3823082795, ; 230: System.Security.Cryptography.dll => 0xe3df9d2b => 117
	i32 3841636137, ; 231: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 41
	i32 3844307129, ; 232: System.Net.Mail.dll => 0xe52378b9 => 105
	i32 3849253459, ; 233: System.Runtime.InteropServices.dll => 0xe56ef253 => 112
	i32 3889960447, ; 234: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 235: System.Collections.Concurrent.dll => 0xe839deed => 84
	i32 3896760992, ; 236: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 60
	i32 3928044579, ; 237: System.Xml.ReaderWriter => 0xea213423 => 122
	i32 3931092270, ; 238: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 73
	i32 3955647286, ; 239: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 54
	i32 3980434154, ; 240: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 241: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 242: System.Memory => 0xeff49a63 => 103
	i32 4046471985, ; 243: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 48
	i32 4073602200, ; 244: System.Threading.dll => 0xf2ce3c98 => 120
	i32 4094352644, ; 245: Microsoft.Maui.Essentials.dll => 0xf40add04 => 50
	i32 4099507663, ; 246: System.Drawing.dll => 0xf45985cf => 98
	i32 4100113165, ; 247: System.Private.Uri => 0xf462c30d => 110
	i32 4102112229, ; 248: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 249: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 250: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 40
	i32 4150914736, ; 251: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4151237749, ; 252: System.Core => 0xf76edc75 => 93
	i32 4182413190, ; 253: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 68
	i32 4213026141, ; 254: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 95
	i32 4271975918, ; 255: Microsoft.Maui.Controls.dll => 0xfea12dee => 47
	i32 4274976490, ; 256: System.Runtime.Numerics => 0xfecef6ea => 114
	i32 4292120959 ; 257: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 68
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [258 x i32] [
	i32 119, ; 0
	i32 33, ; 1
	i32 51, ; 2
	i32 112, ; 3
	i32 58, ; 4
	i32 76, ; 5
	i32 30, ; 6
	i32 31, ; 7
	i32 91, ; 8
	i32 83, ; 9
	i32 2, ; 10
	i32 30, ; 11
	i32 53, ; 12
	i32 15, ; 13
	i32 65, ; 14
	i32 14, ; 15
	i32 119, ; 16
	i32 103, ; 17
	i32 34, ; 18
	i32 26, ; 19
	i32 88, ; 20
	i32 64, ; 21
	i32 121, ; 22
	i32 124, ; 23
	i32 123, ; 24
	i32 109, ; 25
	i32 13, ; 26
	i32 7, ; 27
	i32 45, ; 28
	i32 42, ; 29
	i32 21, ; 30
	i32 35, ; 31
	i32 62, ; 32
	i32 19, ; 33
	i32 84, ; 34
	i32 1, ; 35
	i32 16, ; 36
	i32 4, ; 37
	i32 113, ; 38
	i32 82, ; 39
	i32 107, ; 40
	i32 100, ; 41
	i32 25, ; 42
	i32 44, ; 43
	i32 94, ; 44
	i32 110, ; 45
	i32 99, ; 46
	i32 37, ; 47
	i32 89, ; 48
	i32 56, ; 49
	i32 28, ; 50
	i32 65, ; 51
	i32 88, ; 52
	i32 75, ; 53
	i32 98, ; 54
	i32 82, ; 55
	i32 41, ; 56
	i32 3, ; 57
	i32 54, ; 58
	i32 97, ; 59
	i32 101, ; 60
	i32 67, ; 61
	i32 90, ; 62
	i32 80, ; 63
	i32 123, ; 64
	i32 16, ; 65
	i32 22, ; 66
	i32 72, ; 67
	i32 20, ; 68
	i32 18, ; 69
	i32 2, ; 70
	i32 63, ; 71
	i32 102, ; 72
	i32 32, ; 73
	i32 75, ; 74
	i32 59, ; 75
	i32 115, ; 76
	i32 0, ; 77
	i32 6, ; 78
	i32 85, ; 79
	i32 100, ; 80
	i32 55, ; 81
	i32 45, ; 82
	i32 85, ; 83
	i32 99, ; 84
	i32 10, ; 85
	i32 5, ; 86
	i32 118, ; 87
	i32 25, ; 88
	i32 69, ; 89
	i32 78, ; 90
	i32 36, ; 91
	i32 61, ; 92
	i32 104, ; 93
	i32 118, ; 94
	i32 116, ; 95
	i32 79, ; 96
	i32 106, ; 97
	i32 117, ; 98
	i32 57, ; 99
	i32 23, ; 100
	i32 1, ; 101
	i32 96, ; 102
	i32 76, ; 103
	i32 42, ; 104
	i32 93, ; 105
	i32 127, ; 106
	i32 17, ; 107
	i32 64, ; 108
	i32 9, ; 109
	i32 69, ; 110
	i32 80, ; 111
	i32 79, ; 112
	i32 73, ; 113
	i32 115, ; 114
	i32 43, ; 115
	i32 29, ; 116
	i32 26, ; 117
	i32 101, ; 118
	i32 8, ; 119
	i32 86, ; 120
	i32 38, ; 121
	i32 5, ; 122
	i32 67, ; 123
	i32 0, ; 124
	i32 111, ; 125
	i32 66, ; 126
	i32 4, ; 127
	i32 96, ; 128
	i32 116, ; 129
	i32 108, ; 130
	i32 92, ; 131
	i32 87, ; 132
	i32 49, ; 133
	i32 12, ; 134
	i32 44, ; 135
	i32 43, ; 136
	i32 109, ; 137
	i32 81, ; 138
	i32 104, ; 139
	i32 14, ; 140
	i32 39, ; 141
	i32 8, ; 142
	i32 74, ; 143
	i32 105, ; 144
	i32 18, ; 145
	i32 125, ; 146
	i32 106, ; 147
	i32 122, ; 148
	i32 38, ; 149
	i32 13, ; 150
	i32 121, ; 151
	i32 10, ; 152
	i32 52, ; 153
	i32 92, ; 154
	i32 126, ; 155
	i32 47, ; 156
	i32 52, ; 157
	i32 56, ; 158
	i32 11, ; 159
	i32 83, ; 160
	i32 20, ; 161
	i32 81, ; 162
	i32 111, ; 163
	i32 61, ; 164
	i32 15, ; 165
	i32 113, ; 166
	i32 97, ; 167
	i32 94, ; 168
	i32 114, ; 169
	i32 53, ; 170
	i32 55, ; 171
	i32 21, ; 172
	i32 48, ; 173
	i32 49, ; 174
	i32 77, ; 175
	i32 27, ; 176
	i32 51, ; 177
	i32 6, ; 178
	i32 59, ; 179
	i32 19, ; 180
	i32 77, ; 181
	i32 50, ; 182
	i32 36, ; 183
	i32 124, ; 184
	i32 125, ; 185
	i32 78, ; 186
	i32 108, ; 187
	i32 91, ; 188
	i32 63, ; 189
	i32 34, ; 190
	i32 70, ; 191
	i32 127, ; 192
	i32 89, ; 193
	i32 12, ; 194
	i32 71, ; 195
	i32 120, ; 196
	i32 57, ; 197
	i32 7, ; 198
	i32 107, ; 199
	i32 62, ; 200
	i32 72, ; 201
	i32 24, ; 202
	i32 60, ; 203
	i32 126, ; 204
	i32 74, ; 205
	i32 3, ; 206
	i32 40, ; 207
	i32 46, ; 208
	i32 11, ; 209
	i32 90, ; 210
	i32 128, ; 211
	i32 24, ; 212
	i32 23, ; 213
	i32 31, ; 214
	i32 102, ; 215
	i32 66, ; 216
	i32 28, ; 217
	i32 71, ; 218
	i32 39, ; 219
	i32 128, ; 220
	i32 33, ; 221
	i32 70, ; 222
	i32 95, ; 223
	i32 58, ; 224
	i32 86, ; 225
	i32 46, ; 226
	i32 87, ; 227
	i32 35, ; 228
	i32 37, ; 229
	i32 117, ; 230
	i32 41, ; 231
	i32 105, ; 232
	i32 112, ; 233
	i32 32, ; 234
	i32 84, ; 235
	i32 60, ; 236
	i32 122, ; 237
	i32 73, ; 238
	i32 54, ; 239
	i32 27, ; 240
	i32 9, ; 241
	i32 103, ; 242
	i32 48, ; 243
	i32 120, ; 244
	i32 50, ; 245
	i32 98, ; 246
	i32 110, ; 247
	i32 22, ; 248
	i32 17, ; 249
	i32 40, ; 250
	i32 29, ; 251
	i32 93, ; 252
	i32 68, ; 253
	i32 95, ; 254
	i32 47, ; 255
	i32 114, ; 256
	i32 68 ; 257
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

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
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
