using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class frmEditarCliente : System.Web.UI.Page
    {
        dbDapIIFebrero2013Entities4 context = new dbDapIIFebrero2013Entities4();

        private void cargardatosdelcliente(long idcliente) {
            var objclienten = from cn in context.natural
                           where cn.idcliente.Equals (idcliente)
                           select cn;

            var objcliente = from c in context.cliente
                             where c.idcliente.Equals(idcliente)
                             select c;
           
            foreach (var result in objclienten){
                this.Control_ID1.texto = result.idcliente.ToString ();
                this.Control_String1.texto =result.nombre_cliente;
                this.Control_String2.texto = result.app;
                this.Control_String3.texto = result.apm;
                this.Control_Fecha1.texto = result.fecha_nacimiento.ToString();
            }
            foreach (var result in objcliente)
            {
                this.Control_Alfanumerico1.texto= result.direccion;
                this.Control_Int2.texto = result.nit.ToString();
                this.Control_Int1.texto = result.telefono.ToString();
            }
          
        }

        private void cargarcomborubro()
        {
            var objrubro = from r in context.rubro
                           select r;
            this.cbrubro.DataSource = objrubro;
            this.cbrubro.DataTextField = "nombre_rubro";
            this.cbrubro.DataValueField = "idrubro";
            this.cbrubro.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.cargardatosdelcliente(long.Parse(Request.QueryString["idcliente"].ToString()));
                this.cargarcomborubro();
            }
        }

        private bool cargarobjetocliente(ref natural objcliente)
        {
            bool controlesOK = true;
            long idcliente;

            if (long.TryParse(Control_ID1.texto, out idcliente) == true)
            {
                long id = long.Parse(this.Control_ID1.texto);
                objcliente = context.natural.FirstOrDefault(a => a.idcliente == id);
            }
            else
            {
                this.Label11.Text = "Error el el codigo del alumno";
                controlesOK = false;
            }


            if (this.Control_String1.texto.Trim() != String.Empty)
            {
                objcliente.nombre_cliente = this.Control_String1.texto;
            }
            else
            {
                this.Label11.Text = "Introduzca un nombre de alumno";
                controlesOK = false;
            }

            if (this.Control_String2.texto.Trim() != String.Empty)
            {
                objcliente.app = this.Control_String2.texto;
            }
            else
            {
                this.Label11.Text = "Introduzca un Apellido Paterno";
                controlesOK = false;
            }


            if (this.Control_String3.texto.Trim() != String.Empty)
            {
                objcliente.apm = this.Control_String3.texto;
            }
            else
            {
                this.Label11.Text = "Introduzca un Apellido Materno";
                controlesOK = false;
            }

            return controlesOK;
        }


        private bool actulizarcliente()
        {
            return context.SaveChanges() >= 0;
        }


        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            natural objcliente = new natural();
            if (this.cargarobjetocliente(ref objcliente))
            {
                if (this.actulizarcliente())
                {
                    this.Label11.Text = "Modificacion Correcta";
                }
                else
                {
                    this.Label11.Text = "Error en la modificacion";
                }
            }
        }

        

        public rubro objcliente { get; set; }

        //protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        //{
        //    this.Calendar2.Visible = true;
        //}

        //protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        //{
        //    this.txbfecha_nacimiento.Text = this.Calendar2.SelectedDate.ToShortDateString();
        //    this.Calendar2.Visible = false;
        //}
    }
}