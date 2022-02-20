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

namespace StokTakip
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Data Source=LAPTOP-IQGMC203\\SQLEXPRESS;Initial Catalog=StokTakip;Integrated Security=True");
        SqlCommand komut;
        SqlDataReader oku;
        private void Form1_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            komut = new SqlCommand("select * from Kategoriler", baglanti);
            oku = komut.ExecuteReader();
           
            while (oku.Read())
            {
                comboBox1.Items.Add(oku["kategori"].ToString());
            }
           
            baglanti.Close();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // BURADA KALDIK
            //try
            //{
                if (comboBox1.SelectedIndex == 4)
                {
                    baglanti.Open();
                    // BUNU YAPMAYA CALİSİYORDUK
                    komut = new SqlCommand("select kategori_no from Otomobil where kategori_no='" + comboBox1.SelectedIndex + "'", baglanti);
                    oku = komut.ExecuteReader();

                    while (oku.Read())
                    {
                        comboBox2.Items.Add(oku["otomobil_marka"].ToString());


                    }

                    baglanti.Close();
                }
            //}
            //catch (Exception ex)
            //{

            //}

        }
    }
}
