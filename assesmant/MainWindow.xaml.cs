using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace assesmant
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        lolEntities lol = new lolEntities();
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var user = lol.users.FirstOrDefault( u => u.username == usernametxt.Text && u.userpass == passwordtxt.Password && u.userrole =="user");
            var maneger = lol.users.FirstOrDefault( u => u.username == usernametxt.Text && u.userpass == passwordtxt.Password && u.userrole == "maneger");
            if (user != null)
            {
                userpage u = new userpage(usernametxt.Text);
                u.Show();
                this.Close();
            }
            if(maneger!= null)
            {
                Manegerpage m = new Manegerpage();
                    m.Show();
                this.Close();
            }else
            {
                MessageBox.Show("Invalid user or password ", " Eror ?", MessageBoxButton.OK, MessageBoxImage.Error);
                
            }
        }
    }
}
