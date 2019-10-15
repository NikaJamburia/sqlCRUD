using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace SqlDavaleba
{
    public partial class AddClient : Form
    {
        string conn_str = @"Data Source=.\SQLEXPRESS; initial catalog=savarjisho_darbazebis_qseli; Integrated Security=True;";
        public AddClient()
        {
            InitializeComponent();


            SqlConnection conn = new SqlConnection(conn_str);
            conn.Open();

            string query = "SELECT id, misamarti from dbo.Darbazi";

            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandText = query;
            SqlDataReader drd = cmd.ExecuteReader();

            while (drd.Read())
            {
                Comboboxitem item = new Comboboxitem();
                item.text = drd["misamarti"].ToString();
                item.value = drd["id"];
                gymBox.Items.Add(item);
            }
            drd.Close();



            query = "SELECT id, fasi from dbo.Abonimentebi";

            SqlCommand cmd2 = new SqlCommand(query, conn);
            cmd2.Connection = conn;
            cmd2.CommandText = query;
            SqlDataReader drd2 = cmd2.ExecuteReader();

            while (drd2.Read())
            {
                Comboboxitem item = new Comboboxitem();
                item.text = drd2["fasi"].ToString() + " lariani";
                item.value = drd2["id"];
                abBox.Items.Add(item);
            }
            drd2.Close();
            conn.Close();


        }

        private void label6_Click(object sender, EventArgs e)
        {

        }


        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(nameBox.Text) || string.IsNullOrEmpty(lastNameBox.Text ))
                {
                    throw new Exception("Enter first and last name!!!");
                }
                DateTime date = DateTime.Today;
                string sqlDate = date.ToString("yyyy-MM-dd");

                string query = "INSERT INTO dbo.Klientebi(saxeli, gvari, pir_nomeri, gadaxdis_tarigi, darbazi_fk, abonimenti_fk) VALUES (@firstname, @lastname, @idn, @date, @gym_id, @aboniment_id)";
                using (SqlConnection conn = new SqlConnection(conn_str))
                {
                    conn.Open();
                    SqlCommand comm = new SqlCommand(query, conn);
                    comm.Parameters.AddWithValue("@firstname", nameBox.Text);
                    comm.Parameters.AddWithValue("@lastname", lastNameBox.Text);
                    comm.Parameters.AddWithValue("@idn", idBox1.Text);
                    comm.Parameters.AddWithValue("@date", sqlDate);
                    comm.Parameters.AddWithValue("@gym_id", (gymBox.SelectedItem as Comboboxitem).value.ToString());
                    comm.Parameters.AddWithValue("@aboniment_id", (abBox.SelectedItem as Comboboxitem).value.ToString());
                    comm.ExecuteNonQuery();
                }

                MessageBox.Show("Client added!", "Success!", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

    }
}
