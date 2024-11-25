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
using System.Windows.Shapes;

namespace assesmant
{
    public partial class userpage : Window
    {
        lolEntities lol = new lolEntities();
        task tany = new task();
        public userpage(string name)
        {
            InitializeComponent();
            Emp_name.Content = $"{name}";
            loud();
            loud1();
        }
        private void loud()
        {
            dginprogress.ItemsSource = lol.tasks.Where(l => l.taskstat == "in progres" || l.taskstat == "pending").ToList();
        } 
        private void loud1()
        {
            dgcompleted.ItemsSource = lol.tasks.Where(l => l.taskstat == "completed").ToList();
        }

        private void dginprogress_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if(dginprogress.SelectedItem is task tot)
            {
                tany = tot;
                taskiduserpage.Text = tot.taskid.ToString();
                cmbstatues.Text = tot.taskstat;
            }
        }

        private void dgcompleted_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dgcompleted.SelectedItem is task tata)
            {
                tany = tata;
                taskiduserpage.Text = tata.taskid.ToString();
                cmbstatues.Text = tata.taskstat;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            tany.taskid = int.Parse(taskiduserpage.Text);
            tany.taskstat = cmbstatues.Text;
            lol.SaveChanges();
            loud();
            loud1();
        }
    }
}
