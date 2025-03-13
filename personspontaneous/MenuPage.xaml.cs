namespace personspontaneous;

public partial class MenuPage : ContentPage
{
	public MenuPage()
	{
		InitializeComponent();
	}
    private void frmPersonal_Tapped(object sender, TappedEventArgs e)
    {
        Shell.Current.GoToAsync(nameof(Personal.Personnal));
    }
    private void frmMenuSystems_Tapped(object sender, TappedEventArgs e)
    {
        Shell.Current.GoToAsync(nameof(Systems.MenuSystems));
    }

    private void frmElectric_Tapped(object sender, TappedEventArgs e)
    {
        Shell.Current.GoToAsync(nameof(Systems.MenuSystems));
    }
    private void frmHeartBeat_Tapped(object sender, TappedEventArgs e)
    {
        Shell.Current.GoToAsync(nameof(Systems.MenuSystems));
    }

    private void frmKnowlegde_Tapped(object sender, TappedEventArgs e)
    {
        Shell.Current.GoToAsync(nameof(Systems.MenuSystems));
    }

    private void frmSciene_Tapped(object sender, TappedEventArgs e)
    {
        Shell.Current.GoToAsync(nameof(Systems.MenuSystems));
    }

    private void frmTech_Tapped(object sender, TappedEventArgs e)
    {
        Shell.Current.GoToAsync(nameof(Systems.MenuSystems));
    }
}