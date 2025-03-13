namespace personspontaneous.Systems;

public partial class MenuSystems : ContentPage
{
	public MenuSystems()
	{
		InitializeComponent();
	}

    private void eparkings_Tapped(object sender, TappedEventArgs e)
    {
        Shell.Current.GoToAsync(nameof(IparkingSystem));
    }

    private void commandcenter_Tapped(object sender, TappedEventArgs e)
    {
        DisplayAlert("TB", "Đã chạm vào đâu", "OK");
    }
}