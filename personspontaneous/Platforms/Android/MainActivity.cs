using Android.App;
using Android.Content.PM;
using Android.OS;
using Java.Util.Concurrent;

namespace personspontaneous
{
    [Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, LaunchMode = LaunchMode.SingleTop,
              ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode |
              ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
    public class MainActivity : MauiAppCompatActivity
    {
        //private void ScheduleNotificationWorker()
        //{
        //    try
        //    {
        //        var workRequest = new PeriodicWorkRequest.Builder(
        //            Java.Lang.Class.FromType(typeof(NotificationWorker)),
        //            1, TimeUnit.Minutes! // ! đảm bảo giá trị không thể null
        //        ).Build();

        //        WorkManager.GetInstance(Android.App.Application.Context).EnqueueUniquePeriodicWork(
        //            "DailyNotification",
        //            ExistingPeriodicWorkPolicy.Keep!,
        //            workRequest
        //        );

        //        Android.Util.Log.Info("WorkManager", "WorkManager đã được đăng ký thành công!");
        //    }
        //    catch (Exception ex)
        //    {
        //        Android.Util.Log.Error("WorkManager", "Lỗi khi đăng ký WorkManager: " + ex.Message);
        //    }
        //}

        //protected override void OnCreate(Bundle? savedInstanceState)
        //{
        //    base.OnCreate(savedInstanceState);
        //    ScheduleNotificationWorker();
        //}
    }
}