//using Android.Content;
//using AndroidX.Work;
//using Plugin.LocalNotification;
//using System;

//public class NotificationWorker : Worker
//{
//    //public NotificationWorker(Context context, WorkerParameters workerParams) : base(context, workerParams) { }

//    //public override Result DoWork()
//    //{
//    //    try
//    //    {
//    //        SendNotification();
//    //        return Result.InvokeSuccess();
//    //    }
//    //    catch (Exception ex)
//    //    {
//    //        Android.Util.Log.Error("WorkManager", "Lỗi khi gửi thông báo: " + ex.Message);
//    //        return Result.InvokeFailure();
//    //    }
//    //}

//    //private void SendNotification()
//    //{
//    //    var request = new NotificationRequest
//    //    {
//    //        NotificationId = 2001,
//    //        Title = "Nhắc nhở công việc",
//    //        Description = "Hãy kiểm tra công việc hôm nay! 📅",
//    //        BadgeNumber = 1,
//    //        Schedule = new NotificationRequestSchedule
//    //        {
//    //            NotifyTime = DateTime.Now.AddSeconds(5) // Gửi sau 5 giây để test
//    //        }
//    //    };

//    //    LocalNotificationCenter.Current.Show(request);
//    //    Android.Util.Log.Info("WorkManager", "Thông báo đã được gửi thành công!");
//    //}
//}