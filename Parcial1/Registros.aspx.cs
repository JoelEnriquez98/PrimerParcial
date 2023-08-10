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
    public partial class Registros : System.Web.UI.Page
    {
        private string pathRegistros = "Files/Registros.txt";
        protected void Page_Load(object sender, EventArgs e)
        {
            bindDataTable();
        }
        private void bindDataTable()
        {
            DataTable recordsDataTable = new DataTable();
            recordsDataTable.Columns.Add("Estado");
            recordsDataTable.Columns.Add("Fecha de Nacimiento");
            recordsDataTable.Columns.Add("Año de Nacimiento");
            recordsDataTable.Columns.Add("Correo Electronico");
            recordsDataTable.Columns.Add("Primer Nombre");
            recordsDataTable.Columns.Add("Segundo Nombre");
            recordsDataTable.Columns.Add("Tercer Nombre");
            recordsDataTable.Columns.Add("Primer Apellido");
            recordsDataTable.Columns.Add("Segundo Apellido");
            recordsDataTable.Columns.Add("Apellido de Casada");
            recordsDataTable.Columns.Add("Telefono Celular");

            using (StreamReader file = new StreamReader(Server.MapPath(pathRegistros)))
            {
                while (!file.EndOfStream)
                {
                    string[] data = file.ReadLine().Split(',');

                    recordsDataTable.Rows.Add(data);
                }
            }

            GVRecords.DataSource = recordsDataTable;
            GVRecords.DataBind();
        }
    }
}