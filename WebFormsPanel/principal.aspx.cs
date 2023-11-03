using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsPanel
{
    public partial class principal : System.Web.UI.Page
    {

        protected int currentPanel = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                inicio(currentPanel);
            }

        }


        protected void btnProximo_Click(object sender, EventArgs e)
        {
            if (panel1.Visible == true)
            {
                panel1.Visible = false;
                panel2.Visible = true;

            }
            else if (panel2.Visible == true)
            {
                panel1.Visible = false;
                panel2.Visible = false;
                panel3.Visible = true;
            }
        }



        protected void btnVoltar_Click(object sender, EventArgs e)
        {

            if (panel2.Visible == true)
            {
                panel1.Visible = true;
                panel2.Visible = false;
                panel3.Visible = false;
            }
            else if (panel3.Visible == true)
            {
                panel1.Visible = false;
                panel2.Visible = true;
                panel3.Visible = false;
            }
        }




        protected void btnEnviar_Click(object sender, EventArgs e)
        {
           
                lblAviso.Text = "Aviso! Os seus dados foram enviados com sucesso";
            
           
        }



        private void inicio(int panelNumber)
        {
            panel1.Visible = true;

        }


    }
}