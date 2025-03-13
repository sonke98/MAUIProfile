using System.Globalization;

namespace personspontaneous.Personal;

public partial class Personnal : ContentPage
{
    public Personnal()
    {
        InitializeComponent();
        BindingContext = this;
    }
    private void frmIntro_Tapped(object sender, TappedEventArgs e)
    {
        DisplayAlert("Thông báo", "Đã bấm vào thông tin chung", "Ok");
    }
    protected override void OnSizeAllocated(double width, double height)
    {
        base.OnSizeAllocated(width, height);

        // Điều chỉnh kích thước hình ảnh
        cakeIcon.WidthRequest = width * 0.1;  // 10% chiều rộng màn hình
        cakeIcon.HeightRequest = height * 0.1; // 10% chiều cao màn hình

        sexIcon.WidthRequest = width * 0.1;  // 10% chiều rộng màn hình
        sexIcon.HeightRequest = height * 0.1; // 10% chiều cao màn hình

        phoneIcon.WidthRequest = width * 0.1;  // 10% chiều rộng màn hình
        phoneIcon.HeightRequest = height * 0.1; // 10% chiều cao màn hình

        mailIcon.WidthRequest = width * 0.1;  // 10% chiều rộng màn hình
        mailIcon.HeightRequest = height * 0.1; // 10% chiều cao màn hình

        addressIcon.WidthRequest = width * 0.1;  // 10% chiều rộng màn hình
        addressIcon.HeightRequest = height * 0.1; // 10% chiều cao màn hình
    }

    private async void ExpIntro_ExpandedChanged(object sender, CommunityToolkit.Maui.Core.ExpandedChangedEventArgs e)
    {
        double targetHeight = ExpContent.Height; // Điều chỉnh chiều cao phù hợp
        uint animationSpeed = 300; // Thời gian chạy animation (ms)

        if (e.IsExpanded)
        {
            btnGeneral.Text = "-"; // Đổi biểu tượng

            // Đặt opacity về 1 trước khi bắt đầu
            ExpContent.Opacity = 0;
            ExpContent.HeightRequest = 1; // Tránh lỗi không hiển thị nội dung

            // Chạy animation mở rộng chiều cao
            var expandAnimation = new Animation(v => ExpContent.HeightRequest = v, 1, targetHeight);
            expandAnimation.Commit(this, "ExpandAnimation", 16, animationSpeed, Easing.CubicOut);

            // Làm mờ dần khi mở
            await ExpContent.FadeTo(1, animationSpeed, Easing.CubicInOut);
        }
        else
        {
            btnGeneral.Text = "+"; // Đổi biểu tượng lại

            // Chạy animation thu nhỏ chiều cao
            var collapseAnimation = new Animation(v => ExpContent.HeightRequest = v, ExpContent.HeightRequest, 1);
            collapseAnimation.Commit(this, "CollapseAnimation", 16, animationSpeed, Easing.CubicInOut);

            await ExpContent.FadeTo(0, animationSpeed, Easing.CubicInOut); // Làm mờ dần trước khi đóng hẳn
            ExpContent.HeightRequest = 0; // Ẩn hoàn toàn sau khi animation kết thúc
        }
    }


    private void frmEducate_Tapped(object sender, TappedEventArgs e)
    {
        DisplayAlert("Thông báo", "Đã bấm vào thông tin giáo dục", "Ok");
    }

    private async void ExpEducate_ExpandedChanged(object sender, CommunityToolkit.Maui.Core.ExpandedChangedEventArgs e)
    {
        var displayInfo = DeviceDisplay.MainDisplayInfo;
        double targetHeight = ExpContentEducate.Height; // Điều chỉnh chiều cao phù hợp
        uint animationSpeed = 300; // Thời gian chạy animation (ms)

        if (e.IsExpanded)
        {
            btnEducate.Text = "-"; // Đổi biểu tượng

            // Đặt opacity về 1 trước khi bắt đầu
            ExpContentEducate.Opacity = 0;
            ExpContentEducate.HeightRequest = 1; // Tránh lỗi không hiển thị nội dung

            // Chạy animation mở rộng chiều cao
            var expandAnimation = new Animation(v => ExpContentEducate.HeightRequest = v, 1, targetHeight);
            expandAnimation.Commit(this, "ExpandAnimation", 16, animationSpeed, Easing.CubicOut);

            // Làm mờ dần khi mở
            await ExpContentEducate.FadeTo(1, animationSpeed, Easing.CubicInOut);
        }
        else
        {
            btnEducate.Text = "+"; // Đổi biểu tượng lại

            // Chạy animation thu nhỏ chiều cao
            var collapseAnimation = new Animation(v => ExpContentEducate.HeightRequest = v, ExpContentEducate.HeightRequest, 1);
            collapseAnimation.Commit(this, "CollapseAnimation", 16, animationSpeed, Easing.CubicInOut);

            await ExpContentEducate.FadeTo(0, animationSpeed, Easing.CubicInOut); // Làm mờ dần trước khi đóng hẳn
            ExpContentEducate.HeightRequest = 0; // Ẩn hoàn toàn sau khi animation kết thúc
        }
    }

    private void frmLanguage_Tapped(object sender, TappedEventArgs e)
    {
        DisplayAlert("Thông báo", "Đã bấm vào thông tin giáo dục", "Ok");
    }

    private async void ExpLanguage_ExpandedChanged(object sender, CommunityToolkit.Maui.Core.ExpandedChangedEventArgs e)
    {
        var displayInfo = DeviceDisplay.MainDisplayInfo;
        double targetHeight = ExpContentLanguage.Height; // Điều chỉnh chiều cao phù hợp
        uint animationSpeed = 300; // Thời gian chạy animation (ms)

        if (e.IsExpanded)
        {
            btnLanguage.Text = "-"; // Đổi biểu tượng

            // Đặt opacity về 1 trước khi bắt đầu
            ExpContentLanguage.Opacity = 0;
            ExpContentLanguage.HeightRequest = 1; // Tránh lỗi không hiển thị nội dung

            // Chạy animation mở rộng chiều cao
            var expandAnimation = new Animation(v => ExpContentLanguage.HeightRequest = v, 1, targetHeight);
            expandAnimation.Commit(this, "ExpandAnimation", 16, animationSpeed, Easing.CubicOut);

            // Làm mờ dần khi mở
            await ExpContentLanguage.FadeTo(1, animationSpeed, Easing.CubicInOut);
        }
        else
        {
            btnLanguage.Text = "+"; // Đổi biểu tượng lại

            // Chạy animation thu nhỏ chiều cao
            var collapseAnimation = new Animation(v => ExpContentLanguage.HeightRequest = v, ExpContentLanguage.HeightRequest, 1);
            collapseAnimation.Commit(this, "CollapseAnimation", 16, animationSpeed, Easing.CubicInOut);

            await ExpContentLanguage.FadeTo(0, animationSpeed, Easing.CubicInOut); // Làm mờ dần trước khi đóng hẳn
            ExpContentLanguage.HeightRequest = 0; // Ẩn hoàn toàn sau khi animation kết thúc
        }
    }
    private void Active_Tapped(object sender, TappedEventArgs e)
    {
        DisplayAlert("Thông báo", "Đã bấm vào thông tin hoạt động", "Ok");
    }

    private async void ExpActive_ExpandedChanged(object sender, CommunityToolkit.Maui.Core.ExpandedChangedEventArgs e)
    {
        var displayInfo = DeviceDisplay.MainDisplayInfo;
        uint animationSpeed = 300; // Thời gian chạy animation (ms)

        // Tính chiều cao thực tế của nội dung
        double targetHeight = ExpContentActive.Height;

        if (e.IsExpanded)
        {
            btnActive.Text = "-"; // Đổi biểu tượng

            // Đặt opacity về 1 trước khi bắt đầu
            ExpContentActive.Opacity = 0;
            ExpContentActive.HeightRequest = 1; // Tránh lỗi không hiển thị nội dung

            // Chạy animation mở rộng chiều cao
            var expandAnimation = new Animation(v => ExpContentActive.HeightRequest = v, 1, targetHeight);
            expandAnimation.Commit(this, "ExpandAnimation", 16, animationSpeed, Easing.CubicOut);

            // Làm mờ dần khi mở
            await ExpContentActive.FadeTo(1, animationSpeed, Easing.CubicInOut);
        }
        else
        {
            btnActive.Text = "+"; // Đổi biểu tượng lại

            // Chạy animation thu nhỏ chiều cao
            var collapseAnimation = new Animation(v => ExpContentActive.HeightRequest = v, ExpContentActive.HeightRequest, 1);
            collapseAnimation.Commit(this, "CollapseAnimation", 16, animationSpeed, Easing.CubicInOut);

            await ExpContentActive.FadeTo(0, animationSpeed, Easing.CubicInOut); // Làm mờ dần trước khi đóng hẳn
            ExpContentActive.HeightRequest = 0; // Ẩn hoàn toàn sau khi animation kết thúc
        }
    }
}