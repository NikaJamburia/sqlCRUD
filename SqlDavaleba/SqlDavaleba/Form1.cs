using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Configuration;

namespace SqlDavaleba
{
    public partial class Form1 : Form //DESKTOP-1F2PN33
    {
        //string conn_str = ConfigurationManager.ConnectionStrings["MyConnString"].ConnectionString;
        string conn_str = @"Data Source=.\SQLEXPRESS; initial catalog=savarjisho_darbazebis_qseli; Integrated Security=True;";
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                dgv.DataSource = null;
                DataTable dt = new DataTable();

                using (SqlConnection conn = new SqlConnection(conn_str))
                {
                    conn.Open();
                    SqlCommand comm = new SqlCommand();
                    comm.CommandText = "SELECT dbo.Klientebi.*, dbo.Abonimentebi.vada FROM dbo.Klientebi INNER JOIN dbo.Abonimentebi ON dbo.Klientebi.abonimenti_fk = dbo.Abonimentebi.id";
                    comm.Connection = conn;
                    SqlDataReader dr = comm.ExecuteReader();
                    dt.Load(dr);
                }

                dgv.DataSource = dt;
                dgv.MultiSelect = true;
  
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AddClient add = new AddClient();
            add.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if(dgv.SelectedRows.Count == 0)
            {
                MessageBox.Show("Nothing Selected");
            }
            else
            {
                using (SqlConnection conn = new SqlConnection(conn_str))
                {
                    conn.Open();
                    string query = "DELETE FROM dbo.Klientebi WHERE id = @rowid";
                    for (int i = 0; i < dgv.SelectedRows.Count; i++)
                    {
                        SqlCommand comm = new SqlCommand(query, conn);
                        string rowId = Convert.ToString(dgv.SelectedRows[i].Cells[0].Value);
                        comm.Parameters.AddWithValue("@rowid", rowId);
                        comm.ExecuteNonQuery();
                    }
                    
                }
                MessageBox.Show("Rows Deleted! Refresh the table to see the results");
            }

            
            }
        }
    }

