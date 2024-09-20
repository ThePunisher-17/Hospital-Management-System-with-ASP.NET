using System;
using System.Web.UI;

namespace Hospital_Management_System
{
    public partial class WebForm1 : Page
    {
        private static int currentViewIndex = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                services.SetActiveView(services.Views[currentViewIndex]);
            }
            else
            {
                // Increment the view index
                currentViewIndex++;
                if (currentViewIndex >= services.Views.Count)
                {
                    currentViewIndex = 0; // Reset to the first view
                }
                services.SetActiveView(services.Views[currentViewIndex]);
            }
        }
    }
}
