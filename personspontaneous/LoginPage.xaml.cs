using Plugin.Fingerprint.Abstractions;
using Plugin.Fingerprint;

namespace personspontaneous;

public partial class LoginPage : ContentPage
{
    public static DisplayInfo displayInfo = DeviceDisplay.MainDisplayInfo;
    double width = displayInfo.Height * 6 / 100;
    double height = displayInfo.Height * 5 / 100;
    public LoginPage()
	{
		InitializeComponent();

        btnFingerprint.WidthRequest = (int)width;
        btnFingerprint.HeightRequest = (int)height;
        

    }
    private async void OnLabelTapped(object sender, TappedEventArgs e)
    {
		await DisplayAlert("Thông báo", "Chuyển sang trang đăng ký tài khoản", "Ok");
    }

    private async void btnLogin_Clicked(object sender, EventArgs e)
    {
        //await DisplayAlert("Thông báo", "Chuyển sang trang menu", "Ok");
        await Shell.Current.GoToAsync(nameof(MenuPage)); // Điều hướng đến LoginPage
    }
    protected override bool OnBackButtonPressed()
    {
        Shell.Current.GoToAsync(".."); // Quay lại trang trước
        return true; // Ngăn ứng dụng thoát
    }

    private async void btnFingerprint_Clicked(object sender, EventArgs e)
    {
        bool isAuthenticated = await AuthenticateUser();
        if (isAuthenticated)
        {
            // Mở khóa ứng dụng hoặc thực hiện hành động tiếp theo
            await DisplayAlert("Thành công", "Xác thực thành công!", "OK");
        }
        else
        {
            // Thông báo xác thực không thành công
            await DisplayAlert("Thất bại", "Xác thực không thành công!", "OK");
        }
    }

    public async Task<bool> AuthenticateUser()
    {
        var authenticationRequestConfig = new AuthenticationRequestConfiguration("Xác thực", "Vui lòng xác thực bằng vân tay hoặc khuôn mặt");

        var authenticationResult = await CrossFingerprint.Current.AuthenticateAsync(authenticationRequestConfig);

        if (authenticationResult.Authenticated)
        {
            // Xác thực thành công
            return true;
        }
        else
        {
            // Xác thực không thành công
            return false;
        }
    }

}