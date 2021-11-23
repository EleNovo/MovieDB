using System;
using System.Windows;
using System.Data.SQLite;

namespace MovieDB
{
    /// <summary>
    /// Interaction logic for LoginScreen.xaml
    /// </summary>
    public partial class LoginScreen : Window
    {
        public LoginScreen()
        {
            InitializeComponent();
        }

        private void btnOK_Click(object sender, RoutedEventArgs e)
        {
            SQLiteConnection connection = new SQLiteConnection(@"Data Source=D:\DB Browser for SQLite\DataBases\MovieDB.db");
            try
            {
                if (connection.State == System.Data.ConnectionState.Closed)
                    connection.Open();
                String query = "SELECT COUNT(1) FROM User WHERE Username=@Username AND Password=@Password";
                SQLiteCommand command = new SQLiteCommand(query, connection);
                command.CommandType = System.Data.CommandType.Text;
                command.Parameters.AddWithValue("@Username", txtUserName.Text);
                command.Parameters.AddWithValue("@Password", txtPassword.Password);
                int count = Convert.ToInt32(command.ExecuteScalar());
                if (count == 1)
                {
                    MainWindow dashboard = new MainWindow();
                    dashboard.Show();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Неверный логин или пароль");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                connection.Close();
            }
        }
    }
}
