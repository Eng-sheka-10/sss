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
    /// <summary>
    /// Interaction logic for Manegerpage.xaml
    /// </summary>
    public partial class Manegerpage : Window
    {
        lolEntities lol = new lolEntities();
        task tany = new task();
        public Manegerpage()
        {
            InitializeComponent();
            loud();
        }
        private void loud()
        {
            dgmaneger.ItemsSource = lol.tasks.ToList();
        }

        private void dgcompleted_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dgmaneger.SelectedItem is task ta)
            {
                tany = ta;
                taskidmaneger.Text = ta.taskid.ToString();
                cmbstatuesmaneger.Text = ta.taskstat;
                taskempnamemaneger.Text = ta.userid.ToString();
                tasktitlemaneger_.Text = ta.tasktitle;
                taskdesmaneger.Text = ta.taskdes;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var x = new task
            {
               taskid = int.Parse(taskidmaneger.Text),
               taskstat = cmbstatuesmaneger.Text,
               taskdes = taskdesmaneger.Text,
               tasktitle=tasktitlemaneger_.Text,
               userid = int.Parse(taskempnamemaneger.Text)
            };
            lol.tasks.Add(x);
            lol.SaveChanges();
            loud();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            var z = MessageBox.Show("Are you want to delete it ?", "sureor not ?", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (z == MessageBoxResult.Yes)
            {
                if (dgmaneger.SelectedItem != null)
                {
                    tany.taskid = int.Parse(taskidmaneger.Text);
                    tany.tasktitle = tasktitlemaneger_.Text;
                    tany.taskdes = taskdesmaneger.Text;
                    tany.userid = int.Parse(taskempnamemaneger.Text);
                    tany.taskstat = cmbstatuesmaneger.Text;
                    lol.SaveChanges();
                    loud();
                }
                else
                {
                    MessageBox.Show("Please select before Deleted");
                };
            }
            else
            {
                return;
            }
           
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            var z = MessageBox.Show("Are you want to delete it ?", "sureor not ?", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (z == MessageBoxResult.Yes) 
            {
                if (dgmaneger.SelectedItem is task tata)
                {
                    lol.tasks.Remove(tata);
                    lol.SaveChanges();
                    loud();
                }
                else
                {
                    MessageBox.Show("Please select before Deleted");
                }
            }
            else
            {
                return;
            }
        }
    }
}
