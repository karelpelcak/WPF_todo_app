using System.Collections.ObjectModel;
using System.Printing;
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

namespace ToDo_Pelcak
{
    public partial class MainWindow : Window
    {
        int count;
        ObservableCollection<Task> Tasks = new ObservableCollection<Task>();
        public MainWindow()
        {
            InitializeComponent();
            DataGrindTasks.ItemsSource = Tasks;
        }

        private void BtnCreate_Click(object sender, RoutedEventArgs e)
        {
            Task task = new Task();

            string prio = PrioComboBox.Text.ToString();

            switch (prio)
            {
                case "Low":
                    task.Prio = Prio.Low;
                    break;
                case "Medium":
                    task.Prio = Prio.Medium;
                    break;
                case "High":
                    task.Prio = Prio.High;
                    break;
            }

            task.CreatedAt = DateTime.Now;

            switch (FinishedCheckBox.IsChecked)
            {
                case true:
                    task.Finished = true;
                    break;
                case false:
                    task.Finished = false;
                    break;
                default:
                    task.Finished = false;
                    break;
            }

            task.TaskDesc = InputBox.Text.ToString();

             Tasks.Add(task);

            InputBox.Text = string.Empty;
            FinishedCheckBox.IsChecked = true;
            PrioComboBox.Text = "Low";
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            if (DataGrindTasks.SelectedItem is not Task selectTask) return;

            switch(FinishedCheckBox.IsChecked)
            {
                case true:
                    selectTask.Finished = true;
                    break;
                case false:
                    selectTask.Finished = false;
                    break;
                default:
                    selectTask.Finished = false;
                    break;
            }

            string prio = PrioComboBox.Text.ToString();

            switch (prio)
            {
                case "Low":
                    selectTask.Prio = Prio.Low;
                    break;
                case "Medium":
                    selectTask.Prio = Prio.Medium;
                    break;
                case "High":
                    selectTask.Prio = Prio.High;
                    break;
            }

            selectTask.TaskDesc = InputBox.Text.ToString();

            InputBox.Text = string.Empty;
            FinishedCheckBox.IsChecked = true;
            PrioComboBox.Text = "Low";
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            var toDelete = Tasks.Where(t => t.GetHashCode() == count).ToList();

            foreach(var task in toDelete)
            {
                Tasks.Remove(task);

                InputBox.Text = string.Empty;
                FinishedCheckBox.IsChecked = false;
                PrioComboBox.Text = "Low";
            }
        }

        private void BtnDeleteFinished_Click(object sender, RoutedEventArgs e)
        {
            var toDelete = Tasks.Where(t => t.Finished == true).ToList();

            foreach (var task in toDelete)
            {
                Tasks.Remove(task);

                DataGrindTasks.ItemsSource = Tasks;
            }
        }

        private void DataGrindTasks_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
        var Rows = (Task)DataGrindTasks.SelectedItem;
            if (Rows != null)
            {
                InputBox.Text = Rows.TaskDesc.ToString();

                switch (Rows.Prio)
                {
                    case Prio.Low:
                        PrioComboBox.Text = "Low";
                        break;
                    case Prio.Medium:
                        PrioComboBox.Text = "Medium";
                        break;
                    case Prio.High:
                        PrioComboBox.Text = "High";
                        break;
                }

                switch (Rows.Finished)
                {
                    case true:
                        FinishedCheckBox.IsChecked = true;
                        break;
                    case false:
                        FinishedCheckBox.IsChecked = false;
                        break;
                }

                count = Rows.GetHashCode();
            }
        }
    }
}