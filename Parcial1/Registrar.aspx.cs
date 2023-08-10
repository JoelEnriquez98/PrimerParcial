using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1
{
    public partial class Registrar : System.Web.UI.Page
    {
        private string pathSedes = "Files/Sedes.txt";
        private string pathJornadas = "Files/Sedes.txt";
        private string pathCarreras = "Files/Carreras.txt";
        private string pathRegistros = "Files/Registros.txt";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable tablaSedes = new DataTable();
                tablaSedes.Columns.Add("Codigo");
                tablaSedes.Columns.Add("Departamento");

                using (StreamReader file = new StreamReader(Server.MapPath(pathSedes)))
                {
                    while (!file.EndOfStream)
                    {
                        string line = file.ReadLine();
                        string[] lineSplit = line.Split(',');

                        tablaSedes.Rows.Add(lineSplit);
                    }
                }
                DDLSede.DataSource = tablaSedes;
                DDLSede.DataTextField = "Departamento";
                DDLSede.DataValueField = "Codigo";
                DDLSede.DataBind();
            }
        }

        protected void DDLSede_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable tablaCarreras = new DataTable();
            tablaCarreras.Columns.Add("Codigo");
            tablaCarreras.Columns.Add("Carrera");

            using (StreamReader file = new StreamReader(Server.MapPath(pathCarreras)))
            {
                string codigoDepartamento = DDLSede.SelectedValue;

                while (!file.EndOfStream)
                {
                    string line = file.ReadLine();
                    string[] lineSplit = line.Split(',');

                    if (lineSplit[2] == codigoDepartamento)
                        tablaCarreras.Rows.Add(lineSplit[0], lineSplit[1]);
                }
            }
            DDLCarrera.DataSource = tablaCarreras;
            DDLCarrera.DataTextField = "Carrera";
            DDLCarrera.DataValueField = "Codigo";
            DDLCarrera.DataBind();
        }

        protected void DDLCarrera_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            String newData = DDLSede.Text + "," + DDLCarrera.Text + "," + TBNombre.Text + "," +
                TBApellido.Text + "," + TBDPI.Text + "," + TBNacimiento.Text + "," +
                TBCelular.Text + "," + TBNacimiento.Text;
            writeData(newData);
            cleanData();
            Response.Write("<script>alert('Se ha creado un nuevo registro de forma exitosa');</script>");
        }

        private void writeData(String newData)
        {
            using (StreamWriter writer = new StreamWriter(Server.MapPath(pathRegistros), true))
            {
                writer.WriteLine(newData);
            }
        }

        private void cleanData()
        {
            DDLSede.Text = "";
            DDLCarrera.Text = "";
            TBNombre.Text = "";
            TBApellido.Text = "";
            TBDPI.Text = "";
            TBNacimiento.Text = "";
            TBCelular.Text = "";
            TBNacimiento.Text = "";
        }
    }
}