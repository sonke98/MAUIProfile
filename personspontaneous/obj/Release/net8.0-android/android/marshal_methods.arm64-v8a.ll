; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [137 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [274 x i64] [
	i64 36418902923615093, ; 0: Plugin.LocalNotification => 0x8162cc9bdf1b75 => 53
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 45
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 136
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 50
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 107
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 59
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 76
	i64 435170709725415398, ; 7: Xamarin.GooglePlayServices.Location => 0x60a097471d687e6 => 84
	i64 545109961164950392, ; 8: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 687654259221141486, ; 9: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 82
	i64 750875890346172408, ; 10: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 127
	i64 799765834175365804, ; 11: System.ComponentModel.dll => 0xb1956c9f18442ac => 97
	i64 849051935479314978, ; 12: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 872800313462103108, ; 13: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 64
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 81
	i64 1121665720830085036, ; 15: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1268860745194512059, ; 16: System.Drawing.dll => 0x119be62002c19ebb => 104
	i64 1369545283391376210, ; 17: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 72
	i64 1476839205573959279, ; 18: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 112
	i64 1486715745332614827, ; 19: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 47
	i64 1513467482682125403, ; 20: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 135
	i64 1537168428375924959, ; 21: System.Threading.Thread.dll => 0x15551e8a954ae0df => 127
	i64 1556147632182429976, ; 22: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1624659445732251991, ; 23: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 56
	i64 1628611045998245443, ; 24: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 69
	i64 1735388228521408345, ; 25: System.Net.Mail.dll => 0x181556663c69b759 => 111
	i64 1743969030606105336, ; 26: System.Memory.dll => 0x1833d297e88f2af8 => 109
	i64 1767386781656293639, ; 27: System.Private.Uri.dll => 0x188704e9f5582107 => 116
	i64 1795316252682057001, ; 28: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 55
	i64 1835311033149317475, ; 29: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 30: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 76
	i64 1875417405349196092, ; 31: System.Drawing.Primitives => 0x1a06d2319b6c713c => 103
	i64 1881198190668717030, ; 32: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 33: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 48
	i64 1959996714666907089, ; 34: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1981742497975770890, ; 35: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 68
	i64 1983698669889758782, ; 36: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 37: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2102659300918482391, ; 38: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 103
	i64 2262844636196693701, ; 39: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 64
	i64 2287834202362508563, ; 40: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 90
	i64 2302323944321350744, ; 41: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 67
	i64 2335503487726329082, ; 43: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 124
	i64 2470498323731680442, ; 44: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 60
	i64 2497223385847772520, ; 45: System.Runtime => 0x22a7eb7046413568 => 122
	i64 2547086958574651984, ; 46: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 54
	i64 2602673633151553063, ; 47: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2624866290265602282, ; 48: mscorlib.dll => 0x246d65fbde2db8ea => 132
	i64 2656907746661064104, ; 49: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 40
	i64 2662981627730767622, ; 50: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2895129759130297543, ; 51: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 52: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 81
	i64 3289520064315143713, ; 53: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 66
	i64 3311221304742556517, ; 54: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 114
	i64 3325875462027654285, ; 55: System.Runtime.Numerics => 0x2e27e21c8958b48d => 120
	i64 3344514922410554693, ; 56: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 87
	i64 3411255996856937470, ; 57: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 83
	i64 3429672777697402584, ; 58: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 50
	i64 3494946837667399002, ; 59: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 38
	i64 3522470458906976663, ; 60: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 77
	i64 3551103847008531295, ; 61: System.Private.CoreLib.dll => 0x31480e226177735f => 133
	i64 3567343442040498961, ; 62: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 63: System.Runtime.dll => 0x319037675df7e556 => 122
	i64 3638003163729360188, ; 64: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 39
	i64 3647754201059316852, ; 65: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 130
	i64 3655542548057982301, ; 66: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 38
	i64 3727469159507183293, ; 67: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 75
	i64 3869221888984012293, ; 68: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 42
	i64 3890352374528606784, ; 69: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 48
	i64 3933965368022646939, ; 70: System.Net.Requests => 0x369840a8bfadc09b => 113
	i64 3966267475168208030, ; 71: System.Memory => 0x370b03412596249e => 109
	i64 4073500526318903918, ; 72: System.Private.Xml.dll => 0x3887fb25779ae26e => 117
	i64 4073631083018132676, ; 73: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 46
	i64 4120493066591692148, ; 74: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 75: System.ComponentModel => 0x39a7562737acb67e => 97
	i64 4187479170553454871, ; 76: System.Linq.Expressions => 0x3a1cea1e912fa117 => 107
	i64 4205801962323029395, ; 77: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 96
	i64 4247996603072512073, ; 78: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 85
	i64 4326933140005261798, ; 79: Xamarin.AndroidX.Biometric => 0x3c0c5ac408e111e6 => 57
	i64 4356591372459378815, ; 80: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4477672992252076438, ; 81: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 129
	i64 4636684751163556186, ; 82: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 78
	i64 4679594760078841447, ; 83: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4794310189461587505, ; 84: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 54
	i64 4795410492532947900, ; 85: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 77
	i64 4809057822547766521, ; 86: System.Drawing => 0x42bd349c3145ecf9 => 104
	i64 4853321196694829351, ; 87: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 119
	i64 5103417709280584325, ; 88: System.Collections.Specialized => 0x46d2fb5e161b6285 => 93
	i64 5182934613077526976, ; 89: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 93
	i64 5290786973231294105, ; 90: System.Runtime.Loader => 0x496ca6b869b72699 => 119
	i64 5471532531798518949, ; 91: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5507995362134886206, ; 92: System.Core.dll => 0x4c705499688c873e => 99
	i64 5522859530602327440, ; 93: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5528247634813456972, ; 94: Plugin.LocalNotification.dll => 0x4cb847ef1773124c => 53
	i64 5570799893513421663, ; 95: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 105
	i64 5573260873512690141, ; 96: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 123
	i64 5692067934154308417, ; 97: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 80
	i64 5974002045223400615, ; 98: Plugin.Fingerprint => 0x52e7eb3560ff74a7 => 52
	i64 6068057819846744445, ; 99: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6200764641006662125, ; 100: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 101: System.Text.Json.dll => 0x565a67a0ffe264a7 => 125
	i64 6357457916754632952, ; 102: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 103: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 67
	i64 6478287442656530074, ; 104: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 105: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 63
	i64 6560151584539558821, ; 106: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 44
	i64 6743165466166707109, ; 107: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6777482997383978746, ; 108: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6786606130239981554, ; 109: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 102
	i64 6894844156784520562, ; 110: System.Numerics.Vectors => 0x5faf683aead1ad72 => 114
	i64 7220009545223068405, ; 111: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 112: System.Linq => 0x64e71ccf51a90a5a => 108
	i64 7377312882064240630, ; 113: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 96
	i64 7489048572193775167, ; 114: System.ObjectModel => 0x67ee71ff6b419e3f => 115
	i64 7654504624184590948, ; 115: System.Net.Http => 0x6a3a4366801b8264 => 110
	i64 7694700312542370399, ; 116: System.Net.Mail => 0x6ac9112a7e2cda5f => 111
	i64 7708790323521193081, ; 117: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 118: System.Private.CoreLib => 0x6b0ff375198b9c17 => 133
	i64 7735176074855944702, ; 119: Microsoft.CSharp => 0x6b58dda848e391fe => 89
	i64 7735352534559001595, ; 120: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 86
	i64 7836164640616011524, ; 121: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 56
	i64 8064050204834738623, ; 122: System.Collections.dll => 0x6fe942efa61731bf => 94
	i64 8083354569033831015, ; 123: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 66
	i64 8087206902342787202, ; 124: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 101
	i64 8167236081217502503, ; 125: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 134
	i64 8185542183669246576, ; 126: System.Collections => 0x7198e33f4794aa70 => 94
	i64 8246048515196606205, ; 127: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 51
	i64 8368701292315763008, ; 128: System.Security.Cryptography => 0x7423997c6fd56140 => 123
	i64 8400357532724379117, ; 129: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 74
	i64 8518412311883997971, ; 130: System.Collections.Immutable => 0x76377add7c28e313 => 91
	i64 8563666267364444763, ; 131: System.Private.Uri => 0x76d841191140ca5b => 116
	i64 8599632406834268464, ; 132: CommunityToolkit.Maui => 0x7758081c784b4930 => 35
	i64 8614108721271900878, ; 133: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 134: Java.Interop => 0x77b654e585b55834 => 134
	i64 8638972117149407195, ; 135: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 89
	i64 8639588376636138208, ; 136: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 73
	i64 8677882282824630478, ; 137: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 138: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 101
	i64 9045785047181495996, ; 139: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 140: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 80
	i64 9324707631942237306, ; 141: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 55
	i64 9659729154652888475, ; 142: System.Text.RegularExpressions => 0x860e407c9991dd9b => 126
	i64 9678050649315576968, ; 143: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 60
	i64 9702891218465930390, ; 144: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 92
	i64 9808709177481450983, ; 145: Mono.Android.dll => 0x881f890734e555e7 => 136
	i64 9875200773399460291, ; 146: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 82
	i64 9956195530459977388, ; 147: Microsoft.Maui => 0x8a2b8315b36616ac => 49
	i64 9991543690424095600, ; 148: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 149: System.Net.Http.dll => 0x8b50e941206af13b => 110
	i64 10051358222726253779, ; 150: System.Private.Xml => 0x8b7d990c97ccccd3 => 117
	i64 10092835686693276772, ; 151: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 47
	i64 10143853363526200146, ; 152: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10229024438826829339, ; 153: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 63
	i64 10318047534812931528, ; 154: Xamarin.AndroidX.Biometric.dll => 0x8f311190c81ea5c8 => 57
	i64 10406448008575299332, ; 155: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 87
	i64 10430153318873392755, ; 156: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 61
	i64 10506226065143327199, ; 157: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10785150219063592792, ; 158: System.Net.Primitives => 0x95ac8cfb68830758 => 112
	i64 10880838204485145808, ; 159: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 35
	i64 11002576679268595294, ; 160: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 43
	i64 11009005086950030778, ; 161: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 49
	i64 11023048688141570732, ; 162: System.Core => 0x98f9bc61168392ac => 99
	i64 11103970607964515343, ; 163: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11162124722117608902, ; 164: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 79
	i64 11220793807500858938, ; 165: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 166: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 44
	i64 11340910727871153756, ; 167: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 62
	i64 11485890710487134646, ; 168: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 118
	i64 11518296021396496455, ; 169: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 170: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 79
	i64 11530571088791430846, ; 171: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 42
	i64 11705530742807338875, ; 172: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 12036415867504728778, ; 173: CsvHelper => 0xa709f075b77e9aca => 37
	i64 12145679461940342714, ; 174: System.Text.Json => 0xa88e1f1ebcb62fba => 125
	i64 12269460666702402136, ; 175: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 91
	i64 12341818387765915815, ; 176: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 36
	i64 12451044538927396471, ; 177: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 65
	i64 12466513435562512481, ; 178: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 70
	i64 12475113361194491050, ; 179: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 180: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 102
	i64 12538491095302438457, ; 181: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 58
	i64 12550732019250633519, ; 182: System.IO.Compression => 0xae2d28465e8e1b2f => 106
	i64 12681088699309157496, ; 183: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12700543734426720211, ; 184: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 59
	i64 12823819093633476069, ; 185: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12843321153144804894, ; 186: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 45
	i64 13068258254871114833, ; 187: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 121
	i64 13069017414426794947, ; 188: personspontaneous => 0xb55e7a18864d9bc3 => 88
	i64 13221551921002590604, ; 189: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 190: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13343850469010654401, ; 191: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 135
	i64 13381594904270902445, ; 192: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 193: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 86
	i64 13467053111158216594, ; 194: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13540124433173649601, ; 195: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 196: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13572454107664307259, ; 197: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 75
	i64 13717397318615465333, ; 198: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 95
	i64 13755568601956062840, ; 199: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13814445057219246765, ; 200: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 201: System.Console.dll => 0xc0a5f3cade5c6774 => 98
	i64 13959074834287824816, ; 202: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 65
	i64 14100563506285742564, ; 203: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 204: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 58
	i64 14125464355221830302, ; 205: System.Threading.dll => 0xc407bafdbc707a9e => 128
	i64 14461014870687870182, ; 206: System.Net.Requests.dll => 0xc8afd8683afdece6 => 113
	i64 14464374589798375073, ; 207: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14522721392235705434, ; 208: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14551742072151931844, ; 209: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 124
	i64 14556034074661724008, ; 210: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 36
	i64 14622043554576106986, ; 211: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 121
	i64 14669215534098758659, ; 212: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 40
	i64 14678510994762383812, ; 213: Xamarin.GooglePlayServices.Location.dll => 0xcbb48bfaca7a41c4 => 84
	i64 14690985099581930927, ; 214: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 129
	i64 14705122255218365489, ; 215: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14744092281598614090, ; 216: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14811656093008213713, ; 217: personspontaneous.dll => 0xcd8d92bdb70136d1 => 88
	i64 14852515768018889994, ; 218: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 62
	i64 14892012299694389861, ; 219: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 220: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 221: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 41
	i64 14987728460634540364, ; 222: System.IO.Compression.dll => 0xcfff1ba06622494c => 106
	i64 15076659072870671916, ; 223: System.ObjectModel.dll => 0xd13b0d8c1620662c => 115
	i64 15111608613780139878, ; 224: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 225: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 105
	i64 15133485256822086103, ; 226: System.Linq.dll => 0xd204f0a9127dd9d7 => 108
	i64 15227001540531775957, ; 227: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 39
	i64 15370334346939861994, ; 228: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 61
	i64 15391712275433856905, ; 229: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 41
	i64 15527772828719725935, ; 230: System.Console => 0xd77dbb1e38cd3d6f => 98
	i64 15536481058354060254, ; 231: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15540815214206815676, ; 232: Plugin.Fingerprint.dll => 0xd7ac11193ac88dbc => 52
	i64 15582737692548360875, ; 233: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 69
	i64 15609085926864131306, ; 234: System.dll => 0xd89e9cf3334914ea => 131
	i64 15661133872274321916, ; 235: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 130
	i64 15664356999916475676, ; 236: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 237: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15783653065526199428, ; 238: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15928521404965645318, ; 239: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 46
	i64 15930129725311349754, ; 240: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 85
	i64 16154507427712707110, ; 241: System => 0xe03056ea4e39aa26 => 131
	i64 16288847719894691167, ; 242: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 243: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 43
	i64 16649148416072044166, ; 244: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 51
	i64 16677317093839702854, ; 245: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 74
	i64 16833383113903931215, ; 246: mscorlib => 0xe99c30c1484d7f4f => 132
	i64 16848182392821183571, ; 247: CsvHelper.dll => 0xe9d0c49eeb18f453 => 37
	i64 16856067890322379635, ; 248: System.Data.Common.dll => 0xe9ecc87060889373 => 100
	i64 16890310621557459193, ; 249: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 126
	i64 16942731696432749159, ; 250: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 251: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 72
	i64 17008137082415910100, ; 252: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 92
	i64 17031351772568316411, ; 253: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 71
	i64 17062143951396181894, ; 254: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 95
	i64 17089008752050867324, ; 255: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17260702271250283638, ; 256: System.Data.Common => 0xef8a5543bba6bc76 => 100
	i64 17342750010158924305, ; 257: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17438153253682247751, ; 258: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17514990004910432069, ; 259: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 260: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17702523067201099846, ; 261: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 262: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 70
	i64 17710060891934109755, ; 263: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 68
	i64 17712670374920797664, ; 264: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 118
	i64 17777860260071588075, ; 265: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 120
	i64 17986907704309214542, ; 266: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 83
	i64 18025913125965088385, ; 267: System.Threading => 0xfa28e87b91334681 => 128
	i64 18099568558057551825, ; 268: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 269: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 71
	i64 18245806341561545090, ; 270: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 90
	i64 18305135509493619199, ; 271: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 73
	i64 18324163916253801303, ; 272: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18380184030268848184 ; 273: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 78
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [274 x i32] [
	i32 53, ; 0
	i32 45, ; 1
	i32 136, ; 2
	i32 50, ; 3
	i32 107, ; 4
	i32 59, ; 5
	i32 76, ; 6
	i32 84, ; 7
	i32 7, ; 8
	i32 82, ; 9
	i32 127, ; 10
	i32 97, ; 11
	i32 10, ; 12
	i32 64, ; 13
	i32 81, ; 14
	i32 18, ; 15
	i32 104, ; 16
	i32 72, ; 17
	i32 112, ; 18
	i32 47, ; 19
	i32 135, ; 20
	i32 127, ; 21
	i32 16, ; 22
	i32 56, ; 23
	i32 69, ; 24
	i32 111, ; 25
	i32 109, ; 26
	i32 116, ; 27
	i32 55, ; 28
	i32 6, ; 29
	i32 76, ; 30
	i32 103, ; 31
	i32 28, ; 32
	i32 48, ; 33
	i32 28, ; 34
	i32 68, ; 35
	i32 2, ; 36
	i32 20, ; 37
	i32 103, ; 38
	i32 64, ; 39
	i32 90, ; 40
	i32 24, ; 41
	i32 67, ; 42
	i32 124, ; 43
	i32 60, ; 44
	i32 122, ; 45
	i32 54, ; 46
	i32 27, ; 47
	i32 132, ; 48
	i32 40, ; 49
	i32 2, ; 50
	i32 7, ; 51
	i32 81, ; 52
	i32 66, ; 53
	i32 114, ; 54
	i32 120, ; 55
	i32 87, ; 56
	i32 83, ; 57
	i32 50, ; 58
	i32 38, ; 59
	i32 77, ; 60
	i32 133, ; 61
	i32 22, ; 62
	i32 122, ; 63
	i32 39, ; 64
	i32 130, ; 65
	i32 38, ; 66
	i32 75, ; 67
	i32 42, ; 68
	i32 48, ; 69
	i32 113, ; 70
	i32 109, ; 71
	i32 117, ; 72
	i32 46, ; 73
	i32 33, ; 74
	i32 97, ; 75
	i32 107, ; 76
	i32 96, ; 77
	i32 85, ; 78
	i32 57, ; 79
	i32 30, ; 80
	i32 129, ; 81
	i32 78, ; 82
	i32 0, ; 83
	i32 54, ; 84
	i32 77, ; 85
	i32 104, ; 86
	i32 119, ; 87
	i32 93, ; 88
	i32 93, ; 89
	i32 119, ; 90
	i32 26, ; 91
	i32 99, ; 92
	i32 29, ; 93
	i32 53, ; 94
	i32 105, ; 95
	i32 123, ; 96
	i32 80, ; 97
	i32 52, ; 98
	i32 23, ; 99
	i32 23, ; 100
	i32 125, ; 101
	i32 34, ; 102
	i32 67, ; 103
	i32 11, ; 104
	i32 63, ; 105
	i32 44, ; 106
	i32 19, ; 107
	i32 22, ; 108
	i32 102, ; 109
	i32 114, ; 110
	i32 26, ; 111
	i32 108, ; 112
	i32 96, ; 113
	i32 115, ; 114
	i32 110, ; 115
	i32 111, ; 116
	i32 17, ; 117
	i32 133, ; 118
	i32 89, ; 119
	i32 86, ; 120
	i32 56, ; 121
	i32 94, ; 122
	i32 66, ; 123
	i32 101, ; 124
	i32 134, ; 125
	i32 94, ; 126
	i32 51, ; 127
	i32 123, ; 128
	i32 74, ; 129
	i32 91, ; 130
	i32 116, ; 131
	i32 35, ; 132
	i32 21, ; 133
	i32 134, ; 134
	i32 89, ; 135
	i32 73, ; 136
	i32 21, ; 137
	i32 101, ; 138
	i32 31, ; 139
	i32 80, ; 140
	i32 55, ; 141
	i32 126, ; 142
	i32 60, ; 143
	i32 92, ; 144
	i32 136, ; 145
	i32 82, ; 146
	i32 49, ; 147
	i32 6, ; 148
	i32 110, ; 149
	i32 117, ; 150
	i32 47, ; 151
	i32 3, ; 152
	i32 63, ; 153
	i32 57, ; 154
	i32 87, ; 155
	i32 61, ; 156
	i32 1, ; 157
	i32 112, ; 158
	i32 35, ; 159
	i32 43, ; 160
	i32 49, ; 161
	i32 99, ; 162
	i32 12, ; 163
	i32 79, ; 164
	i32 15, ; 165
	i32 44, ; 166
	i32 62, ; 167
	i32 118, ; 168
	i32 13, ; 169
	i32 79, ; 170
	i32 42, ; 171
	i32 9, ; 172
	i32 37, ; 173
	i32 125, ; 174
	i32 91, ; 175
	i32 36, ; 176
	i32 65, ; 177
	i32 70, ; 178
	i32 34, ; 179
	i32 102, ; 180
	i32 58, ; 181
	i32 106, ; 182
	i32 14, ; 183
	i32 59, ; 184
	i32 27, ; 185
	i32 45, ; 186
	i32 121, ; 187
	i32 88, ; 188
	i32 1, ; 189
	i32 15, ; 190
	i32 135, ; 191
	i32 9, ; 192
	i32 86, ; 193
	i32 29, ; 194
	i32 30, ; 195
	i32 13, ; 196
	i32 75, ; 197
	i32 95, ; 198
	i32 8, ; 199
	i32 11, ; 200
	i32 98, ; 201
	i32 65, ; 202
	i32 3, ; 203
	i32 58, ; 204
	i32 128, ; 205
	i32 113, ; 206
	i32 24, ; 207
	i32 5, ; 208
	i32 124, ; 209
	i32 36, ; 210
	i32 121, ; 211
	i32 40, ; 212
	i32 84, ; 213
	i32 129, ; 214
	i32 16, ; 215
	i32 32, ; 216
	i32 88, ; 217
	i32 62, ; 218
	i32 33, ; 219
	i32 0, ; 220
	i32 41, ; 221
	i32 106, ; 222
	i32 115, ; 223
	i32 17, ; 224
	i32 105, ; 225
	i32 108, ; 226
	i32 39, ; 227
	i32 61, ; 228
	i32 41, ; 229
	i32 98, ; 230
	i32 4, ; 231
	i32 52, ; 232
	i32 69, ; 233
	i32 131, ; 234
	i32 130, ; 235
	i32 4, ; 236
	i32 12, ; 237
	i32 5, ; 238
	i32 46, ; 239
	i32 85, ; 240
	i32 131, ; 241
	i32 18, ; 242
	i32 43, ; 243
	i32 51, ; 244
	i32 74, ; 245
	i32 132, ; 246
	i32 37, ; 247
	i32 100, ; 248
	i32 126, ; 249
	i32 25, ; 250
	i32 72, ; 251
	i32 92, ; 252
	i32 71, ; 253
	i32 95, ; 254
	i32 32, ; 255
	i32 100, ; 256
	i32 10, ; 257
	i32 25, ; 258
	i32 8, ; 259
	i32 20, ; 260
	i32 31, ; 261
	i32 70, ; 262
	i32 68, ; 263
	i32 118, ; 264
	i32 120, ; 265
	i32 83, ; 266
	i32 128, ; 267
	i32 19, ; 268
	i32 71, ; 269
	i32 90, ; 270
	i32 73, ; 271
	i32 14, ; 272
	i32 78 ; 273
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
