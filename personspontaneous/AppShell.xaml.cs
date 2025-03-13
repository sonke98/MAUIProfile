namespace personspontaneous
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(LoginPage), typeof(LoginPage));
            Routing.RegisterRoute(nameof(MenuPage), typeof(MenuPage));
            Routing.RegisterRoute(nameof(Personal.Personnal), typeof(Personal.Personnal));
            Routing.RegisterRoute(nameof(Systems.MenuSystems), typeof(Systems.MenuSystems));
            Routing.RegisterRoute(nameof(Systems.IparkingSystem), typeof(Systems.IparkingSystem));

        }
    }
}
