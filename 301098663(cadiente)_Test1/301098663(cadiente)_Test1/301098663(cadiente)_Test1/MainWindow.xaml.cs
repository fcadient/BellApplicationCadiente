using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.IO;
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

namespace _301098663_cadiente__Test1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public ObservableCollection<Bell> bellCollection;
        public List<Bell> bellList = new List<Bell>();
        string filePath = System.IO.Path.GetFullPath("Data.csv");
  

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            System.Windows.Data.CollectionViewSource covidViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("covidViewSource")));
        }

        private void LoadFile()
        {
            
            if (File.Exists(filePath))
            {

                var fileContent = File.ReadAllLines(filePath);
                var contentAllRows = fileContent.ToList();

                for (int row = 1; row < contentAllRows.Count; row++)
                {
                    contentAllRows[row].Replace("\"", "");
                    contentAllRows[row].Replace("\"$1,", "$1");
                    string[] tmp = contentAllRows[row].Split(',');
                    Bell tmpStock = new Bell();
                    tmpStock.EmployeeName    = tmp[0].Trim();
                    tmpStock.Date = DateTime.ParseExact(tmp[2].Trim(), "M/d/yyyy",
                                       CultureInfo.InvariantCulture);
                    tmpStock.Department = tmp[1].Trim('"');

                    tmpStock.ProjectName = tmp[3].Trim('"');
                    tmpStock.Description = tmp[4].Trim('"');


                    bellList.Add(tmpStock);

                }
            }
        }

        async private void displayBtn_Click(object sender, RoutedEventArgs e)
        {
            Task task = new Task(LoadFile);
            task.Start();
            await task;

            bellCollection = new ObservableCollection<Bell>();

            foreach(Bell bell in bellList)
            {
                bellCollection.Add(bell);
            }

            covidDataGrid.ItemsSource = bellCollection;

            var filteredList = bellList.GroupBy(c => c.Department).Select(c => c.First()).ToList();
            countryCb.ItemsSource = filteredList;

        }

        private void searchBtn_Click(object sender, RoutedEventArgs e)
        {
            bellCollection = new ObservableCollection<Bell>();
            string currentCountry = countryCb.Text;

            var filteredList = bellList.Where(cvd => cvd.Department.Contains(currentCountry));

            foreach (Bell c in filteredList)
            {
                bellCollection.Add(c);
            }

            covidDataGrid.ItemsSource = bellCollection;
        }

        private void covidDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
