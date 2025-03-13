using System.Collections.ObjectModel;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Dispatching;
using Microsoft.Maui.Layouts;

namespace personspontaneous
{
    public partial class MainPage : ContentPage
    {
        public ObservableCollection<ImageCarouseView> ImageMains { get; set; }
        private IDispatcherTimer _timer;
        private int _position = 0;

        public MainPage()
        {
            InitializeComponent();
            ReadFileGit();
            LoadCarouseViewAsync();
        }

        public class ImageCarouseView
        {
            public string? ImageUrl { get; set; }
        }

        private async Task ReadFileGit()
        {
            string url = "https://raw.githubusercontent.com/sonke98/ImageMAUIParking/refs/heads/main/introduce";

            try
            { 
                using (HttpClient client = new HttpClient())
                {
                    // Thêm User-Agent header (GitHub yêu cầu để tránh bị chặn)
                    client.DefaultRequestHeaders.Add("User-Agent", "Mozilla/5.0 (compatible; MyApp/1.0)");

                    // Tải nội dung từ URL
                    string content = await client.GetStringAsync(url);

                    // Tách nội dung thành từng hàng
                    string[] lines = content.Split(new[] { '\n', '\r' }, StringSplitOptions.RemoveEmptyEntries);
                    lblFoodAndRest.Text = lines[0];
                    lblEnjoyEverything.Text = lines[1];
                    lblContentIntro.Text = lines[2];
                    // Xây dựng chuỗi để hiển thị
                    //string displayText = "Nội dung tệp:\n";
                    //foreach (string line in lines)
                    //{
                    //    await DisplayAlert("TB", displayText += line + "\n","OK");
                    //}
                    //for(int i=0;i<lines.Length;i++)
                    //{
                    //    await DisplayAlert("TB", displayText = lines[i] + "\n", "OK");
                    //}    
                    // In từng hàng ra màn hình
                    //await DisplayAlert("TB", displayText, "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("TB", "Lỗi:" + ex.ToString(), "OK");
            }
        }
        private  void LoadCarouseViewAsync()
        {
            var displayInfo = DeviceDisplay.MainDisplayInfo;
            carouselView.WidthRequest = displayInfo.Width * 0.8;
            ImageMains = new ObservableCollection<ImageCarouseView>
            {
                new ImageCarouseView { ImageUrl = "img_main1.jpg" },
                new ImageCarouseView { ImageUrl = "img_main2.jpg" },
                new ImageCarouseView { ImageUrl = "img_main3.jpg" },
                new ImageCarouseView { ImageUrl = "img_main4.jpg" }
            };
            BindingContext = this;

            // Tạo DispatcherTimer để chạy trên UI Thread
            _timer = Dispatcher.CreateTimer();
            _timer.Interval = TimeSpan.FromSeconds(3);
            _timer.Tick += (s, e) => AutoScroll();
            _timer.Start();
        }

        private void AutoScroll()
        {
            if (carouselView == null || ImageMains.Count == 0) return;

            _position = (_position + 1) % ImageMains.Count;
            carouselView.Position = _position;
        }
        public void CreateAbsoluteLayout()
        {
            // Tạo AbsoluteLayout
            AbsoluteLayout absoluteLayout = new AbsoluteLayout();

            // Tạo nền Gradient bằng BoxView
            BoxView gradientBackground = new BoxView
            {
                Background = new LinearGradientBrush
                {
                    GradientStops =
                    {
                        new GradientStop { Color = Colors.Blue, Offset = 0.0f },
                        new GradientStop { Color = Colors.LightBlue, Offset = 1.0f }
                    }
                }
            };
            AbsoluteLayout.SetLayoutBounds(gradientBackground, new Rect(0, 0, 1, 1));
            AbsoluteLayout.SetLayoutFlags(gradientBackground, AbsoluteLayoutFlags.All);

            // Tạo nền màu #324248 nằm phía dưới 1/3 màn hình
            BoxView darkBackground = new BoxView { Color = Color.FromArgb("#324248") };
            AbsoluteLayout.SetLayoutBounds(darkBackground, new Rect(0, 0.33, 1, 0.67));
            AbsoluteLayout.SetLayoutFlags(darkBackground, AbsoluteLayoutFlags.All);

            // Tạo Label hiển thị trên màn hình
            Label titleLabel = new Label
            {
                Text = "Hello AbsoluteLayout",
                FontSize = 24,
                TextColor = Colors.White,
                HorizontalTextAlignment = TextAlignment.Center
            };
            AbsoluteLayout.SetLayoutBounds(titleLabel, new Rect(0.5, 0.1, -1, -1));
            AbsoluteLayout.SetLayoutFlags(titleLabel, AbsoluteLayoutFlags.PositionProportional);

            // Thêm các thành phần vào AbsoluteLayout
            absoluteLayout.Children.Add(gradientBackground);
            absoluteLayout.Children.Add(darkBackground);
            absoluteLayout.Children.Add(titleLabel);

            // Đặt AbsoluteLayout làm Content chính
            Content = absoluteLayout;
        
    }
        private void OncarouselViewPositionChanged(object sender, PositionChangedEventArgs e)
        {
            _timer.Stop(); // Dừng khi người dùng vuốt

            // Chạy lại sau 5 giây nếu không có thao tác của người dùng
            Dispatcher.DispatchDelayed(TimeSpan.FromSeconds(5), () => _timer.Start());
        }

        private void OnNextClicked(object sender, EventArgs e)
        {
            if (carouselView.Position < ImageMains.Count - 1)
            {
                carouselView.Position++; // Chuyển sang ảnh tiếp theo
            }
            else
            {
                carouselView.Position = 0; // Quay về ảnh đầu tiên
            }
        }

        private void OnPreviousClicked(object sender, EventArgs e)
        {
            if (carouselView.Position > 0)
            {
                carouselView.Position--; // Chuyển về ảnh trước
            }
            else
            {
                carouselView.Position = ImageMains.Count - 1; // Quay về ảnh cuối cùng
            }
        }
        private bool _isAnimating = false; // Tránh chạy nhiều lần

        private async Task StartArrowAnimationLeft(View arrow)
        {
            while (_isAnimating)
            {
                await arrow.TranslateTo(-5, 0, 500, Easing.Linear);
                await arrow.TranslateTo(5, 0, 500, Easing.Linear);
            }
        }

        private async Task StartArrowAnimationRight(View arrow)
        {
            while (_isAnimating)
            {
                await arrow.TranslateTo(5, 0, 500, Easing.Linear);
                await arrow.TranslateTo(-5, 0, 500, Easing.Linear);
            }
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            if (!_isAnimating) // Chỉ chạy nếu chưa chạy trước đó
            {
                _isAnimating = true;
                _ = StartArrowAnimationLeft(btnPrevious);
                _ = StartArrowAnimationRight(btnNext);
            }
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            _isAnimating = false; // Dừng animation khi rời trang
        }

        private async void btnGetStarted_Clicked(object sender, EventArgs e)
        {
            //await Navigation.PushAsync(new LoginPage()); // Điều hướng đến LoginPage
            await Shell.Current.GoToAsync(nameof(LoginPage)); // Điều hướng đến LoginPage
        }
    }
}
